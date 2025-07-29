import os
import re

def replace_suffix(name, suffix_find_replace):
    for old_suffix, new_suffix in suffix_find_replace.items():
        if name.endswith(old_suffix):
            base = name[:-len(old_suffix)]
            return base + new_suffix
    return name  # unchanged

def extract_response_blocks(lines, suffix_find_replace):
    results = []

    current_block = []
    collecting = False
    current_response_name = None
    matched_suffix = None

    for i, line in enumerate(lines):
        stripped = line.strip()

        # Look for actual Response block starters only
        if stripped.lower().startswith("response"):
            match = re.match(r'Response\s+([A-Za-z0-9_\.><]+)', stripped, flags=re.IGNORECASE)
            if match:
                response_name = match.group(1)

                # Check if it's a proper block (either has "{" on same line or next non-empty line)
                has_open_brace = "{" in stripped
                if not has_open_brace:
                    # Look ahead to find a brace
                    j = i + 1
                    while j < len(lines) and lines[j].strip() == "":
                        j += 1
                    if j < len(lines) and lines[j].strip() == "{":
                        has_open_brace = True

                # Only collect if it's a full block and matches a suffix
                if has_open_brace:
                    for suffix in suffix_find_replace:
                        if response_name.endswith(suffix):
                            collecting = True
                            current_response_name = response_name
                            matched_suffix = suffix
                            current_block = [line]
                            break
                    else:
                        collecting = False
                        current_response_name = None
                        matched_suffix = None
                continue

        if collecting:
            current_block.append(line)
            if stripped == "}":
                results.append((current_response_name, current_block[:], matched_suffix))
                collecting = False
                current_block.clear()

    return results


def write_grouped_responses_to_file(folder_path, output_path, suffix_find_replace, just_one_file=None):
    files = [just_one_file] if just_one_file else sorted(f for f in os.listdir(folder_path) if f.endswith(".txt"))

    with open(output_path, 'w', encoding='utf-8') as out:
        for file in files:
            file_path = os.path.join(folder_path, file)

            with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
                lines = f.readlines()

            response_blocks = extract_response_blocks(lines, suffix_find_replace)
            if not response_blocks:
                continue

            out.write(f"// {file} {'='*100}\n\n")

            for original_name, block_lines, matched_suffix in response_blocks:
                replaced_name = replace_suffix(original_name, suffix_find_replace)
                new_block = []

                for line in block_lines:
                    original_line = line.rstrip("\n")
                    stripped_line = original_line.lstrip()

                    if stripped_line.startswith("//"):
                        new_block.append(original_line)
                        continue

                    if stripped_line.lower().startswith("response "):
                        line = re.sub(
                            r'(Response\s+)' + re.escape(original_name),
                            r'\1' + replaced_name,
                            original_line,
                            flags=re.IGNORECASE
                        )
                    else:
                        line = original_line

                    new_block.append(line)

                out.write("\n".join(new_block) + "\n\n")




if __name__ == "__main__":
    write_grouped_responses_to_file(
        folder_path="talker",
        output_path="4_responses.txt",
        suffix_find_replace={

            # "Gambler": "Gambler",
            # "Producer": "Producer",
            # "Coach": "Coach",
            "Mechanic": "Mechanic",

            # "Namvet": "Namvet",
            # "NamVet": "NamVet",
            # "TeenGirl": "TeenGirl",
            # "Manager": "Manager",
            # "Biker": "Biker",

        },
        # just_one_file="gambler.txt"
    )
