import os
import re

def sanitize_name(name, to_lower=False):
    if to_lower:
        name = name.lower()
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)


def extract_response_block(lines):
    responses = {}
    current_name = None
    current_lines = []

    for line in lines:
        line = line.strip()
        if line.startswith("//"):
            continue

        line_lower = line.lower()

        if line_lower.startswith("response"):
            if current_name and current_lines:
                responses[current_name] = list(current_lines)
                current_lines.clear()

            match = re.match(r'response\s+([A-Za-z0-9_.>]+)', line, re.IGNORECASE)
            if match:
                raw_name = match.group(1)
                current_name = sanitize_name(raw_name)

        elif line_lower.startswith("scene") and current_name:
            current_lines.append(line)

    if current_name and current_lines:
        responses[current_name] = current_lines

    return responses


def convert_vcd_to_scene_entry(vcd_line, speaker_folder):
    match = re.match(r'scene\s+"scenes/([^/]+)/([^"]+)\.vcd"(?:[^/]*)(\/\/.*)?', vcd_line, re.IGNORECASE)
    if not match:
        return None

    _, filename, comment = match.groups()

    filename_clean = filename.lower()
    if filename_clean.endswith("orator_blank") or filename_clean.endswith("barricade_orator_blank"):
        filename_clean = "blank"

    scene_path = f'"scenes/{speaker_folder}/{filename_clean}.vcd"'
    comment = comment.strip() if comment else ""
    return (scene_path, comment)


def collect_scene_blocks(responses, suffix_map, speaker_folder, file_label):
    output_lines = []
    names = []

    for name in responses:
        for suffix_find, suffix_replace in suffix_map.items():
            if name.endswith(suffix_find):
                names.append((name, suffix_find, suffix_replace))
                break

    for name, suffix_find, suffix_replace in names:
        vcd_lines = responses[name]
        base_name = name[:-len(suffix_find)]
        new_name = base_name + suffix_replace

        output_lines.append(f"\t{new_name} = \n\t[")

        converted = [convert_vcd_to_scene_entry(line, speaker_folder) for line in vcd_lines]
        converted = [c for c in converted if c]

        if not converted:
            converted = [(f'"scenes/{speaker_folder}/blank.vcd"', "")]

        for scene_path, comment in converted:
            line = f"\t\t{{ scenename = {scene_path} }},"
            if comment:
                line += f"  {comment}"
            output_lines.append(line)


        # output_lines[-1] = output_lines[-1].rstrip(",")  # remove trailing comma from last line
        output_lines.append("\t],\n")

    return output_lines


def process_vcd_folder_combined(folder_path, output_path, table_name="", suffix_map=None, speaker_folder="", just_one_file=None):
    if suffix_map is None:
        suffix_map = {}

    all_lines = [f"{table_name} <-\n{{"]

    files = [just_one_file] if just_one_file else sorted(f for f in os.listdir(folder_path) if f.endswith(".txt"))

    for file in files:
        input_path = os.path.join(folder_path, file)

        with open(input_path, 'r') as f:
            lines = f.readlines()

        responses = extract_response_block(lines)

        if not responses:
            continue

        block_lines = collect_scene_blocks(responses, suffix_map, speaker_folder, file)
        all_lines.extend(block_lines)

    # after all the entries are added
    all_lines.append("}")

    with open(output_path, 'w') as f:
        f.write("\n".join(all_lines))


# === USAGE ===

process_vcd_folder_combined(
    folder_path="../talker",
    output_path="5_responses_vcds.nut",
    table_name="Custom_Talker_Mike.Responses",
    suffix_map= {
        
        # "Gambler": "Cliffe",

        "Namvet": "Mike",
        "NamVet": "Mike",

        # Add more here...
    },
    speaker_folder="mike",
    # just_one_file="gambler.txt"
)
