# Full paper source

`../manuscript_full.tex` is the full paper in the IEEE two-column journal format
(IEEE Internet of Things Journal). `../manuscript.tex` is the separate
Introduction and literature review course submission and is not built from
these files.

## Layout

- `preamble.tex`: document class, packages, title and author.
- `sections/`: abstract, introduction, related work, research design (objectives,
  hypotheses, conceptual framework), proposed approach, mathematical analysis,
  experimental methodology, results, discussion with limitations and conclusion,
  references (46 entries, DOIs checked against Crossref).
- `generated/`: tables and figures produced from the stored results by
  `scripts/build_full_paper_assets.py`, `analysis/test_hypotheses.py` and
  `analysis/check_manuscript_math.py`. Do not edit these by hand.
- `figures/`: the literature map (`gen_lrmap.py` renders `lr_map.png` with headless Chrome).

## Build

From the project root:

```bash
make reproduce-paper            # optional: regenerate generated/ from the logs
TEXINPUTS=tex: pdflatex manuscript_full.tex
TEXINPUTS=tex: pdflatex manuscript_full.tex
```

The source also uses three figures from
`output/experiments/journal_extension/figures/` and the class file `tex/IEEEtran.cls`.
