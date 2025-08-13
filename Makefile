# Makefile for LaTeX Resume and Cover Letter Generator

# Directories
CONTENT_DIR = content
TEMPLATE_DIR = templates
OUTPUT_DIR = output
PDF_DIR = $(OUTPUT_DIR)/pdf
TEXT_DIR = $(OUTPUT_DIR)/text
RESUME_DIR = $(TEMPLATE_DIR)/resume
LETTER_DIR = $(TEMPLATE_DIR)/cover-letter

# LaTeX compiler and options
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode -output-directory=$(PDF_DIR)

# PDF to text converter
PDF2TEXT = pandoc
PDF2TEXT_FLAGS = --from=pdf --to=plain

# Default target
all: init $(PDF_DIR) $(TEXT_DIR) resumes letters

# Initialize directories
init:
	mkdir -p $(PDF_DIR) $(TEXT_DIR)

# Build a specific resume
resume:
	@if [ -z "$(NAME)" ]; then \
		echo "Please specify a NAME parameter"; \
		exit 1; \
	fi
	$(LATEX) $(LATEX_FLAGS) $(RESUME_DIR)/$(NAME).tex
	@if [ -f "$(PDF_DIR)/$(NAME).pdf" ]; then \
		$(PDF2TEXT) $(PDF2TEXT_FLAGS) $(PDF_DIR)/$(NAME).pdf > $(TEXT_DIR)/$(NAME).txt; \
	fi

# Build a specific cover letter
letter:
	@if [ -z "$(NAME)" ]; then \
		echo "Please specify a NAME parameter"; \
		exit 1; \
	fi
	$(LATEX) $(LATEX_FLAGS) $(LETTER_DIR)/$(NAME).tex
	@if [ -f "$(PDF_DIR)/$(NAME).pdf" ]; then \
		$(PDF2TEXT) $(PDF2TEXT_FLAGS) $(PDF_DIR)/$(NAME).pdf > $(TEXT_DIR)/$(NAME).txt; \
	fi

# Build all resumes
resumes:
	for file in $(RESUME_DIR)/*.tex; do \
		if [ -f "$$file" ]; then \
			$(LATEX) $(LATEX_FLAGS) $$file; \
			basename=$$(basename $$file .tex); \
			$(PDF2TEXT) $(PDF2TEXT_FLAGS) $(PDF_DIR)/$$basename.pdf > $(TEXT_DIR)/$$basename.txt; \
		fi \
	done

# Build all cover letters
letters:
	for file in $(LETTER_DIR)/*.tex; do \
		if [ -f "$$file" ]; then \
			$(LATEX) $(LATEX_FLAGS) $$file; \
			basename=$$(basename $$file .tex); \
			$(PDF2TEXT) $(PDF2TEXT_FLAGS) $(PDF_DIR)/$$basename.pdf > $(TEXT_DIR)/$$basename.txt; \
		fi \
	done

# Clean generated files
clean:
	rm -rf $(OUTPUT_DIR)/*

.PHONY: all init resume letter resumes letters clean