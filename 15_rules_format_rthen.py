import re

def parse_param_block(param_tokens):
    # Converts ["from:\"Yusuke\"", "YusukeActor:1"] into { from = "Yusuke", YusukeActor = 1 }
    param_dict = {}
    for token in param_tokens:
        if ":" not in token:
            continue
        key, value = token.split(":", 1)
        key = key.strip()
        value = value.strip()
        # Remove quotes around value if any
        if value.startswith('"') and value.endswith('"'):
            value = value
        elif re.match(r'^-?\d+(\.\d+)?$', value):
            pass  # number, keep as-is
        else:
            value = f'"{value}"'
        param_dict[key] = value

    if not param_dict or (len(param_dict) == 1 and "foo" in param_dict and param_dict["foo"] == "0"):
        return "null"
    else:
        pairs = [f'{k} = {v}' for k, v in param_dict.items()]
        return "{ " + ", ".join(pairs) + " }"


def format_rthens(input, output):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output_lines = []
    i = 0

    while i < len(lines):
        line = lines[i]
        stripped = line.lstrip().lower()

        if stripped.startswith("responses"):
            response_block = [line]
            i += 1

            while i < len(lines):
                response_block.append(lines[i])
                if lines[i].strip() == "],":
                    i += 1
                    break
                i += 1

            if i < len(lines) and lines[i].lstrip().lower().startswith("then"):
                then_line = lines[i].strip()

                # Separate comment
                comment = ""
                if "//" in then_line:
                    then_line, raw_comment = then_line.split("//", 1)
                    comment = f" // {raw_comment.strip()}"

                # Match full pattern: then target concept [params] delay
                match = re.match(r'then\s+(\w+)\s+([^\s]+)\s+(.*?)\s+([-\d.]+)\s*$', then_line.strip())
                if match:
                    target, concept, raw_params, delay = match.groups()
                    # Normalize decimals like ".01" -> "0.01"
                    # Convert delay string to float, then back to string to normalize formatting
                    try:
                        delay = str(float(delay))
                    except ValueError:
                        pass  # Keep original if somehow not a number



                    param_tokens = re.findall(r'\w+:"[^"]+"|\w+:\d+|\w+:[^"\s]+', raw_params)
                    param_block = parse_param_block(param_tokens)

                    if target.lower() == "any":
                        followup = f'followup = RThenAny("{concept}", {delay}),{comment}\n'
                    else:
                        followup = f'followup = RThen("{target}", "{concept}", {param_block}, {delay}),{comment}\n'

                    for j in range(len(response_block) - 1, -1, -1):
                        if response_block[j].strip().startswith("}"):
                            response_block.insert(j, "\t" * 4 + followup)
                            break

                    i += 1

            output_lines.extend(response_block)
        else:
            output_lines.append(line)
            i += 1

    with open(output, "w", encoding="utf-8") as f:
        f.writelines(output_lines)


# Example usage
if __name__ == "__main__":
    format_rthens(
        input="14_rules_fix_thenfrom.nut",
        output="15_rules_format_rthen.nut",
    )
