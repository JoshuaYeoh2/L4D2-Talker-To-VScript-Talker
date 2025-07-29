import os
import re

def sanitize_name(name, to_lower=False):
    if to_lower:
        name = name.lower()
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)



def convert_response_line(response_line, prefix):
    line = response_line.lstrip()
    if line.startswith("//") or not line.lower().startswith("response"):
        return None

    match = re.match(r'response\s+([A-Za-z0-9_.>]+)', line, re.IGNORECASE)
    if not match:
        return None

    original_name = match.group(1)
    sanitized_name = sanitize_name(original_name)

    return (
        f"{prefix}{sanitized_name} <- function(speaker, query) "
        "{\n"
        f'    {prefix}Say(speaker, "{sanitized_name}"); '
        "};\n"
    )



def normalize_float(value):
    if value.startswith("."):
        return "0" + value
    return value


def parse_predelay_block(block_lines):
    # Look for the first "predelay" in the block
    for line in block_lines:
        match = re.search(r'predelay\s*"\s*([\d.]+)\s*,?\s*([\d.]*)\s*"', line)
        if match:
            a = normalize_float(match.group(1))
            b = match.group(2)
            if b:
                b = normalize_float(b)
                return f"RandomFloat({a}, {b})"
            return a  # just one value
    return None


def convert_responses_file(input_path, prefix):
    output_lines = []
    inside_rule_block = False
    inside_response_block = False
    response_name = None
    block_lines = []

    with open(input_path, 'r') as infile:
        for line in infile:
            stripped = line.strip()

            # Skip rules
            if stripped.lower().startswith("rule "):
                inside_rule_block = True
            elif stripped == "}":
                if inside_rule_block:
                    inside_rule_block = False
                    continue
                if inside_response_block:
                    # We're done reading the block, process it
                    converted = convert_response_line(response_name, prefix)
                    if converted:
                        delay_arg = parse_predelay_block(block_lines)
                        if delay_arg:
                            converted = converted.replace(');', f', {delay_arg});')
                        output_lines.append(converted)
                    inside_response_block = False
                    response_name = None
                    block_lines = []
                continue

            if inside_rule_block:
                continue

            if not inside_response_block and stripped.lower().startswith("response "):
                # Begin a response block
                match = re.match(r'response\s+([A-Za-z0-9_.>]+)', stripped, re.IGNORECASE)
                if match:
                    response_name = match.group(0)  # full line, not just name
                    inside_response_block = True
                    block_lines = []
            elif inside_response_block:
                block_lines.append(stripped)

    return output_lines


def convert_responses_all(folder_path, output_path, prefix="", just_one_file=None):
    with open(output_path, 'w') as outfile:
        if just_one_file:
            input_path = os.path.join(folder_path, just_one_file)
            lines = convert_responses_file(input_path, prefix)
            if lines:
                outfile.write(f"// {just_one_file} " + "="*100 + "\n")
                outfile.writelines(line + "\n" for line in lines)
        else:
            for file in sorted(os.listdir(folder_path)):
                if file.endswith(".txt"):
                    input_path = os.path.join(folder_path, file)
                    lines = convert_responses_file(input_path, prefix)
                    if lines:
                        outfile.write(f"// {file} " + "="*100 + "\n")
                        outfile.writelines(line + "\n" for line in lines)


# === USAGE ===
convert_responses_all(
    folder_path="",
    output_path="4_responses.nut",
    prefix="Custom_Talker_Replica.",
    just_one_file="4_responses.txt",
)
