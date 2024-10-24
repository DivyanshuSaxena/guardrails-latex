FILE = main

all: 
	rm -f $(FILE).pdf *.aux *.bbl *.blg *.log *.dvi *.ps *.out *.thm
	pdflatex -halt-on-error $(FILE)	
	bibtex $(FILE)
	pdflatex -halt-on-error $(FILE)
	pdflatex -halt-on-error $(FILE)

rerun:
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

clean:
	rm -f *.pdf *.aux *.bbl *.blg *.log *.dvi *.ps *.out *.thm texfiles/*.log
