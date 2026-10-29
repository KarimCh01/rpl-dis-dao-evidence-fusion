#!/usr/bin/env python3
"""Package paper, code and saved-log evidence; omit local environments/caches."""
import hashlib
import json
import os
import subprocess
import tempfile
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
NAME='AEF-RPL_Doctor_Submission_2026-10-28'
DEST=Path('/home/karim/Desktop')/(NAME+'.zip')
DIRS={'analysis','scripts','firmware','scenarios','patches','docs','full_paper','tex','build','output'}
FILES={'README.md','Makefile','requirements.txt','manuscript_full.tex','manuscript_full.pdf'}
SKIP={'output/repro','output/repro_journal_extension'}
GUIDE='''# AEF-RPL — doctor/supervisor submission

Author: Karim Chehab
Department of Computer Science and Mathematics
Lebanese American University, Beirut, Lebanon
Email: karim.chehab02@lau.edu
Packaged: 28 October 2026

## Read first

1. `01_Paper/AEF-RPL_Full_Paper.pdf`: current full IEEE two-column paper draft.
2. `02_Submitted_Intro_LR/`: preserved submitted Introduction/LR PDF and recovered
   source. This is separate from the full paper; its wording is preserved there.
3. `SUPERVISOR_README.md`: detailed reproduction instructions and evidence limits.
4. `twin-attack-rpl/`: code, LaTeX source, original logs, metadata, plans,
   numerical analyses, figures, checksums and recorded reproduction reports.
5. `03_Proposal/`: original proposal, supplied as supporting context.

The requested task is to **reproduce analyses/graphs from saved logs**.
It does not require generating fresh simulation logs, Docker or Cooja.

## Reproduce from saved logs

Extract the entire ZIP first. On Linux/macOS, open a terminal in
`twin-attack-rpl/` and run (Python 3.12 was used for the recorded checks):

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
.venv/bin/python scripts/reproduce_paper_from_logs.py
```

The dependency installation may need internet. Once installed, the reproduction
workflow is local/offline. Windows users can use WSL, or the equivalent
`.venv\\Scripts\\python.exe` interpreter; the recorded environment was Linux.
Do not move individual log folders out of the extracted directory structure.

Expected final message:
`COMPLETE: stored-log analysis and paper figures/tables regenerated. No simulations executed.`

Numerical comparisons must report MATCH / zero mismatches. The script stops on
errors; full per-step logs and status are in `output/paper_reproduction/`.
The original-machine full replay took about four minutes; allow longer on
other machines. PDFs may differ in metadata/font rendering; compare numerical
outputs rather than expecting identical PDF bytes.

## Compile the full paper (optional)

The supplied PDF can be read without LaTeX. To rebuild it, install a LaTeX
distribution including pdfLaTeX and the packages used by the supplied preamble.
From `twin-attack-rpl/`, after regenerating figures if desired:

```bash
TEXINPUTS=tex: pdflatex -interaction=nonstopmode -halt-on-error manuscript_full.tex
TEXINPUTS=tex: pdflatex -interaction=nonstopmode -halt-on-error manuscript_full.tex
```

The output is `twin-attack-rpl/manuscript_full.pdf`. The copy under `01_Paper/`
is the packaged reading copy and is not automatically overwritten.

## Research scope

The main defense evaluation is at 30 nodes. Failed 500/1000-node controls and
later diagnostic attempts are retained and reported. No successful bidirectional
500/1000-node defense evaluation is claimed. The conditional 114-run attack
matrix was not executed. This package supports review of the reported findings;
it is not an assertion of journal acceptance or successful large-scale deployment.

## Optional fresh simulations

Fresh simulations are a separate, much longer task. See project documentation.
Native build outputs are environment-specific; no installed Python environment,
Docker image, JDK, TeX distribution or hardware toolchain is bundled. The
`04_Upstream_Source/` archives preserve the pinned Contiki/Cooja tracked sources,
commit/submodule identifiers and the local Contiki patch. External submodule
contents and build dependencies may still need installation for fresh builds.
None of these upstream archives are needed for saved-log reproduction.

## Integrity

`PACKAGE_MANIFEST.sha256` lists every packaged payload file (excluding itself).
On Linux/macOS, from this package's top directory:

```bash
sha256sum -c PACKAGE_MANIFEST.sha256
```

The ZIP also has an external `.sha256` file. Preserve the original logs; derived
analysis/figure files can be regenerated. Local caches, `.git` histories, virtual
environments and duplicate replay working directories were omitted.
'''


