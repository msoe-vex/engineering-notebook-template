@echo off
echo Building PDF...
xelatex -interaction=nonstopmode main.tex
echo.
echo Done. Output: main.pdf