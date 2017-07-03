
PUBLISH=slides/

# all: compile bibliography recompile open
all: compile

clean:
	rm -rf $(PUBLISH)*.log $(PUBLISH)*.toc $(PUBLISH)*.toc $(PUBLISH)*.out
	rm -rf $(PUBLISH)*.nav $(PUBLISH)*.aux $(PUBLISH)*.snm

compile:
	pdflatex -output-directory $(PUBLISH) ep2017.tex

#bibliography:
#	bibtex publish/gutierrez_cv

open:
	evince $(PUBLISH)ep2017.pdf &
