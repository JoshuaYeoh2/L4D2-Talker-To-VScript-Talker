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



def convert_vcd_to_wav(vcd_line, speaker_folder):
    match = re.match(r'scene\s+"scenes/([^/]+)/([^"]+)\.vcd"(?:[^/]*)(\/\/.*)?', vcd_line)
    if not match:
        return None

    folder, filename, comment = match.groups()

    filename_clean = filename.lower()

    # If it ends with any of the following, replace it with "blank"
    if filename_clean.endswith("orator_blank") or filename_clean.endswith("barricade_orator_blank"):
        filename_clean = "blank"

    wav_path = f'"player/survivor/voice/{speaker_folder}/{filename_clean}.wav"'

    comment = comment.strip().rstrip(',') if comment else ""
    return (wav_path, comment)


def collect_sound_blocks(responses, suffix_map, speaker_folder, file_label):
    output_lines = []
    sound_names = []
    
    names = []
    for name in responses:
        for suffix_find, suffix_replace in suffix_map.items():
            if name.endswith(suffix_find):
                names.append((name, suffix_find, suffix_replace))
                break  # Only match the first one

    if not names:
        return output_lines, sound_names

    output_lines.append(f"\t\t\t// {file_label} " + "="*100)

    for name, suffix_find, suffix_replace in names:
        vcd_lines = responses[name]
        base_name = name[:-len(suffix_find)]
        new_name = base_name + suffix_replace
        sound_names.append(new_name)

        output_lines.append(f"\t\t\t{new_name} = [")
        converted_lines = [convert_vcd_to_wav(line, speaker_folder) for line in vcd_lines]
        converted_lines = [c for c in converted_lines if c]

        # If empty, insert fallback
        if not converted_lines:
            converted_lines = [(f'"player/survivor/voice/{speaker_folder}/blank.wav"', "")]

        for i, (wav_path, comment) in enumerate(converted_lines):
            is_last = i == len(converted_lines) - 1
            line = f"\t\t\t\t{wav_path}"
            if not is_last:
                line += ","
            if comment:
                line += f"  {comment}"
            output_lines.append(line)

        output_lines.append("\t\t\t],")

    return output_lines, sound_names


def process_vcd_folder_combined(folder_path, output_path, suffix_map=None, speaker_folder="", just_one_file=None):
    if suffix_map is None:
        suffix_map = {}

    all_sound_lines = ['\tfunction BuildSoundsTable(custom_name)\n\t{', '\t\tlocal sounds = \n\t\t{']
    # all_sound_lines = ["Sounds = \n{"]
    all_sound_names = []

    files = [just_one_file] if just_one_file else sorted(f for f in os.listdir(folder_path) if f.endswith(".txt"))

    for file in files:
        input_path = os.path.join(folder_path, file)

        with open(input_path, 'r') as f:
            lines = f.readlines()

        responses = extract_response_block(lines)

        if not responses:
            continue

        block_lines, names = collect_sound_blocks(responses, suffix_map, speaker_folder, file)

        all_sound_lines.extend(block_lines)
        all_sound_names.extend(names)

    # Remove last comma if needed
    if all_sound_lines[-1].endswith(","):
        all_sound_lines[-1] = all_sound_lines[-1][:-1]

    all_sound_lines.append('\t\t};\n\t\treturn sounds;')
    all_sound_lines.append("\t}\n")
    # all_sound_lines.append("},\n")  # End of Sounds block

    all_sound_lines.append("\tsounds_order = [")

    for file in files:
        input_path = os.path.join(folder_path, file)

        with open(input_path, 'r') as f:
            lines = f.readlines()

        responses = extract_response_block(lines)
        if not responses:
            continue

        _, names = collect_sound_blocks(responses, suffix_map, speaker_folder, file)

        if not names:
            continue

        all_sound_lines.append(f"\t\t// {file} " + "=" * 100)
        for name in names:
            all_sound_lines.append(f'\t\t"{name}",')

    # Remove trailing comma from last entry
    if all_sound_lines[-1].endswith(","):
        all_sound_lines[-1] = all_sound_lines[-1][:-1]

    all_sound_lines.append("\t],")

    with open(output_path, 'w') as f:
        f.write("\n".join(all_sound_lines))


# === USAGE ===

process_vcd_folder_combined(
    folder_path="talker",
    output_path="5_responses_wavs.nut",
    suffix_map= {
        
        # "Gambler": "Gambler",
        # "Producer": "Producer",
        # "Coach": "Coach",
        # "Mechanic": "Mechanic",

        # "Namvet": "Namvet",
        # "NamVet": "NamVet",
        # "TeenGirl": "TeenGirl",
        # "Manager": "Manager",
        "Biker": "Biker",

        # Add more here...
    },
    speaker_folder='" + custom_name + "',
    # just_one_file="gambler.txt"
)
