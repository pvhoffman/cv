PDF_VIEWER=evince
PDF_OUTPUT=paul-hoffman.pdf
TEX_INPUT=paul-hoffman.tex
TEX_GEN=lualatex 
#pdflatex

pdf: $(TEX_INPUT)
	$(TEX_GEN) $(TEX_INPUT) $(PDF_OUTPUT)

view: pdf
	$(PDF_VIEWER) $(PDF_OUTPUT)

all: pdf view

clean:
	-rm paul-hoffman.out
	-rm paul-hoffman.pdf
	-rm paul-hoffman.log
	-rm paul-hoffman.aux


