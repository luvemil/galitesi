PRINCIPALE = ClassicThesis
PRINCIPALE_TEX = $(PRINCIPALE).tex
PRINCIPALE_PDF = $(PRINCIPALE).pdf
DEPENDS = $(wildcard *.tex FrontBackmatter/*.tex Chapters/*.tex)
BIBLIOGRAFIA = Bibliography.bib
FILE_CLEAN = *.aux *.bbl *.blg *.brf \
			 *.idx *.ilg *.ind *.log \
			 *.pdf
PICTURES = $(wildcard gfx/*.hdf5 gfx/*.xp gfx/*.png gfx/*.jpg\
		   gfx/*.py gfx/*.pgf gfx/*.R)

FILE_DISTCLEAN = $(PRINCIPALE_DVI) $(PRINCIPALE_PDF)

.PHONY: pics pdf clean

pdf: pics $(PRINCIPALE_PDF)

$(PRINCIPALE_PDF): $(PRINCIPALE_TEX) $(BIBLIOGRAFIA) $(DEPENDS) $(PICTURES)
	pdflatex $(PRINCIPALE)
	bibtex $(PRINCIPALE)
	pdflatex $(PRINCIPALE)
	pdflatex $(PRINCIPALE)

#pics: $(PICTURES)
#	make -C gfx all

clean:
	rm -f $(FILE_CLEAN)
