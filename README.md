## Requirements

- TeX Live 2023 or later
- lualatex
- pandoc 3.1.9 or later

## Direct compile

```bash
pandoc --include-in-header=header.tex --pdf-engine=lualatex -t beamer slide.md -o slide.pdf
```

[Here](slide.pdf) is the output

### With speaker notes

```bash
pandoc --include-in-header=header.tex --include-in-header=note.tex --pdf-engine=lualatex -t beamer slide.md -o slide_note.pdf
```

[Here](slide_note.pdf) is the output

## Compile with TeX output

```bash
pandoc --include-in-header <(echo '\usepackage{luatexja}') --pdf-engine=lualatex -t beamer slide.md -o slide.tex
latexmk -lualatex -pdf -e '$pdf_mode=4' -shell-escape slide.tex
```

Or you can directly edit the output TeX file with any editor you like!
