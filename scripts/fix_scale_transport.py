#!/usr/bin/env python3
"""Build and validate isolated scale transport corrections on matched layouts.

Retains all stack warnings. Never overwrites original campaign results or
releases an attack matrix on the basis of incomplete validation.
"""
import gzip
import hashlib
import json
import subprocess
import sys
from collections import Counter
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

import run_matrix

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'output/diagnostics/scale_transport_fix'
ENGINE = json.loads((ROOT / 'output/experiments/journal_extension/execution_engine.json').read_text())
SETTINGS = {
    'queues': 'APP_CSMA_NEIGHBOR_QUEUES=16',
    'headers': 'APP_COMPRESS_EXT_HDR=0',
    'both': 'APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0',
}
PERIODS = {}


def write_status(state, **extra):
    (OUT / 'status.json').write_text(json.dumps(dict(state=state, **extra), indent=2))


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    run_matrix.gen_csc.SCRIPT = run_matrix.gen_csc.SCRIPT.replace(
        'else if (msg.startsWith("#"))', 'else')
    variants = {}
    mappings = {}
    for setting, definitions in SETTINGS.items():
        mappings[setting] = {}
        for key, role in [('root', 0), ('cli0', 1), ('cli1', 1)]:
            name = f'v_scale_fix_{setting}_{key}'
            variants[name] = (f'ROLE={role},DEFENSE=0,SEND_INTERVAL_SEC=60,BIG_NET=1,'
                              f'SCALE_DIAGNOSTICS=1,APP_RPL_DIS_INTERVAL_SEC={PERIODS.get(setting, 10)},'
                              f'ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,{definitions}')
            mappings[setting][key] = name
    variant_file = OUT / 'variants.json'
    variant_file.write_text(json.dumps(variants, indent=2))
    write_status('building')
    subprocess.run([sys.executable, str(ROOT / 'scripts/build_variants.py'),
                    '--extra-variants', str(variant_file), '--only', *variants,
                    '--jobs', '3', '--docker-context', ENGINE['docker_context'],
                    '--docker-image', ENGINE['docker_image']], check=True)
    # Record selected binary and source hashes before executing the validation.
    paths = [ROOT / 'firmware/project-conf.h', Path(__file__)]
    paths += [ROOT / f'build/variants/{name}/build/cooja/{name}.cooja' for name in variants]
    (OUT / 'sha256.json').write_text(json.dumps({str(p.relative_to(ROOT)):
        hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}, indent=2))
    base = [json.loads(line) for line in
            (ROOT / 'output/experiments/journal_extension/scale_diagnostics.jsonl').read_text().splitlines()]
    rows = []
    for setting in SETTINGS:
        for config in base:
            if config['native_dis_interval_s'] != 10:
                continue
            r = dict(config)
            r.update(run_id=f'fix_{setting}_n{r["nodes"]}_s{r["seed"]}_t15',
                     experiment='scale_transport_fix', transport_setting=setting,
                     native_dis_interval_s=PERIODS.get(setting, 10),
                     variant_overrides=mappings[setting])
            rows.append(r)
    (OUT / 'plan.jsonl').write_text(''.join(json.dumps(r) + '\n' for r in rows))
    write_status('running', completed=0, planned=len(rows))
    with ThreadPoolExecutor(max_workers=3) as pool:
        jobs = [pool.submit(run_matrix.run_one, r, OUT / 'runs', heap='2g',
                            timeout=7200, **ENGINE) for r in rows]
        for number, future in enumerate(as_completed(jobs), 1):
            rid, state = future.result()
            print(f'[{number}/{len(rows)}] {state} {rid}', flush=True)
            if state not in ('ok', 'skip'):
                raise RuntimeError(f'{rid}: {state}')
            write_status('running', completed=number, planned=len(rows))
    summaries = []
    for config in rows:
        folder = OUT / 'runs' / config['run_id']
        result = json.loads((folder / 'result.json').read_text())
        warnings = Counter()
        with gzip.open(folder / 'COOJA.testlog.gz', 'rt') as stream:
            for line in stream:
                for label, message in [('header_drops', 'compressed header does not fit first fragment'),
                                       ('queue_drops', 'could not allocate neighbor, dropping packet'),
                                       ('dao_repairs', 'local repair (DAO max rtx)')]:
                    if message in line:
                        warnings[label] += 1
        coverage = result['legit_joined'] / result['legit_total']
        passed = coverage >= .95 and result['delivery_up'] >= .8 and result['pdr_down'] >= .9
        summaries.append(dict(run_id=config['run_id'], setting=config['transport_setting'],
                              nodes=config['nodes'], seed=config['seed'], coverage=coverage,
                              delivery_up=result['delivery_up'], pdr_down=result['pdr_down'],
                              passes_gate=passed, warnings=dict(warnings)))
    (OUT / 'summary.json').write_text(json.dumps(summaries, indent=2))
    passing = [s for s in SETTINGS if all(r['passes_gate'] for r in summaries if r['setting'] == s)]
    write_status('complete', completed=len(rows), planned=len(rows), validated_settings=passing)
    print(json.dumps(summaries, indent=2), flush=True)


if __name__ == '__main__':
    try:
        main()
    except Exception as error:
        OUT.mkdir(parents=True, exist_ok=True)
        write_status('failed', error=str(error))
        raise
