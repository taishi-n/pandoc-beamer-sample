#!/usr/bin/sh
pandoc --include-in-header=header.tex --pdf-engine=lualatex -t beamer slide.md -o slide.pdf
pandoc --include-in-header=header.tex --include-in-header=note.tex --pdf-engine=lualatex -t beamer slide.md -o slide_note.pdf
