import os
import re

def sanitize_func_name(name, to_lower=False):
    if to_lower:
        name = name.lower()
    # Convert to lowercase, and replace anything not a-z, A-Z, 0-9 or _ with _
    return re.sub(r'[^a-zA-Z0-9_]', '_', name)

def convert_criterion_line(line):
    line = line.lstrip()
    if line.startswith("//") or not line.lower().startswith("criterion"):
        return None

    # OR-group block
    match_or = re.match(r'criterion\s+"([^"]+)"\s+\{\s*([^\}]+?)\s*\}', line, re.IGNORECASE)
    if match_or:
        func_name, inner = match_or.groups()
        funcs = inner.strip().split()
        # joined = " || ".join(f"{f.lower()}(query)" for f in funcs)
        joined = " || ".join(f"{f}(query)" for f in funcs)

#         return f"""function {func_name.lower()}(query) {{
#     local q = normalize_query(query);
#     return ( {joined} );
# }}"""
        # return f"""function {func_name.lower()}(query) {{ return ( {joined} ); }}"""
        return f"""function {func_name}(query) {{ return ( {joined} ); }}"""

    # Standard rule
    match = re.match(r'criterion\s+"([^"]+)"\s*"?([A-Za-z0-9_]+)"?\s+"([^"]+?)"', line, re.IGNORECASE)

    if not match:
        return None

    func_name, field, value = match.groups()

    # Check operator
    op_match = re.match(r'(==|!=|<=|>=|<|>)(.+)', value)
    if op_match:
        op, val = op_match.groups()
    else:
        op, val = '==', value

    # Fix ".25" to "0.25"
    if re.match(r'^\.\d+', val):
        val = '0' + val

    field_lc = field.lower()
    safe_func_name = sanitize_func_name(func_name)

    # Detect value type
    if re.match(r'^-?\d+(\.\d+)?$', val):
        # field_expr = f'q.{field_lc}'
        field_expr = f'query.{field_lc}'
    else:
        val = f'"{val.lower()}"'
        # field_expr = f'q.{field_lc}.tostring().tolower()'
        # field_expr = f'q.{field_lc}'
        field_expr = f'query.{field_lc}'

    # Decide return value if key is missing
    if op in ('!=', '<', '<='):
        default_return = "true"
    else:
        default_return = "false"

#     return f"""function {safe_func_name}(query) {{
#     local q = normalize_query(query);
#     if("{field_lc}" in q) {{ return {field_expr} {op} {val}; }} 
#     else return {default_return};
# }}"""

    return f"""function {safe_func_name}(query) {{
    if("{field_lc}" in query) {{ return {field_expr} {op} {val}; }} 
    else return {default_return};
}}"""



def convert_file(input_path, outfile):
    filename = os.path.basename(input_path)
    converted_lines = []

    with open(input_path, 'r') as infile:
        for line in infile:
            converted = convert_criterion_line(line)
            if converted:
                converted_lines.append(converted)

        # Write the normalize_query helper if not already done
#         if "normalize_query_written" not in convert_file.__dict__:
#             outfile.write("""function normalize_query(query) {
#     local norm = {};
#     foreach (key, val in query)
#         norm.rawset(key.tolower(), val);
#     return norm;
# }
# \n""")
#             convert_file.normalize_query_written = True

    if converted_lines:
        outfile.write(f"// {filename} " + "="*115 + "\n")


        for line in converted_lines:
            outfile.write(line + "\n")



def convert_all(folder_path, output_path, just_one_file=None):
    with open(output_path, 'w') as outfile:
        if just_one_file:
            input_path = os.path.join(folder_path, just_one_file)
            convert_file(input_path, outfile)
        else:
            for file in sorted(os.listdir(folder_path)):
                if file.endswith(".txt"):
                    input_path = os.path.join(folder_path, file)
                    convert_file(input_path, outfile)


# === USAGE ===

# Option 1: Just convert finales_dlc2.txt
# convert_all("talker", "_output.nut", just_one_file="finales_dlc2.txt")

# Option 2: Convert all .txt files in /talker folder
convert_all("talker", "1_criterias.nut")
