#!/bin/bash

# Define the output file names
HTML='cecs-378-fa24-01-syllabus-5505.html'
PDF='CECS 378_01_FA24_Giacalone_Anthony.pdf'

# Generate output files
pandoc README.md -o $HTML --from markdown
pandoc README.md --template eisvogel -V linkcolor=blue -V header-includes:'\usepackage[export]{adjustbox} \let\includegraphicsbak\includegraphics \renewcommand*{\includegraphics}[2][]{\includegraphicsbak[frame,#1]{#2}}' -o $PDF
