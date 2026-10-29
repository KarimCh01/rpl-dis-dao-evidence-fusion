#!/usr/bin/env python3
"""Record native object sections, not microcontroller flash/RAM or runtime RSS."""
import csv,json,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
rows=[]
for file in ('ablation_variants.json','operational_variants.json'):
    for variant,definitions in json.loads((OUT/file).read_text()).items():
        for module in ('defense','rl','dst','node'):
            obj=ROOT/'build/variants'/variant/'build/cooja/obj'/f'{module}.o'
            if not obj.exists():continue
            result=subprocess.check_output(['size',str(obj)],text=True).splitlines()[-1].split()
            rows.append({'variant':variant,'module':module,'native_text_bytes':int(result[0]),
                'native_initialized_data_bytes':int(result[1]),'native_bss_bytes':int(result[2]),'definitions':definitions})
if not rows:raise SystemExit('No compiled native objects')
with (OUT/'analysis/native_object_sizes.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
print(f'{len(rows)} object measurements. Native code/storage, not target flash/RAM.')
