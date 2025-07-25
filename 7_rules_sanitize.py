import re

def sanitize_name(name, to_lower=False):
    if to_lower:
        name = name.lower()
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)

    # because of examples like these:

    # Rule Player.TakeVomitJarYusuke
    # {
    # 	criteria ConceptPlayer.TakeVomitJarC1a IsGambler ChanceToFire10Percent
    # 	Response Player.TakeVomitJarYusuke
    # }

    # Rule WorldC6M2_Tattoo03a>Yusuke
    # {
    # 	criteria ConceptWorldC6M2_Tattoo03a> IsGambler
    # 	Response WorldC6M2_Tattoo03a>Yusuke
    # }


def sanitize_script_lines(lines):
    output = []
    previous_was_blank = False

    for line in lines:
        stripped = line.strip()

        if stripped == "":
            if not previous_was_blank:
                output.append("")
                previous_was_blank = True
            continue
        previous_was_blank = False

        lower = stripped.lower()

        if lower.startswith("rule "):
            _, name = stripped.split(None, 1)
            sanitized = sanitize_name(name.strip())  # preserve case
            output.append(f"Rule {sanitized}")
            continue

        if lower.startswith("criteria "):
            _, *parts = stripped.split()
            # sanitized_parts = [sanitize_name(p.strip(), to_lower=True) for p in parts]
            sanitized_parts = [sanitize_name(p.strip()) for p in parts]
            output.append("\tcriteria " + " ".join(sanitized_parts))
            continue

        if lower.startswith("response "):
            # Capture leading whitespace (spaces/tabs)
            indent_match = re.match(r"^(\s*)Response\s+", line)
            indent = indent_match.group(1) if indent_match else ""

            _, name = stripped.split(None, 1)
            sanitized = sanitize_name(name.strip())
            output.append(f"{indent}Response {sanitized}")
            continue

        # if lower.startswith("applycontext"):
        #     match = re.search(r'"(.*?)"', stripped)
        #     if match:
        #         raw_context = match.group(1)
        #         entries = raw_context.split(",")
        #         lowered_entries = []
        #         for entry in entries:
        #             parts = entry.split(":")
        #             cleaned = []
        #             for p in parts:
        #                 # If it's not a number, lowercase it
        #                 cleaned.append(p if p.isdigit() else p.lower())
        #             lowered_entries.append(":".join(cleaned))
        #         rebuilt = ",".join(lowered_entries)
        #         output.append(f'\tapplycontext "{rebuilt}"')
        #         continue
        
        # Default: keep the line with trailing whitespace stripped
        output.append(line.rstrip())

    return output


def sanitize(input, output):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    sanitized = sanitize_script_lines(lines)

    with open(output, "w", encoding="utf-8") as f:
        f.write("\n".join(sanitized) + "\n")

if __name__ == "__main__":
    sanitize(
        input="6_rules.txt",
        output="7_rules_sanitized.txt"
    )
