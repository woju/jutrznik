LILYOPTS = \
	-dbackend=eps \
	-ddelete-intermediate-files \
	-dwarning-as-error \
	-dpoint-and-click=\\\#f \

all: $(patsubst %.ly,%.pdf,$(wildcard *.ly))

%.pdf: %.ly settings.ily
	lilypond $(LILYOPTS) $<
clean:
	$(RM) *.pdf *.eps *-systems.count *-systems.tex *-systems.texi

.PHONY: all clean
