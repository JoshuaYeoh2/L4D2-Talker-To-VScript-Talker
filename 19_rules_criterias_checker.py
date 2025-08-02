import os
import re

def extract_defined_criteria_functions(lines):
    pattern = re.compile(r'\bfunction\s+(\w+)\s*\(\s*query\s*\)')
    return {match.group(1).strip() for line in lines for match in pattern.finditer(line)}

def extract_used_criteria(lines):
    used = set()
    collecting = False

    for line in lines:
        stripped = line.strip()

        if not collecting and re.match(r'^criteria\s*=\s*\[?$', stripped, re.IGNORECASE):
            collecting = True
            continue

        if collecting:
            if stripped.startswith("]"):
                collecting = False
                continue

            match = re.match(r'\[\s*([A-Za-z_]\w*)\s*\](,)?', stripped)
            if match:
                used.add(match.group(1))

    return used

def scan_for_defined_criteria(path):
    defined = set()
    if os.path.isfile(path):
        with open(path, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()
            defined |= extract_defined_criteria_functions(lines)

    elif os.path.isdir(path):
        for root, _, files in os.walk(path):
            for file in files:
                if file.endswith('.nut'):
                    with open(os.path.join(root, file), 'r', encoding='utf-8', errors='ignore') as f:
                        lines = f.readlines()
                        defined |= extract_defined_criteria_functions(lines)
    return defined

def scan_for_used_criteria(path):
    used = set()
    if os.path.isfile(path):
        with open(path, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()
            used |= extract_used_criteria(lines)

    elif os.path.isdir(path):
        for root, _, files in os.walk(path):
            for file in files:
                if file.endswith('.nut'):
                    with open(os.path.join(root, file), 'r', encoding='utf-8', errors='ignore') as f:
                        lines = f.readlines()
                        used |= extract_used_criteria(lines)
    return used


# === Run it ===
# where you use the criteria
check_path = "16_rules_format_applycontext.nut"
# where the actual functions are defined
criterias_path = "..\..\[custom talker ] base"

used = scan_for_used_criteria(check_path)
defined = scan_for_defined_criteria(criterias_path)

missing = used - defined

if missing:
    print("Missing criteria function definitions:")
    for func in sorted(missing):
        print(f" - {func}")
else:
    print("All criteria functions accounted for!")
