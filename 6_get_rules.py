import os
import re

def replace_suffix(name, suffix_find_replace):
    for old_suffix, new_suffix in suffix_find_replace.items():
        if name.endswith(old_suffix):
            base = name[:-len(old_suffix)]
            return base + new_suffix
    return name  # unchanged


def extract_blocks(lines, suffix_find_replace):
    results = []

    current_block = []
    collecting = False
    current_type = None
    current_name = None
    matched_suffix = None

    for line in lines:
        stripped = line.strip()

        if not collecting and (stripped.lower().startswith("rule ") or stripped.lower().startswith("response ")):
            match = re.match(r'(Rule|Response)\s+([A-Za-z0-9_\.><]+)', stripped, flags=re.IGNORECASE)
            if match:
                block_type, name = match.groups()
                for suffix in suffix_find_replace:
                    if name.endswith(suffix):
                        collecting = True
                        current_type = block_type
                        current_name = name
                        matched_suffix = suffix
                        current_block = [line]
                        break
            continue

        if collecting:
            current_block.append(line)
            if stripped == "}":
                results.append((current_type, current_name, current_block[:], matched_suffix))
                collecting = False
                current_block.clear()

    return results


def write_grouped_blocks_to_file(folder_path, output_path, suffix_find_replace, just_one_file=None):
    files = [just_one_file] if just_one_file else sorted(f for f in os.listdir(folder_path) if f.endswith(".txt"))

    with open(output_path, 'w', encoding='utf-8') as out:
        for file in files:
            file_path = os.path.join(folder_path, file)

            with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
                lines = f.readlines()

            blocks = extract_blocks(lines, suffix_find_replace)
            if not blocks:
                continue

            out.write(f"// {file} {'='*100}\n\n")

            for block_type, original_name, block_lines, matched_suffix in blocks:
                replaced_name = replace_suffix(original_name, suffix_find_replace)
                new_block = []

                for line in block_lines:
                    original_line = line.rstrip("\n")
                    stripped_line = original_line.lstrip()

                    # Skip comments
                    if stripped_line.startswith("//"):
                        new_block.append(original_line)
                        continue

                    # Replace block header
                    if stripped_line.lower().startswith(block_type.lower() + " "):
                        line = re.sub(
                            rf'({block_type}\s+)' + re.escape(original_name),
                            r'\1' + replaced_name,
                            original_line,
                            flags=re.IGNORECASE
                        )
                    else:
                        # Rename nested Response references inside Rule blocks
                        # Match lines like: Response SomeName
                        # Only do it if current block is a Rule
                        if block_type.lower() == "rule":
                            response_match = re.match(r'(Response\s+)([A-Za-z0-9_\.><]+)', stripped_line, flags=re.IGNORECASE)
                            if response_match:
                                prefix, resp_name = response_match.groups()
                                # Rename the response name using the same replace_suffix function
                                new_resp_name = replace_suffix(resp_name, suffix_find_replace)
                                # Rebuild the line, keeping original indentation
                                indent = original_line[:len(original_line) - len(stripped_line)]
                                line = indent + prefix + new_resp_name
                            else:
                                line = original_line
                        else:
                            line = original_line

                    new_block.append(line)


                # Write block WITHOUT extra \n after Response blocks
                if block_type.lower() == "response":
                    out.write("\n".join(new_block) + "\n")
                else:
                    out.write("\n".join(new_block) + "\n\n")



if __name__ == "__main__":
    write_grouped_blocks_to_file(
        folder_path="talker",
        output_path="6_rules.txt",
        suffix_find_replace={
            
            "Coach": "Replica",
            
            # "Gambler": "Cliffe",

            # "Namvet": "Mike",
            # "NamVet": "Mike",

            # "another": "example"
        },
        # just_one_file="gambler.txt"
    )
