# VEX Engineering Notebook

This folder contains the standalone LaTeX source for the notebook PDF template used by the web editor.

## Prerequisites

To build the PDF locally or crawl template packages for the web editor (`npm run bundle:latex`), install a TeX distribution that includes **XeLaTeX**:

### Option 1: TeX Live (Recommended)

```powershell
winget install --id IslandofTeX.TeXLive -e
```

*Or download the installer from [tug.org/texlive](https://www.tug.org/texlive/windows.html).*

### Option 2: MiKTeX

```powershell
winget install --id ChristianSchenkW.MiKTeX -e
```

*Or download the installer from [miktex.org](https://miktex.org/download).*

---

## Build the Notebook PDF

The main entry point is `main.tex`.

Run this command in the terminal to compile:

```shell
xelatex -interaction=nonstopmode main.tex
```

Or on Windows, run `build.bat`:

```shell
build.bat
```

> [!NOTE]
> If build tools were installed while your terminal was open, restart the terminal or VS Code so the updated `PATH` environment variable is picked up.

---

## Customization

You can customize the notebook template by modifying the LaTeX source files:

* `main.tex`: Document entry point, title block, and entry includes.
* `notebook.sty`: Core styling, custom colors, geometry, headers/footers, and macro definitions.
