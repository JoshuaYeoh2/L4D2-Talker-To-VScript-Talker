import re

# Keywords we don't want to touch
VScript_KEYWORDS = {
    "if", "else", "while", "foreach", "for", "return", "break", "continue", "function", "switch", "case", "default", "try", "catch", "throw", "local", "const"
}

def wrap_calls_with_directorscript(code):
    call_pattern = re.compile(r'\b(?<![\.\w])(\w+)\s*\(')

    result_lines = []
    for line in code.splitlines():
        func_def_match = re.match(r'(\s*)function\s+(\w+)\s*\(', line)
        if func_def_match:
            # Don't prefix the function name in definition
            indent, funcname = func_def_match.groups()
            after_def = line[func_def_match.end():]
            rewritten = call_pattern.sub(lambda m: f'DirectorScript.{m.group(1)}(' if m.group(1) not in VScript_KEYWORDS else m.group(0), after_def)
            result_lines.append(f"{indent}function {funcname}({rewritten}")
        else:
            # Replace function calls (skip keywords)
            rewritten = call_pattern.sub(lambda m: f'DirectorScript.{m.group(1)}(' if m.group(1) not in VScript_KEYWORDS else m.group(0), line)
            result_lines.append(rewritten)

    return "\n".join(result_lines)

def process_file(input_path, output_path):
    with open(input_path, 'r', encoding='utf-8') as f:
        code = f.read()

    updated = wrap_calls_with_directorscript(code)

    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(updated)

if __name__ == "__main__":
    process_file(input_path="1_criterias.nut", output_path="1_criterias.nut")
