import re

def parse_applycontext(ctx_str):
    parts = [p.strip() for p in ctx_str.strip('"').split(',')]
    results = []
    for part in parts:
        tokens = part.split(':')
        if len(tokens) == 3:
            ctx, val, dur = tokens
        elif len(tokens) > 3:
            # Likely malformed like Said:OpenedGate2:1:0 → merge first two
            ctx = ':'.join(tokens[:-2])
            val, dur = tokens[-2], tokens[-1]
        else:
            # Fallback for short/invalid ones
            results.append((part, None, None))
            continue

        try:
            val_int = int(val)
            dur_f = float(dur)
            results.append((ctx, val_int, dur_f))
        except ValueError:
            results.append((ctx, val, dur))
    return results


def convert_rules(input, output, rules_name, response_prefix, response_suffix):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output_lines = [f"{rules_name} <- \n[\n"]
    block = []
    collecting = False

    for line in lines:
        if re.match(r"(?i)^\s*rule\b", line):
            collecting = True
            block = [line]
        elif collecting:
            block.append(line)
            if line.strip().endswith("}"):
                # Process block
                output_lines.append(convert_block(block, response_prefix, response_suffix))
                collecting = False

    output_lines.append("];\n\nrr_ProcessRules(" + rules_name + ");\n")

    with open(output, "w", encoding="utf-8") as f:
        f.writelines(output_lines)

def convert_block(block_lines, response_prefix, response_suffix):
    name = None
    criteria = []
    raw_contexts = []
    response = None
    has_applycontexttoworld = False

    block_str = "".join(block_lines)

    # Rule name
    name_match = re.search(r"(?i)rule\s+([^\s{]+)", block_lines[0])
    if name_match:
        name = name_match.group(1)

    # Criteria
    crit_match = re.search(r"(?i)\bcriteria\b\s+([^\n{]+)", block_str)
    if crit_match:
        crit_parts = crit_match.group(1).split()
        criteria = crit_parts

    # ApplyContext
    apply_match = re.search(r'(?i)\bapplycontext\b\s+"([^"]+)"', block_str)
    if apply_match:
        raw_contexts = parse_applycontext(apply_match.group(1))

    # applycontexttoworld
    if re.search(r"(?i)\bapplycontexttoworld\b", block_str):
        has_applycontexttoworld = True

    # Response
    response_match = re.search(r"(?i)\bresponse\b\s+([^\s\n{]+)", block_str)
    if response_match:
        response = response_match.group(1)

    # Start building output
    out = f"\t{{\n\t\tname = \"{name}\",\n"
    if criteria:
        out += "\t\tcriteria = [ " + ", ".join(f"[{c.lower()}]" for c in criteria) + " ],\n"

    # Responses block
    out += "\t\tresponses = [\n\t\t\t{\n"
    func_name = "NoResponse" if response is None else response
    out += f"\t\t\t\tfunc = {response_prefix}{func_name}{response_suffix},\n"

    if raw_contexts:
        out += "\t\t\t\tapplycontext = {\n"
        valid_index = 1
        for ctx, val, dur in raw_contexts:
            if isinstance(val, (int, float)):
                out += f'\t\t\t\t\tc{valid_index} = {{ context = "{ctx.lower()}", value = {val}, duration = {dur} }},\n'
            elif isinstance(val, str) and dur is not None:
                out += f'\t\t\t\t\tc{valid_index} = {{ context = "{ctx.lower()}", value = "{val}", duration = {dur} }},\n'
            else:
                out += f'\t\t\t\t\t//⚠️WARNING: "{ctx}:{val}" needs a function to be put as a criteria\n'
            valid_index += 1
        out += "\t\t\t\t},\n"

    if has_applycontexttoworld:
        out += "\t\t\t\tapplycontexttoworld = true,\n"

    out += "\t\t\t}\n\t\t],\n"

    # Group params
    out += "\t\tgroup_params = g_rr.RGroupParams({}),\n\t},\n"
    return out


# params
if __name__ == "__main__":
    convert_rules(
        input="6_rules.nut",
        output="6_rules.nut",
        rules_name="Yusuke.rules",
        response_prefix="Yusuke.",
        response_suffix=""
    )
