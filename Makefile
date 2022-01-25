LATEX :=/usr/bin/pdflatex
GS := /usr/bin/gs

INPUTFILE := resume.tex
OUTPUTFILE := resume.pdf
COMPRESSED := compressed

GSFLAGS := -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false

all:
	@echo "Assembling PDF as $(OUTPUTFILE)"
	@$(LATEX) $(INPUTFILE)
	@$(GS) $(GSFLAGS) -sOutputFile=$(COMPRESSED)-$(OUTPUTFILE) $(OUTPUTFILE)


clean:
	git clean -nX
