import re

def format_thenfrom(input, output, from_who):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    updated_lines = []

    pattern = re.compile(r'^(\s*)then\s+from\s+([^\s]+)\s+foo:0\s+([^\s]+)', re.IGNORECASE)

    for line in lines:
        match = pattern.match(line)
        if match:
            indent = match.group(1)
            name = match.group(2)
            value = match.group(3)
            new_line = f'{indent}then self {name} from:"{from_who}" {value}\n'
            updated_lines.append(new_line)
        else:
            updated_lines.append(line)

    with open(output, "w", encoding="utf-8") as f:
        f.writelines(updated_lines)

# Usage
if __name__ == "__main__":
    format_thenfrom(
        input="13_rules_format_responses.nut",
        output="14_rules_fix_thenfrom.nut",
        from_who="Sheva",
    )
