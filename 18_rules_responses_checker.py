import os
import re

def strip_prefix(name):
    return name.split('.')[-1].strip()

def extract_defined_functions(lines):
    pattern1 = re.compile(r'\bfunction\s+([\w.]+)\s*\(')
    pattern2 = re.compile(r'\b([\w.]+)\s*<-\s*function\s*\(')
    pattern3 = re.compile(r'\b([\w]+)\.([\w]+)\s*<-\s*function\s*\(')  # e.g. talker_base.Foo <- function(

    defined = set()

    for line in lines:
        for match in pattern1.finditer(line):
            defined.add(strip_prefix(match.group(1)))
        for match in pattern2.finditer(line):
            defined.add(strip_prefix(match.group(1)))
        for match in pattern3.finditer(line):
            defined.add(match.group(2))  # Only add the method name, e.g., Foo
    return defined

def extract_used_functions(lines):
    pattern = re.compile(r'\bfunc\s*=\s*([\w.]+)')
    return {strip_prefix(match.group(1)) for line in lines for match in pattern.finditer(line)}

def scan_path(path, extract_fn):
    results = set()

    if os.path.isfile(path) and path.endswith('.nut'):
        with open(path, 'r', encoding='utf-8') as f:
            results |= extract_fn(f.readlines())

    elif os.path.isdir(path):
        for root, _, files in os.walk(path):
            for file in files:
                if file.endswith('.nut'):
                    full_path = os.path.join(root, file)
                    with open(full_path, 'r', encoding='utf-8') as f:
                        results |= extract_fn(f.readlines())

    return results

# === Set folders ===
check_path = "16_rules_format_applycontext.nut"
responses_path = "../../[custom talker ] base/scripts/vscripts/yeoh_custom_talker_base_producer.nut"

used = scan_path(check_path, extract_used_functions)
defined = scan_path(responses_path, extract_defined_functions)

missing = used - defined

# === Output ===
if missing:
    print("Missing function definitions:")
    for func in sorted(missing):
        print(f" - {func}")
else:
    print("All functions accounted for!")
