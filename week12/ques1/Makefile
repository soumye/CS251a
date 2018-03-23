.PHONY: clean

all: graph1.pdf graph2.pdf main.bbl main.pdf 

graph1.pdf: graph1.gnu graph1.csv
	gnuplot graph1.gnu

graph2.pdf: graph2.gnu graph2.csv
	gnuplot graph2.gnu

main.bbl: citations.bib
	pdflatex main.tex 
	bibtex main 
	pdflatex main.tex 
	pdflatex main.tex 

main.pdf: body.tex main.tex result.tex tables.tex graph1.pdf graph2.pdf
	pdflatex main.tex 
	pdflatex main.tex

clean:
	\rm *.log *.blg *.toc *.aux