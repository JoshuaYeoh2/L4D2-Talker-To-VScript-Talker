input_file = "10_rules_format_name.nut"
output_file = "11_rules_format_criterias.nut"

def transform_criteria_line(line):
    # Remove "criteria" and split the rest
    parts = line.strip().split()
    if len(parts) < 2 or parts[0] != "criteria":
        return line  # Not a valid criteria line

    criterias = parts[1:]
    joined = ",\n\t\t\t".join(f"[{c}]" for c in criterias)
    return f"\t\tcriteria = \n\t\t[\n\t\t\t{joined},\n\t\t],\n"

with open(input_file, "r", encoding="utf-8") as f:
    lines = f.readlines()

output_lines = []
for line in lines:
    if line.strip().startswith("criteria "):  # must have space to avoid false hits
        output_lines.append(transform_criteria_line(line))
    else:
        output_lines.append(line)

with open(output_file, "w", encoding="utf-8") as f:
    f.writelines(output_lines)
