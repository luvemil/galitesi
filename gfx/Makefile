%.pdf: %.tikz
	pdflatex $^

FILE_CLEAN = *.aux *.bbl *.blg *.brf \
			*.idx *.ilg *.ind *.log

PICTURES = $(wildcard *.png *.jpg) statistical_circle.pdf \
						statistical_circle_2.pdf \
						statistical_circle_3.pdf \
						statistical_circle_comparison.pdf \
						three_clusters_small.pdf
						
all: $(PICTURES)

clean:
	rm -f $(FILE_CLEAN)
