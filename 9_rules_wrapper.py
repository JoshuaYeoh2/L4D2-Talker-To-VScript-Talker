def wrap_rules(input_path, output_path, rules_name):
    with open(input_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    output = [f"local {rules_name} = \n[\n"]
    block = []
    collecting = False

    for line in lines:
        if line.strip().lower().startswith("rule"):
            collecting = True
            block = [line]
        elif collecting:
            block.append(line)
            if line.strip().endswith("}"):
                output.append("\t{\n")
                output.extend("\t\t" + l for l in block)
                output.append("\t},\n")
                collecting = False

    output.append("];\n\n")
    output.append(f"rr_ProcessRules({rules_name});\n")

    with open(output_path, "w", encoding="utf-8") as f:
        f.writelines(output)

# usage
if __name__ == "__main__":
    wrap_rules("8-5_rules_rearrange.txt", "9_rules_wrapped.nut", "replica_soldier_rules")
