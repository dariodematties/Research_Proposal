TEX_FILES=$(wildcard *.tex)
BIB_FILES=$(wildcard *.bib)
#FIGS=$(wildcard fig/*.png)

all: Research_Project.pdf

Research_Project.pdf: $(TEX_FILES) $(BIB_FILES)
	pdflatex -halt-on-error Research_Project
	bibtex Research_Project
	pdflatex -halt-on-error Research_Project
	pdflatex -halt-on-error Research_Project

.PHONY: clean
clean:
	rm -f Research_Project.pdf
	rm -f Research_Project.log
	rm -f Research_Project.bbl
	rm -f Research_Project.aux
	rm -f Research_Project.out
	rm -f Research_Project.glo
	rm -f Research_Project.blg
	rm -f Research_Project.xdy
	rm -f comment.cut

