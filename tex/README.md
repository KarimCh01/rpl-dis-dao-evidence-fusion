# IEEEtran class used for the manuscript PDF

`IEEEtran.cls` is the IEEE journal LaTeX class, version 1.8b (2015-08-26), obtained from the CTAN IEEEtran distribution. Its header identifies the LaTeX Project Public License (LPPL). It is included here because IEEEtran is not installed in the local TeX distribution and is needed to compile the manuscript in journal mode.

From `twin-attack-rpl/`, compile with:

```bash
TEXINPUTS=tex: pdflatex manuscript.tex
TEXINPUTS=tex: pdflatex manuscript.tex
```

The IEEE Internet of Things Journal's author guidelines require IEEE's double-column manuscript style. The final submission may use the journal's then-current template selector output; the included class provides the IEEEtran journal layout for this draft.
