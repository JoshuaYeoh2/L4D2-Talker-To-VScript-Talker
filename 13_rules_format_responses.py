import re

def convert_responses_only(input, output, response_prefix, response_suffix):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output_lines = []

    for line in lines:
        match = re.match(r'(?i)\s*response\s+([^\s\n{]+)', line)
        if match:
            func_name = match.group(1)
            new_block = (
                "\t\tresponses = "
                "\n\t\t[\n"
                f"\t\t\t{{\n\t\t\t\tfunc = {response_prefix}{func_name}{response_suffix},\n\t\t\t}},\n"
                "\t\t],\n"
            )
            output_lines.append(new_block)
        else:
            output_lines.append(line)

    with open(output, "w", encoding="utf-8") as f:
        f.writelines(output_lines)

# usage
if __name__ == "__main__":
    convert_responses_only(
        input="11_rules_format_criterias.nut",
        output="13_rules_format_responses.nut",
        response_prefix="Custom_Talker_Trevor.",
        response_suffix=""
    )
