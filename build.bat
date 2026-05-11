@echo off
echo Building PDF...
latexmk -pdfxe -interaction=nonstopmode main.tex
echo.
echo Done. Output: main.pdf