##############################################################################
#Makefile für Latex
#@author diehlpk, pfluegdk
#@date 2010, 2013-2014
#############################################################################
SRC=ausarbeitung
BIN=Ausarbeitung_Vorlage

all:
	pdflatex $(SRC).tex
	bibtex $(SRC)
	pdflatex $(SRC).tex 
	pdflatex $(SRC).tex

.PHONY	: all show clean ps pdf showps veryclean

clean:
	rm -rf *.dvi *.pdf

veryclean: clean
	rm -f *.log *.aux *.dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind *.ps  *~ *.out *.tpt

show:
	@evince $(BIN).pdf &
	@open $(BIN).pdf

final: 	
	pdflatex $(SRC).tex 
	bibtex $(SRC)
	pdflatex $(SRC).tex 
	pdflatex $(SRC).tex 
	mv $(SRC).pdf $(BIN).pdf

