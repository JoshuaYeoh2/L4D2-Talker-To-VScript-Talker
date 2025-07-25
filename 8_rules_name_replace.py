import re

def smart_replace(text, find, replace):
    # Match all case-insensitive versions of `find`
    pattern = re.compile(re.escape(find), re.IGNORECASE)

    def repl(match):
        word = match.group()
        if word.isupper():
            return replace.upper()
        elif word[0].isupper():
            return replace.capitalize()
        else:
            return replace.lower()

    return pattern.sub(repl, text)

def replace_criteria_names(lines, criteria_find_replace):
    output = []

    for line in lines:
        keyword = line.strip().lower()
        if keyword.startswith("criteria") or keyword.startswith("applycontext") or keyword.startswith("scene"):
            for find, replace in criteria_find_replace.items():
                line = smart_replace(line, find, replace)
        output.append(line)

    return output

def write_grouped_rules_to_file(input, output, criteria_find_replace):
    with open(input, "r", encoding="utf-8") as f:
        lines = f.readlines()

    updated_lines = replace_criteria_names(lines, criteria_find_replace)

    with open(output, "w", encoding="utf-8") as f:
        for line in updated_lines:
            f.write(line if line.endswith("\n") else line + "\n")

# Example usage
if __name__ == "__main__":
    write_grouped_rules_to_file(
        input="7_rules_sanitized.txt",
        output="8_rules_name_replace.txt",
        criteria_find_replace={
            
            "gambler": "cliffe",

            # "namvet": "mike",
            # "bill": "mike",

            # "gambler": "yusuke",
            # "nick": "yusuke",
            # "producer": "sara",
            # "rochelle": "sara",
            # "coach": "haruka",
            # "mechanic": "blake",
            # "ellis": "blake"
        },
    )
