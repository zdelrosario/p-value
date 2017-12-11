SHELL := /bin/bash
filename=handout

pdf: clean
	pdflatex ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}

quick:
	pdflatex ${filename}

clean:
	rm -f ${filename}.{log,aux,out,bbl,blg,fls,ilg,nlo,nls}
	rm -f ${filename}.{fdb_latexmk,stderr.log,stdout.log,tex.swp}
