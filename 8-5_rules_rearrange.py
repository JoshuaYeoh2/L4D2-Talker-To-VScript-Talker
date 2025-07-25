import re

def parse_blocks(text):
    # Match either Response or Rule blocks
    block_pattern = re.compile(r'(?i)(response|rule)\s+(\w+)\s*\{(.*?)\}', re.DOTALL)
    blocks = []

    for match in block_pattern.finditer(text):
        block_type = match.group(1).strip().lower()
        name = match.group(2).strip()
        content = match.group(3).strip()
        blocks.append({
            'type': block_type,
            'name': name,
            'content': content,
            'full_match': match.group(0),
        })

    return blocks

def extract_first_then(content):
    # Extract only the first `then` line (and its comment)
    match = re.search(r'\bthen\s+([^\n]*?)(\s*//.*)?$', content, re.IGNORECASE | re.MULTILINE)
    if match:
        return f'then {match.group(1).strip()}{match.group(2) or ""}'
    return None

def transform(text):
    blocks = parse_blocks(text)
    response_map = {}

    # Collect first `then` from each Response block
    for b in blocks:
        if b['type'] == 'response':
            then_line = extract_first_then(b['content'])
            response_map[b['name'].lower()] = then_line

    output = []
    for b in blocks:
        if b['type'] == 'rule':
            lines = []
            lines.append(f'Rule {b["name"]}')
            lines.append('{')
            rule_lines = b['content'].strip().splitlines()
            applycontext_lines = []
            response_seen = False

            then_to_insert = response_map.get(b['name'].lower())

            for line in rule_lines:
                stripped = line.strip()

                if stripped.lower().startswith('response '):
                    response_seen = True
                    lines.append(f'    {stripped}')
                    if then_to_insert:
                        lines.append(f'    {then_to_insert}')
                elif stripped.lower().startswith('applycontext'):
                    applycontext_lines.append(f'    {stripped}')
                else:
                    lines.append(f'    {stripped}')

            # Insert applycontext lines last
            lines.extend(applycontext_lines)
            lines.append('}')
            output.append('\n'.join(lines))

    return '\n\n'.join(output)

# Example usage
with open("8_rules_name_replace.txt", "r", encoding="utf-8") as f:
    source = f.read()

# Remove the Response blocks after processing
transformed = transform(source)

# Remove original Response blocks entirely
final = re.sub(r'(?i)Response\s+\w+\s*\{.*?\}', '', transformed, flags=re.DOTALL)

# Save or print
with open("8-5_rules_rearrange.txt", "w", encoding="utf-8") as f:
    f.write(final.strip() + '\n')
