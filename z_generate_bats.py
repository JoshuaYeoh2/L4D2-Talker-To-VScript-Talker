import os

# Get current directory
directory = os.path.dirname(os.path.abspath(__file__))

# Loop through all .py files
for filename in os.listdir(directory):
    if filename.endswith(".py"):
        name_no_ext = os.path.splitext(filename)[0]
        bat_filename = os.path.join(directory, name_no_ext + ".bat")
        vbs_filename = os.path.join(directory, name_no_ext + ".vbs")

        # Create the .bat file
        with open(bat_filename, "w") as bat_file:
            bat_file.write(f'@echo off\ncd /d "%~dp0"\npython "{filename}"\npause\n')

        # Create the .vbs file to run the .bat as admin
        with open(vbs_filename, "w") as vbs_file:
            vbs_file.write(f'''
Set UAC = CreateObject("Shell.Application")
UAC.ShellExecute "{name_no_ext}.bat", "", "", "runas", 1
'''.strip())

print("BAT and VBS files created.")
