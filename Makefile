PYTHON ?= .venv/bin/python

.PHONY: reproduce reproduce-paper manifest theory

reproduce:
	$(PYTHON) analysis/reproduce_from_logs.py

reproduce-paper:
	$(PYTHON) scripts/reproduce_paper_from_logs.py

manifest:
	$(PYTHON) analysis/reproduce_from_logs.py --write-manifest

theory:
	$(PYTHON) analysis/check_theory.py
