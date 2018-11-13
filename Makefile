all:disco.pdf

disco.pdf: *.tex *.bib
	@pdflatex -shell-escape disco.tex

clean:
	rm -f *.bcf *.pyg *.xml *~
