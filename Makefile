project = tongji-thesis

all: paper clean

paper:
	quarto render --output-dir outputs

%:
	quarto render --output-dir outputs --to $*

# make release-<version>
release-%:
	mkdir -p releases/$*
	quarto render --output-dir releases/$*
	cp $(project).tex releases/$*/$(project).tex
	cp tongjithesis.cfg tongjithesis.cls tongjiutils.sty releases/$*/
	cp tongji-whole-logo.pdf releases/$*/
	cp bibliography.bib releases/$*/
	echo $* > releases/VERSION

# make diff previous=<previous release> current=<current release>
diff:
	cd releases/$(current) && latexdiff --graphics-markup=none --math-markup=whole ../$(previous)/$(project).tex $(project).tex > $(project)-diff-$(previous)-$(current).tex
	cd releases/$(current) && xelatex $(project)-diff-$(previous)-$(current).tex
	cd releases/$(current) && biber   $(project)-diff-$(previous)-$(current).aux || true
	cd releases/$(current) && xelatex $(project)-diff-$(previous)-$(current).tex
	cd releases/$(current) && xelatex $(project)-diff-$(previous)-$(current).tex

clean:
	git clean -Xdf
