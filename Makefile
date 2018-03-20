DEPS = t-breviarium.tex breviarium.lua
all: jutrznik.pdf

%.pdf: %.tex $(DEPS)
	context --batch $<

clean:
	$(RM) *.log *.tuc *.pdf

.PHONY: all clean
