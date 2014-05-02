TARGET=thesis-ex

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
#	pdflatex  -tletter -G0 ${TARGET}.tex

#	latex ${TARGET}.tex
#	dvips  -t letter -G0 -o ${TARGET}.ps ${TARGET}.dvi
#	ps2pdf ${TARGET}.ps

bib: 		
	echo "Running bibtex..."
	bibtex ${TARGET}
	echo "Rerunning latex...."
#	pdflatex -tletter -G0 ${TARGET}.tex
	pdflatex  -G0 ${TARGET}.tex
#	latex ${TARGET}.tex
#	bibtex ${TARGET}


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
	rm -f ${TARGET}.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *~


