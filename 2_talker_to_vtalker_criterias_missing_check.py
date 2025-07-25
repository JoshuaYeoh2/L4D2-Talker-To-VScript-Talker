import os
import re

def extract_defined_functions(nut_lines):
    func_names = set()
    for line in nut_lines:
        match = re.search(r'\bfunction\s+([a-zA-Z0-9_.]+)\s*\(', line)
        if match:
            name = match.group(1).split('.')[-1].lower()
            func_names.add(name)
    return func_names

def extract_missing_criteria(txt_lines, defined_funcs):
    missing_lines = []
    for line in txt_lines:
        stripped = line.strip()
        if stripped.startswith("//") or not stripped.lower().startswith("criterion"):
            continue

        match = re.match(r'criterion\s+"([^"]+)"', stripped, flags=re.IGNORECASE)
        if match:
            func_name = match.group(1).lower()
            if func_name not in defined_funcs:
                missing_lines.append(line.rstrip())
    return missing_lines

def compare_txt_and_nut(txt_path, defined_funcs):
    with open(txt_path, 'r', encoding='utf-8', errors='replace') as txt_file:
        txt_lines = txt_file.readlines()

    return extract_missing_criteria(txt_lines, defined_funcs)

def write_missing_criteria_all(folder_path, nut_path, output_path, just_one_file=None):
    with open(nut_path, 'r', encoding='utf-8') as nut_file:
        nut_lines = nut_file.readlines()
    defined_funcs = extract_defined_functions(nut_lines)

    total_missing = 0

    with open(output_path, 'w', encoding='utf-8') as out_file:
        if just_one_file:
            path = os.path.join(folder_path, just_one_file)
            missing = compare_txt_and_nut(path, defined_funcs)
            if missing:
                out_file.write(f"// {just_one_file} " + "="*115 + "\n")
                for line in missing:
                    out_file.write(line + "\n")
                total_missing += len(missing)
        else:
            for file in sorted(os.listdir(folder_path)):
                if file.endswith(".txt"):
                    path = os.path.join(folder_path, file)
                    missing = compare_txt_and_nut(path, defined_funcs)
                    if missing:
                        out_file.write(f"// {file} " + "="*115 + "\n")
                        for line in missing:
                            out_file.write(line + "\n")
                        # out_file.write("\n")
                        total_missing += len(missing)

    print(f"✅ {total_missing} missing criterion lines copied to {output_path}.")

# === USAGE ===

# Just one file
# write_missing_criteria_all("talker", "_output.nut", "_missing.txt", just_one_file="finales_dlc2.txt")

# All files in folder
write_missing_criteria_all("talker", "1_criterias.nut", "2_criterias_missing.txt")
