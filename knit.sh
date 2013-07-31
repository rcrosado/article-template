# This script runs pandoc on the manuscript, tables and figures in the working directory to produce a pdf, and a docx, for review.
# pdf isn't working at the moment, have to fi it in my spare time - 2013-07-30 Ricardo

# convert markdown manuscript to odt format (seems to cause fewer problems for styles)
pandoc -H options.sty --bibliography=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/library.bib --csl=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/journal-of-water-and-health.csl --reference-odt=reference.odt manuscript.md -o manuscript.odt
# convert markdown tables to odt format
pandoc -H options.sty --bibliography=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/library.bib --csl=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/journal-of-water-and-health.csl --reference-odt=reference-tables.odt tables.md -o tables.odt
# convert markdown figures to odt format
pandoc -H options.sty --bibliography=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/library.bib --csl=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/journal-of-water-and-health.csl --reference-odt=reference-figures.odt figures.md -o figures.odt

# convert markdown to docx format (needs some tweaking of tables, page format and margins, commentig out and converting manually to docx in LibreOffice - 2013-07-30 Ricardo)
#pandoc -H options.sty --bibliography=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/library.bib --csl=/home/ricardo/Dropbox/NVH/PhD/publications/bibtex/journal-of-water-and-health.csl --reference-docx=/home/ricardo/Dropbox/NVH/PhD/publications/driftstans/reference.docx driftstans.md -o driftstans.docx
