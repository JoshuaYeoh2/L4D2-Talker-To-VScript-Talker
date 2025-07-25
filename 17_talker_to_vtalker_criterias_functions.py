import os
import re

def generate_increment_contexts(input_folder, output_path, just_one_file=None):
    seen = set()
    functions = []

    txt_files = [just_one_file] if just_one_file else sorted(
        f for f in os.listdir(input_folder) if f.endswith(".txt"))

    for filename in txt_files:
        file_path = os.path.join(input_folder, filename)

        with open(file_path, 'r') as infile:
            lines = infile.readlines()

        converted_lines = []

        for line in lines:
            line = line.lstrip()
            if line.startswith("//"):
                continue

            match = re.search(r'ApplyContext\s+"([^"]+)"', line)
            if not match:
                continue

            raw_contexts = match.group(1).split(",")
            for entry in raw_contexts:
                parts = entry.strip().split(":")
                if len(parts) != 2:
                    continue  # Skip valid fixed-value entries like "X:Y:Z"

                name, value = parts
                value = value.strip()

                if not re.fullmatch(r'\+\+\d+|--\d+', value):
                    continue


                key = f"{name.lower()}_{value}"
                if key in seen:
                    continue
                seen.add(key)

                def pascal_case(name):
                    return ''.join(part.capitalize() for part in re.split(r'[_\W]+', name))

                delta = value[2:]  # e.g. "3" from "++3" or "5" from "--5"
                direction = "Increase" if value.startswith("++") else "Decrease"
                func_name = pascal_case(name.strip()) + direction + (delta if delta != "1" else "")
                
                # context_string = name.strip().lower()
                context_string = name.strip()

                converted_lines.append(
                    f"function {func_name}(query) "
                    "{ "
                    f'Entities.First().SetContext("{context_string}", "{value}", -1); '
                    "return true; "
                    "}"
                )

        if converted_lines:
            functions.append(f"// {filename} " + "=" * 100)
            functions.extend(converted_lines)

    with open(output_path, 'w') as outfile:
        outfile.write("\n".join(functions) + "\n")

    print(f"✅ Generated {len(functions)} total functions into {output_path}")

# === USAGE ===

# Option 1: Just convert finales_dlc2.txt
# generate_increment_contexts("talker", "17_criterias_functions.nut", just_one_file="finales_dlc2.txt")

# Option 2: Convert all .txt files in /talker folder
# generate_increment_contexts("talker", "17_criterias_functions.nut")

if __name__ == "__main__":
    generate_increment_contexts("talker", "17_criterias_functions.nut")
