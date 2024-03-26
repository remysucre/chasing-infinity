# Makefile for LaTeX

# Set the LaTeX compiler
LATEX = pdflatex

# Set the name of the main LaTeX file (without the .tex extension)
MAIN_FILE = main

# Default target
all: $(MAIN_FILE).pdf

# Target to compile the LaTeX file
$(MAIN_FILE).pdf: $(MAIN_FILE).tex
	$(LATEX) $(MAIN_FILE).tex
	$(LATEX) $(MAIN_FILE).tex

# Target to clean up generated files
clean:
	rm -f $(MAIN_FILE).pdf $(MAIN_FILE).aux $(MAIN_FILE).log $(MAIN_FILE).out