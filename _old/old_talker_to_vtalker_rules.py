import os
import re

def sanitize_func_name(name):
    return re.sub(r'[^a-zA-Z0-9_]', '_', name.lower())

def sanitize_squirrel_token(name):
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)

def convert_rule_line(
    line,
    rule_suffix_find="",
    rule_suffix_replace="",
    name_prefix="",
    name_suffix="",
    criterion_find="",
    criterion_replace=""
):
    line = line.strip()

    line = re.sub(r'"([a-zA-Z0-9_]+)"\s*"([a-zA-Z0-9_]+)"', r'"\1" "\2"', line)

    if line.lower().startswith("rule"):
        match = re.match(r'Rule\s+([A-Za-z0-9_\.><]+)', line, flags=re.IGNORECASE)
        if not match:
            return None

        original_name = match.group(1)
        if rule_suffix_find and not original_name.endswith(rule_suffix_find):
            return "__SKIP_RULE__"  # flag for skipping

        base_name = original_name[:-len(rule_suffix_find)] if rule_suffix_find and original_name.endswith(rule_suffix_find) else original_name
        final_name = base_name + rule_suffix_replace
        safe_final_name = sanitize_squirrel_token(final_name)

        return (
            "\t{\n"
            f'\t\tname = {name_prefix}"{safe_final_name}"{name_suffix},'
        )
    
    elif line.lower().startswith("criteria"):
        parts = line.split()[1:]
        crits = []

        for token in parts:
            crit = token.lower()
            if criterion_find and crit.endswith(criterion_find.lower()):
                crit = crit[:-len(criterion_find)] + criterion_replace
            crits.append(f"[{sanitize_func_name(crit)}]")

        joined = ", ".join(crits)
        return f"\t\tcriteria = [ {joined} ],"

    elif line.lower().startswith(("response", "applycontext", "applycontexttoworld")):
        return None

    elif line.strip() == "}":
        return "\t},"

    return None


def convert_apply_context_block(apply_line, has_world):
    if not apply_line:
        return ""

    output_lines = ["\t\tapplycontext = \n\t\t{"]

    match = re.search(r'"([^"]+)"', apply_line)
    if not match:
        return ""

    context_entries = match.group(1).split(",")
    for i, entry in enumerate(context_entries):
        parts = entry.strip().split(":")
        if len(parts) == 3:
            context, value, duration = parts
            output_lines.append(
                f'\t\t\tc{i+1} = {{ context = "{context.lower()}", value = {value}, duration = {duration} }},'
            )
        elif len(parts) == 2:
            context, value = parts
            value = value.strip()
            context = context.strip().lower()

            if value in ("++1", "--1"):
                direction = "Increase" if value == "++1" else "Decrease"
                func_name = ''.join(part.capitalize() for part in re.split(r'[_\W]+', context)) + direction
                output_lines.append(
                    f'\t\t\t//⚠️WARNING ApplyContext uses {value} for "{context}", requires helper function: {func_name}()'
                )
            else:
                continue

    output_lines.append("\t\t},")
    if has_world:
        output_lines.append("\t\tapplycontexttoworld = true,")
    return "\n".join(output_lines)


def extract_response_func_name(line):
    match = re.match(r'Response\s+([A-Za-z0-9_\.><]+)', line, flags=re.IGNORECASE)
    if match:
        return match.group(1)
    return None


def convert_response_block(func_name, response_prefix=""):
    return (
        f'\t\tresponses = [ {{ func = {response_prefix}{sanitize_squirrel_token(func_name)} }} ],\n'
        f'\t\tgroup_params = g_rr.RGroupParams({{}}),'
    )


def convert_rules_folder(
    folder_path,
    output_path,
    rule_suffix_find="",
    rule_suffix_replace="",
    name_prefix="",
    name_suffix="",
    rules_name="RulesList",
    criterion_find="",
    criterion_replace="",
    response_prefix="",
    just_one_file=None 
):
    with open(output_path, 'w', encoding='utf-8') as outfile:
        outfile.write(f"{rules_name} <- \n[\n")

        files = [just_one_file] if just_one_file else sorted(f for f in os.listdir(folder_path) if f.endswith(".txt"))

        for file in files:
            input_path = os.path.join(folder_path, file)
            outfile.write(f"\n\t// {file} {'='*100}\n")

            with open(input_path, 'r', encoding='utf-8', errors='replace') as infile:
                lines = infile.readlines()

            inside_rule = False
            current_final_name = None
            apply_context_line = ""
            has_applycontextworld = False
            response_block = ""
            skip_current_rule = False

            for line in lines:
                stripped = line.strip()
                if stripped.startswith("//"):
                    continue

                if stripped.startswith("ApplyContext"):
                    apply_context_line = stripped
                    continue
                elif stripped.startswith("applycontexttoworld"):
                    has_applycontextworld = True
                    continue

                is_new_rule = stripped.lower().startswith("rule")
                if is_new_rule and inside_rule:
                    if not skip_current_rule:
                        if apply_context_line:
                            outfile.write(convert_apply_context_block(apply_context_line, has_applycontextworld) + "\n")
                        if response_block:
                            outfile.write(response_block + "\n")
                        outfile.write("\t},\n")

                    inside_rule = False
                    skip_current_rule = False
                    apply_context_line = ""
                    has_applycontextworld = False
                    response_block = ""

                if stripped.startswith("Response"):
                    func_name = extract_response_func_name(stripped)
                    if func_name:
                        response_block = convert_response_block(func_name, response_prefix=response_prefix)
                    continue

                converted = convert_rule_line(
                    line,
                    rule_suffix_find,
                    rule_suffix_replace,
                    name_prefix,
                    name_suffix,
                    criterion_find,
                    criterion_replace
                )

                if is_new_rule:
                    match = re.match(r'Rule\s+([A-Za-z0-9_\.><]+)', line, flags=re.IGNORECASE)
                    if match:
                        original_name = match.group(1)
                        if rule_suffix_find and not original_name.endswith(rule_suffix_find):
                            skip_current_rule = True
                            continue
                        base_name = original_name[:-len(rule_suffix_find)] if original_name.endswith(rule_suffix_find) else original_name
                        current_final_name = base_name + rule_suffix_replace

                if skip_current_rule:
                    continue

                if converted:
                    if converted == "__SKIP_RULE__":
                        skip_current_rule = True
                        continue
                    if converted.startswith("\t{"):
                        inside_rule = True
                    elif converted.startswith("\t},"):
                        continue
                    outfile.write(converted + "\n")

            if inside_rule and not skip_current_rule:
                if apply_context_line:
                    outfile.write(convert_apply_context_block(apply_context_line, has_applycontextworld) + "\n")
                if response_block:
                    outfile.write(response_block + "\n")
                outfile.write("\t},\n")

        outfile.write("];\n\n")
        outfile.write(f"rr_ProcessRules({rules_name});\n")


# === USAGE ===
if __name__ == "__main__":
    convert_rules_folder(
        folder_path="talker",
        output_path="_output.nut",
        rule_suffix_find="Gambler",
        rule_suffix_replace="Yusuke",
        name_prefix="",
        name_suffix="",
        rules_name="Yusuke.rules",
        criterion_find="gambler",
        criterion_replace="yusuke",
        response_prefix="Yusuke."
        # just_one_file="gambler.txt"
    )