import re

def parse_applycontext(ctx_str):
    parts = [p.strip() for p in ctx_str.strip('"').split(',')]
    results = []
    for part in parts:
        tokens = part.split(':')
        if len(tokens) == 3:
            ctx, val, dur = tokens
        elif len(tokens) > 3:
            ctx = ':'.join(tokens[:-2])
            val, dur = tokens[-2], tokens[-1]
        else:
            results.append((part, None, None))
            continue
        try:
            val_int = int(val)
            dur_f = float(dur)
            results.append((ctx, val_int, dur_f))
        except ValueError:
            results.append((ctx, val, dur))
    return results

def process_file(input_path, output_path):
    with open(input_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output_lines = []
    i = 0

    while i < len(lines):
        line = lines[i]

        # Match applycontext line
        match = re.search(r'\bapplycontext\b\s*"([^"]+)"', line, re.IGNORECASE)
        if match:
            ctx_string = match.group(1)
            parsed = parse_applycontext(ctx_string)

            output_lines.append("\t\tapplycontext =\n\t\t{\n")
            for idx, (ctx, val, dur) in enumerate(parsed, start=1):
                if isinstance(val, (int, float)):
                    # output_lines.append(f'\t\t\tc{idx} = {{ context = "{ctx.lower()}", value = {val}, duration = {dur} }},\n')
                    output_lines.append(f'\t\t\tc{idx} = {{ context = "{ctx}", value = {val}, duration = {dur} }},\n')
                elif val is not None and dur is not None:
                    # output_lines.append(f'\t\t\tc{idx} = {{ context = "{ctx.lower()}", value = "{val}", duration = {dur} }},\n')
                    output_lines.append(f'\t\t\tc{idx} = {{ context = "{ctx}", value = "{val}", duration = {dur} }},\n')
                else:
                    output_lines.append(f'\t\t\t//⚠️WARNING: {ctx}:{val}:{dur} requires criteria function!\n')
            output_lines.append("\t\t},\n")

            i += 1  # Skip the original applycontext line
            continue

        # Match applycontexttoworld line
        if re.search(r'\bapplycontexttoworld\b', line, re.IGNORECASE):
            output_lines.append("\t\tapplycontexttoworld = true,\n")
            i += 1
            continue

        # Preserve all other lines
        output_lines.append(line)
        i += 1

    with open(output_path, "w", encoding="utf-8") as f:
        f.writelines(output_lines)

# Run
if __name__ == "__main__":
    process_file("15_rules_format_rthen.nut", "16_rules_format_applycontext.nut")
