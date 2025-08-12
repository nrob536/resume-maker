# LaTeX Resume and Cover Letter Generator

A system for programmatically generating professional resumes and cover letters using LaTeX.

## Prerequisites

Before you begin, ensure you have the following installed:

1. **LaTeX Distribution:**
   - For Ubuntu/Debian:
     ```bash
     sudo apt-get update
     sudo apt-get install texlive-full
     ```
   - For macOS:
     ```bash
     brew install --cask mactex
     ```
   - For Windows:
     - Download and install [MiKTeX](https://miktex.org/download)

2. **Additional Tools:**
   - `pandoc` (for converting to plain text)
     ```bash
     # Ubuntu/Debian
     sudo apt-get install pandoc

     # macOS
     brew install pandoc

     # Windows (using chocolatey)
     choco install pandoc
     ```

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/nrob536/latex-resume-generator.git
   cd latex-resume-generator
   ```

2. Create your first resume:
   - Copy the template:
     ```bash
     cp templates/resume/resume.tex content/resume/my-resume.tex
     ```
   - Edit `content/resume/my-resume.tex` with your information
   - Build the PDF:
     ```bash
     make resume NAME=my-resume
     ```
   - The output will be in `output/pdf/my-resume.pdf` and `output/text/my-resume.txt`

3. Create a cover letter:
   - Copy the template:
     ```bash
     cp templates/cover-letter/cover-letter.tex content/cover-letter/company-name.tex
     ```
   - Edit `content/cover-letter/company-name.tex`
   - Build the PDF:
     ```bash
     make letter NAME=company-name
     ```

## Creating New Content

### Resumes

1. Create a new resume file in `content/resume/`:
   ```bash
   cp templates/resume/resume.tex content/resume/new-resume.tex
   ```

2. Edit the following sections in your new resume:
   - Personal Information
   - Education
   - Experience
   - Skills

3. Build your resume:
   ```bash
   make resume NAME=new-resume
   ```

### Cover Letters

1. Create a new cover letter:
   ```bash
   cp templates/cover-letter/cover-letter.tex content/cover-letter/new-letter.tex
   ```

2. Edit the following in your new cover letter:
   - Company Information
   - Recipient Details
   - Letter Content

3. Build your cover letter:
   ```bash
   make letter NAME=new-letter
   ```

## Makefile Commands

- `make resume NAME=filename`: Build a resume (PDF and text)
- `make letter NAME=filename`: Build a cover letter (PDF and text)
- `make clean`: Remove all generated files
- `make all`: Build all documents in content directories

## Customization

### Modifying Templates

- Resume template: `templates/resume/resume.cls`
- Cover letter template: `templates/cover-letter/cover-letter.cls`

### Adding New Sections

1. Create a new .tex file in `content/resume/` or `content/cover-letter/`
2. Import it into your main document using `\input{filename}`

## Troubleshooting

Common issues and solutions:

1. **PDF not generating:**
   - Check LaTeX installation
   - Verify syntax in .tex files
   - Run `make clean` and try again

2. **Font errors:**
   - Install additional LaTeX fonts:
     ```bash
     sudo apt-get install texlive-fonts-recommended texlive-fonts-extra
     ```

3. **Missing packages:**
   - Install required packages through your LaTeX distribution
   - For MiKTeX, packages will be installed automatically
   - For TexLive:
     ```bash
     tlmgr install package-name
     ```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

If you encounter any issues or need help, please:
1. Check the troubleshooting section
2. Open an issue in the repository
3. Provide detailed information about your problem

Last updated: 2025-08-12