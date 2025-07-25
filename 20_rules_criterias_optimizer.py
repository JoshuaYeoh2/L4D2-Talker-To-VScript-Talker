import os
import re

def parse_functions(source):
    func_map = {}

    # Handles: query.key == "value"
    pattern_str = re.compile(
        r'function\s+(\w+)\s*\(\s*query\s*\)\s*\{\s*return\s+query\.(\w+)\s*==\s*"([^"]+)";\s*\}', re.DOTALL)

    # Handles: query.key == 123 (int or float)
    pattern_num = re.compile(
        r'function\s+(\w+)\s*\(\s*query\s*\)\s*\{\s*return\s+query\.(\w+)\s*==\s*([0-9.]+);\s*\}', re.DOTALL)

    for match in pattern_str.finditer(source):
        func_name, key, value = match.groups()
        func_map[func_name] = [key, f'"{value}"']  # strings get quotes

    for match in pattern_num.finditer(source):
        func_name, key, value = match.groups()
        func_map[func_name] = [key, value]  # numbers stay as-is

    return func_map

def replace_criteria_line(line, func_map):
    def replacer(match):
        func_name = match.group(1)
        if func_name in func_map:
            key, value = func_map[func_name]
            return f'["{key}", {value}]'
        return match.group(0)

    return re.sub(r'\[\s*(\w+)\s*\]', replacer, line)

# Load function source files from folder
folder_path = r"criterias_case_sensitive"

function_sources = ""

for filename in os.listdir(folder_path):
    if filename.endswith(".nut"):
        filepath = os.path.join(folder_path, filename)
        with open(filepath, "r", encoding="utf-8") as f:
            function_sources += f.read() + "\n"

# Parse all functions
func_map = parse_functions(function_sources)

# Read rule file
with open("16_rules_format_applycontext.nut", "r", encoding="utf-8") as f:
    lines = f.readlines()

# Process lines and handle multi-line criteria blocks
new_lines = []
# Track if we're inside a criteria block
inside_criteria = False
bracket_depth = 0

for line in lines:
    if not inside_criteria:
        if "criteria" in line:
            inside_criteria = True
            bracket_depth += line.count("[") - line.count("]")
            new_lines.append(line)
        else:
            new_lines.append(line)
    else:
        bracket_depth += line.count("[") - line.count("]")
        new_lines.append(replace_criteria_line(line, func_map))
        if bracket_depth <= 0:
            inside_criteria = False


# Overwrite rule file
with open("20_rules_criterias_optimized.nut", "w", encoding="utf-8") as f:
    f.writelines(new_lines)