def digest(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
    return h.hexdigest()


def main():
    if DEST.exists():raise SystemExit(f'Archive already exists: {DEST}')
    selected=[]
    for current,dirs,files in os.walk(ROOT):
        here=Path(current);rel=here.relative_to(ROOT)
        dirs[:]=[d for d in dirs if d not in {'.git','.venv','__pycache__'} and
            (rel!=Path('.') or d in DIRS) and str(rel/d) not in SKIP]
        for name in files:
            p=here/name
            if rel==Path('.') and name not in FILES:continue
            if p.suffix in {'.pyc','.aux','.out','.synctex'}:continue
            if p.is_file():selected.append((f'twin-attack-rpl/{p.relative_to(ROOT).as_posix()}',p))
    selected += [('01_Paper/AEF-RPL_Full_Paper.pdf',ROOT/'manuscript_full.pdf'),
        ('02_Submitted_Intro_LR/Submitted_Manuscript.pdf',ROOT/'full_paper/submitted/submitted_manuscript.pdf'),
        ('02_Submitted_Intro_LR/Submitted_Manuscript.tex',ROOT/'full_paper/submitted/submitted_source.tex'),
        ('SUPERVISOR_README.md',ROOT/'docs/SUPERVISOR_README.md'),
        ('03_Proposal/Research_Proposal.pdf',ROOT.parent/'research_proposal.pdf')]
    with tempfile.TemporaryDirectory(prefix='aef-upstream-') as tmp:
        tmp=Path(tmp);contiki=ROOT.parent/'contiki-ng-work/contiki-ng'
        for label,repo in [('contiki-ng',contiki),('cooja',contiki/'tools/cooja')]:
            target=tmp/(label+'-pinned-source.tar.gz')
            subprocess.run(['git','-C',str(repo),'archive','--format=tar.gz','-o',str(target),'HEAD'],check=True)
            selected.append(('04_Upstream_Source/'+target.name,target))
        info={'contiki_commit':subprocess.check_output(['git','-C',str(contiki),'rev-parse','HEAD'],text=True).strip(),
            'cooja_commit':subprocess.check_output(['git','-C',str(contiki/'tools/cooja'),'rev-parse','HEAD'],text=True).strip(),
            'submodules':subprocess.check_output(['git','-C',str(contiki),'submodule','status'],text=True)}
        p=tmp/'versions.json';p.write_text(json.dumps(info,indent=2));selected.append(('04_Upstream_Source/versions.json',p))
        p=tmp/'local-contiki.patch';p.write_bytes(subprocess.check_output(['git','-C',str(contiki),'diff','HEAD']));selected.append(('04_Upstream_Source/local-contiki.patch',p))
        manifest=[]
        with zipfile.ZipFile(DEST,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=3,allowZip64=True) as z:
            for index,(name,p) in enumerate(sorted(selected),1):
                manifest.append(f'{digest(p)}  {name}')
                method=zipfile.ZIP_STORED if p.name.endswith(('.gz','.png','.zip')) else zipfile.ZIP_DEFLATED
                z.write(p,NAME+'/'+name,compress_type=method)
                if index%5000==0:print(f'Packed {index}/{len(selected)} files',flush=True)
            text=GUIDE.encode();z.writestr(NAME+'/START_HERE.md',text)
            manifest.append(f'{hashlib.sha256(text).hexdigest()}  START_HERE.md')
            z.writestr(NAME+'/PACKAGE_MANIFEST.sha256','\n'.join(manifest)+'\n')
    sha=digest(DEST)
    DEST.with_suffix('.zip.sha256').write_text(f'{sha}  {DEST.name}\n')
    print(json.dumps(dict(zip=str(DEST),bytes=DEST.stat().st_size,files=len(manifest),sha256=sha),indent=2),flush=True)

if __name__=='__main__':main()
