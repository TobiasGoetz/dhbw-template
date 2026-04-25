# DHBW-template

LaTeX template for DHBW papers and theses (T1000/T2000/T3000, Bachelor, Master).

## Quickstart
- Edit `config/config.tex` (title, author, dates, language, included sections).
- Put your logos/images in `images/` (keep `dhbw` and `company` filenames if you replace placeholders).
- Write chapters in `content/` as `00chapter.tex`, `01chapter.tex`, ... (auto-included).
- Add references to `bibliography/bibliography.bib`.
- Build with:

```bash
latexmk
```

Build output is written to `out/` (PDF: `out/main.pdf`).

## Releases
Pushing a tag like `v1.0.0` triggers GitHub Actions to build and publish `out/main.pdf` as a release asset.