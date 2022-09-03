import json
import re

with open("cookiecutter.json") as f:
    cc_template = json.load(f)

with open("header.txt", encoding="utf-8") as f:
    cc_template[" "] = re.sub(r'\\(.+?)\\', '\u001b[' + r'\g<1>', f.read()) 

with open("cookiecutter.json", "w") as f:
    f.write(json.dumps(cc_template, sort_keys=False, indent=4))
    f.write("\n")