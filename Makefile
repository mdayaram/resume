TEX=xelatex
TEX_OPTS=-halt-on-error
OUTDIR=./out

pdf: *.xtx
	$(TEX) $(TEX_OPTS) -output-directory=$(OUTDIR) *.xtx

.PHONY: clean open

clean:
	rm -rf $(OUTDIR)

open:
	open $(OUTDIR)/*.pdf

render: pdf open
