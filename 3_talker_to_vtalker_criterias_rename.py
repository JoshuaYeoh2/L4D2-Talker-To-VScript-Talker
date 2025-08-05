import re

def extract_matching_functions(input_path, output_path, replacements):
    with open(input_path, 'r') as infile:
        lines = infile.readlines()

    output_lines = []
    inside_function = False
    buffer = []

    def should_keep_line(line):
        lowered = line.lower()
        return any(keyword in lowered for keyword in replacements.keys())

    def apply_replacements(line):
        for keyword, keyword_replace in replacements.items():
            pattern = re.compile(re.escape(keyword), re.IGNORECASE)
            line = pattern.sub(lambda m: match_case(m.group(0), keyword_replace), line)
        return line

    def match_case(source, target):
        if source.isupper():
            return target.upper()
        elif source.islower():
            return target.lower()
        elif source[0].isupper():
            return target.capitalize()
        else:
            return target


    brace_depth = 0
    function_name_line = ""
    buffer = []
    inside_function = False
    keep_function = False

    for line in lines:
        stripped = line.strip()

        # Detect one-liner function
        if stripped.startswith("function ") and "{" in stripped:
            if "}" in stripped:
                lowered = line.lower()
                has_keyword = any(k in lowered for k in replacements.keys())
                has_keyword_in_name = any(k in line.split("(")[0].lower() for k in replacements.keys())
                
                if has_keyword:
                    replaced_line = apply_replacements(line)
                    if has_keyword_in_name:
                        output_lines.append(replaced_line)
                    else:
                        output_lines.append("// " + replaced_line)

                continue
            else:
                inside_function = True
                buffer = [line]
                brace_depth = line.count("{") - line.count("}")
                function_name_line = line
                keep_function = should_keep_line(line)
            continue

        if inside_function:
            buffer.append(line)
            brace_depth += line.count("{") - line.count("}")
            if brace_depth <= 0:
                inside_function = False

                body_has_keyword = any(should_keep_line(l) for l in buffer)
                name_has_keyword = should_keep_line(function_name_line)

                if body_has_keyword:
                    if name_has_keyword:
                        output_lines.extend(apply_replacements(l) for l in buffer)
                    else:
                        # Comment out entire function block
                        # Apply replacements first, then comment out
                        replaced_lines = [apply_replacements(l) for l in buffer]
                        output_lines.extend("// " + l for l in replaced_lines)
                buffer = []


    with open(output_path, 'w') as outfile:
        outfile.writelines(output_lines)

    print(f"✅ Extracted and renamed functions with: {', '.join(replacements.keys())} ➝ {', '.join(replacements.values())}")
    print(f"📄 Output saved to {output_path}")


# 🧪 Example usage
if __name__ == "__main__":
    extract_matching_functions(
        input_path="1_criterias.nut",
        output_path="3_criterias_custom.nut",
        replacements={

            # "gambler": "deputy",
            # "nick": "deputy",

            # "producer": "mia",
            # "rochelle": "mia",

            # "coach": "david",

            "mechanic": "trevor",
            "ellis": "trevor",

            # "namvet": "robin",
            # "bill": "robin",
            
            # "teengirl": "rebecca",
            # "zoey": "rebecca",
            
            # "manager": "lee",
            # "louis": "lee",
            
            # "biker": "kenny",
            # "francis": "kenny",
        }
    )
