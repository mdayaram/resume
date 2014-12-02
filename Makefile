TEX=xelatex
TEX_OPTS=-halt-on-error
BTEX=bibtex
BTEX_OPTS=
OUTDIR=./out

$(OUTDIR)/%.aux: *.xtx *.cls
	rm -rf $(OUTDIR)
	mkdir $(OUTDIR)
	$(TEX) $(TEX_OPTS) -output-directory=$(OUTDIR) *.xtx

$(OUTDIR)/%.bbl: *.bib $(OUTDIR)/*.aux
	$(BTEX) $(BTEX_OPTS) $(OUTDIR)/*.aux

pdf: $(OUTDIR)/*.bbl *.xtx
	$(TEX) $(TEX_OPTS) -output-directory=$(OUTDIR) *.xtx

.PHONY: clean open

clean:
	rm -rf $(OUTDIR)

open:
	open $(OUTDIR)/*.pdf

render: pdf open
