import os
import re

chipW_range = [1800, 1800, 2000, 1800, 3500]
chipH_range = [2000, 1800, 2000,2400, 3500]

results = []

def extract_value(file, pattern):
    with open(file) as f:
        for line in f:
            if re.search(pattern, line):
                return float(re.findall(r"[-+]?\d*\.\d+|\d+", line)[0])
    return None

for w, h in zip(chipW_range, chipH_range):
    print(f"== Running DSE step for Chip {w}x{h} ==")
    os.environ["CHIP_W"] = str(w)
    os.environ["CHIP_H"] = str(h)

    os.system("make openroad")

    

