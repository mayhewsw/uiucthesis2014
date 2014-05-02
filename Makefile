TARGET=thesis

PACKAGE=uiucthesis2014

all: 	withbib

nonbib:	start gen

withbib: start bib gen

start:
	echo "Running latex (start)..."
	pdflatex ${TARGET}.tex
	latex ${TARGET}.tex

gen:
	echo "Running latex (gen)..."
	pdflatex -G0 ${TARGET}.tex

bib: 		
	echo "Running bibtex..."
	bibtex ${TARGET}
	echo "Rerunning latex...."
	pdflatex  -G0 ${TARGET}.tex


files:
	latex ${PACKAGE}.ins

doc:
	pdflatex ${PACKAGE}.dtx
	pdflatex ${PACKAGE}.dtx

example: files
	pdflatex thesis-ex
	bibtex thesis-ex
	pdflatex thesis-ex
	pdflatex thesis-ex

git: files doc example

# Clean
clean:
	rm -f ${TARGET}.dvi
	rm -f ${TARGET}.pdf
	rm -f ${TARGET}.ps
	rm -f ${TARGET}.aux
	rm -f ${TARGET}.blg
	rm -f ${TARGET}.bbl
	rm -f ${TARGET}.out
	rm -f ${TARGET}.lof
	rm -f ${TARGET}.lot
	rm -f ${TARGET}.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *~

cleanall: clean
	rm -f ${PACKAGE}.sty
	rm -f ${PACKAGE}.cls
	rm -f ${PACKAGE}.dvi
	rm -f ${PACKAGE}.pdf
	rm -f thesis-ex.*


