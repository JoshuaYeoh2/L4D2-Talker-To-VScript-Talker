import os
import re

def clean_criterion_line(line):
    line = line.strip()
    if not line or line.startswith("//") or not line.lower().startswith("criterion"):
        return None

    # Clean spacing inside quotes
    line = re.sub(r'"([a-zA-Z0-9_]+)"\s+"([a-zA-Z0-9_]+)"', r'"\1" "\2"', line)

    return line


def convert_file_raw(input_path, outfile):
    filename = os.path.basename(input_path)
    cleaned_lines = []

    with open(input_path, 'r') as infile:
        for line in infile:
            cleaned = clean_criterion_line(line)
            if cleaned:
                cleaned_lines.append(cleaned)

    if cleaned_lines:
        outfile.write(f"// {filename} " + "="*80 + "\n")
        for line in cleaned_lines:
            outfile.write(line + "\n")
        outfile.write("\n")


def convert_all(folder_path, output_path, just_one_file=None):
    with open(output_path, 'w') as outfile:
        if just_one_file:
            input_path = os.path.join(folder_path, just_one_file)
            convert_file_raw(input_path, outfile)
        else:
            for file in sorted(os.listdir(folder_path)):
                if file.endswith(".txt"):
                    input_path = os.path.join(folder_path, file)
                    convert_file_raw(input_path, outfile)



# === USAGE ===

# Option 1: Just convert finales_dlc2.txt
# convert_all("talker", "0_criterias.nut", just_one_file="finales_dlc2.txt")

# Option 2: Convert all .txt files in /talker folder
convert_all("talker", "0_criterias.txt")
