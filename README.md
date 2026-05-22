# VEX Engineering Notebook

This folder contains the LaTeX source for the notebook PDF and the generated preview artifacts used by the web editor.

## Prerequisites

Install these tools before running the notebook build scripts:

1. **[MiKTeX](https://miktex.org/download)** - the LaTeX distribution used to compile the PDF
2. **[Strawberry Perl](https://strawberryperl.com/)** - required by the build automation on Windows.
3. **[LaTeXML](https://dlmf.nist.gov/LaTeXML/):** used to generate the final rendered PDF.

Run this command in the terminal to install LaTeXML via CPAN:

```shell
cpan LaTeXML
```

## Build the Notebook

The main entry point is `main.tex`.

Run this command in the terminal to build the PDF and preview output:

```shell
latexmk -pdfxe -interaction=nonstopmode main.tex
```

Or, use `build.bat` if you're on Windows and have the prerequisites installed.

## Notes

- Keep notebook content, generated LaTeX, and preview output in sync when making notebook changes.
- If build tools are installed after the terminal is already open, restart the terminal or VS Code so the PATH updates are picked up.
- When updating notebook structure or styles, verify both the PDF and the HTML preview.

## Customization

You can customize the notebook by modifying the LaTeX source files. The main structure is defined in `main.tex`, while styles and formatting are controlled by `engineering_notebook.sty`. You can also add custom LaTeX packages or commands as needed. Just make sure to keep the required commands for the JSON-to-LaTeX conversion logic. These commands are documented in `engineering_notebook.sty` and should be preserved to ensure the editor can generate the notebook correctly, but they can be modified as needed to change the visual output.
