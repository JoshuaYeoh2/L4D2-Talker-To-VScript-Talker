import re

def reformat_rules(text):
    pattern = re.compile(r'''
        Rule\s+(\w+)\s*     # Match the Rule name
        \{\s*               # Opening curly brace
        (.*?)               # Everything inside the rule
        \}                  # Closing curly brace
    ''', re.DOTALL | re.VERBOSE)

    def replacer(match):
        rule_name = match.group(1)
        body = match.group(2).strip('\n')

        # Normalize indentation of body lines
        body_lines = body.splitlines()
        body_lines = [line.strip() for line in body_lines]

        # Add one tab in front of each line
        # Remove trailing empty lines first, then indent
        while body_lines and body_lines[-1].strip() == "":
            body_lines.pop()

        indented_body = "\n".join("\t\t" + line for line in body_lines)


        return f'name = "{rule_name}",\n{indented_body}'

    return pattern.sub(replacer, text)

input_file = "9_rules_wrapped.nut"
output_file = "10_rules_format_name.nut"

with open(input_file, 'r', encoding='utf-8') as f:
    original_text = f.read()

formatted_text = reformat_rules(original_text)

with open(output_file, 'w', encoding='utf-8') as f:
    f.write(formatted_text)
