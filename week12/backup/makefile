.PHONY: clean
	
main.pdf: main.tex body.tex result.tex tables.tex citations.bib graph1.pdf graph2.pdf
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

graph2.pdf: graph2.gnu graph2.csv
	gnuplot graph2.gnu

graph1.pdf: graph1.gnu graph1.csv
	gnuplot graph1.gnu

clean:
	\rm *.log *.blg *.toc *.aux