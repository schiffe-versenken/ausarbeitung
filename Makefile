##############################################################################
#Makefile für Latex
#@author diehlpk, pfluegdk
#@date 2010, 2013-2014
#############################################################################
SRC=ausarbeitung
BIN=Ausarbeitung_Vorlage
PDFLATEX = pdflatex -shell-escape

all:
	$(PDFLATEX) $(SRC).tex
	bibtex $(SRC)
	$(PDFLATEX) $(SRC).tex 
	$(PDFLATEX) $(SRC).tex

.PHONY	: all show clean veryclean

clean:
	rm -rf *.dvi *.pdf

veryclean: clean
	rm -f *.log *.aux *.dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind *.ps  *~ *.out *.tpt

show: final
	@evince $(BIN).pdf &

final: all
	mv $(SRC).pdf $(BIN).pdf

