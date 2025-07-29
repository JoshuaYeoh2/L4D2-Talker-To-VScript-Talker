import os
import re

def strip_prefix(name):
    # Keep only the last 2 segments (e.g., Yusuke.Foo -> Foo)
    return name.split('.')[-1].strip()

def extract_defined_functions(lines):
    pattern1 = re.compile(r'\bfunction\s+([\w.]+)\s*\(')               # function Foo.Bar(
    pattern2 = re.compile(r'\b([\w.]+)\s*<-\s*function\s*\(')          # Foo.Bar <- function(
    defined = set()

    for line in lines:
        for match in pattern1.finditer(line):
            defined.add(strip_prefix(match.group(1)))
        for match in pattern2.finditer(line):
            defined.add(strip_prefix(match.group(1)))
    return defined

def extract_used_functions(lines):
    pattern = re.compile(r'\bfunc\s*=\s*([\w.]+)')
    return {strip_prefix(match.group(1)) for line in lines for match in pattern.finditer(line)}

def scan_nut_folder(folder_path):
    defined = set()
    used = set()

    for root, _, files in os.walk(folder_path):
        for file in files:
            if not file.endswith('.nut'):
                continue
            full_path = os.path.join(root, file)
            with open(full_path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
                defined |= extract_defined_functions(lines)
                used |= extract_used_functions(lines)

    missing = used - defined
    return missing




# === Run it ===
folder = "..\..\[custom talker] replica soldier"
missing_funcs = scan_nut_folder(folder)

if missing_funcs:
    print("Missing function definitions:")
    for func in sorted(missing_funcs):
        print(f" - {func}")
else:
    print("All functions accounted for!")
