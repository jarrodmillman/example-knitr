FIGDIR   = fig
BUILDDIR = _build
RSCRIPT := cd $(BUILDDIR) && Rscript -e
TEX2PDF := cd $(BUILDDIR) && pdflatex -shell-escape
BIBTEX  := cd $(BUILDDIR) && BSTINPUTS="..:" bibtex

all: clean example

clean:
	rm -rf $(BUILDDIR)/* *.pdf *.png

$(BUILDDIR):
	mkdir -p $(@)

example: example.tex $(BUILDDIR)
	$(RSCRIPT) "library(knitr); knit('../$(<F)', '$(@).tex')"
	cp example.bib $(BUILDDIR)
	($(TEX2PDF) $(@))
	($(BIBTEX) $(@))
	($(TEX2PDF) $(@))
	($(TEX2PDF) $(@))
	cp $(BUILDDIR)/$(@).pdf $(@).pdf
