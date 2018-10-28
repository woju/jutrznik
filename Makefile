DEPS = t-breviarium.tex breviarium.lua
DEPS_LIB = $(wildcard lib/*.tex)

all: jutrznik.pdf
.PHONY: all

%.pdf: %.tex lilypond $(DEPS) $(DEPS_LIB)
	context --batch $<

lilypond:
	$(MAKE) -C lilypond
.PHONY: lilypond

clean:
	$(RM) *.log *.tuc *.pdf
.PHONY: clean
