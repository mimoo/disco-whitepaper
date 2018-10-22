TEXS=main.tex
PDFS=${TEXS:.tex=.pdf}
BIB=references.bib

all:${PDFS}

${PDFS}: ${BIB} 

%.pdf: %.tex *.tex
	@pdflatex -shell-escape $< 
	@-bibtex ${<:.tex=}
	@pdflatex -shell-escape $< 
	@pdflatex -shell-escape $<

clean:
	rm -f ${TEXS:.tex=.aux} ${TEXS:.tex=.log} ${TEXS:.tex=.blg} ${TEXS:.tex=.bbl} ${PDFS} ${TEXS:.tex=.out} texput.log
