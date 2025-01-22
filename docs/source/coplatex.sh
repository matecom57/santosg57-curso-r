#!/bin/bash

rm *.aux
rm *.log
rm *.nav
rm *.out
rm *.snm
rm *.toc

pdflatex $1".tex"

open $1".pdf"


