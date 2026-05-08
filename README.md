# VEX Engineering Notebook

This folder contains the LaTeX source for the notebook PDF and the generated preview artifacts used by the web editor.

## Prerequisites

Install these tools before running the notebook build scripts:

1. **[MiKTeX](https://miktex.org/download)** - the LaTeX distribution used to compile the PDF
2. **[Strawberry Perl](https://strawberryperl.com/)** - required by the build automation on Windows.
3. **[LaTeXML](https://dlmf.nist.gov/LaTeXML/):** used to generate the final rendered PDF.
4. **[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)** - optional VS Code extension if you want editor-side PDF builds.

Run this command in the terminal to install LaTeXML via CPAN:

```shell
cpan LaTeXML
```

## Build the Notebook

The main entry point is `main.tex`.

- Build the PDF from VS Code with the LaTeX Workshop play button, or press `Ctrl+Alt+B`.
- The compiled PDF is written next to the source as `main.pdf`.

Use the provided scripts to generate the final rendered PDF:

- Windows: `build.bat`
- Linux/macOS: `./build.sh`

## Notes

- Keep notebook content, generated LaTeX, and preview output in sync when making notebook changes.
- If build tools are installed after the terminal is already open, restart the terminal or VS Code so the PATH updates are picked up.
- When updating notebook structure or styles, verify both the PDF and the HTML preview.
