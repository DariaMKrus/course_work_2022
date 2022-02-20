all:
	# pdflatex pract.tex
	# biber pract
	pdflatex pract.tex
	pdflatex pract.tex

overfull:
	@pdflatex pract.tex | grep -va Underfull | grep -a . | grep -aC 12 Overfull
	@pdflatex pract.tex | grep -c Overfull

clean:
	rm -f *.aux *.log *.out *.toc *.pdf *.bbl *.bcf *.blg *.xml *.nav *.snm
	rm -f images/*.pdf
	rm -f tp-output.*
