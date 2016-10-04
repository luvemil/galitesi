%.pdf: %.tikz
	pdflatex $^

FILE_CLEAN = *.aux *.bbl *.blg *.brf \
			*.idx *.ilg *.ind *.log

TIKZ = $(wildcard *.tikz)

PDFS = $(TIKZ:.tikz=.pdf)

PICTURES = $(wildcard *.png *.jpg) $(PDFS)

all: $(PICTURES)

clean:
	rm -f $(FILE_CLEAN)
