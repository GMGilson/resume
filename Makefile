LATEX :=/usr/bin/pdflatex

all:
	$(LATEX) resume.tex

clean:
	git clean -nX
