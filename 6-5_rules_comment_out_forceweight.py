input_path = "6_rules.txt"
output_path = "6_rules.txt"

with open(input_path, "r") as file:
    lines = file.readlines()

with open(output_path, "w") as file:
    for line in lines:
        stripped = line.strip().lower()
        if "forceweight" in stripped and not stripped.startswith("//"):
            file.write("// " + line)
        else:
            file.write(line)
