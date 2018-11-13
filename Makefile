all:disco.pdf

disco.pdf: *.tex *.bib
	@pdflatex -shell-escape disco.tex
	@biber disco.bcf
	@pdflatex -shell-escape disco.tex
	@pdflatex -shell-escape disco.tex

clean:
	rm -f *.bcf *.pyg *.xml *~ *.aux *.bbl *.blg *.log *.out
	rm -r _minted-disco
