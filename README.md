# DHBW-template
## Description
This is a template usable for DHBW students.
It contains everything you need to get started writing your T1000, T2000 or T3000, Bachelor's or Master’s thesis.

Feel free to [open an issue](https://github.com/TobiasGoetz/dhbw-template/issues/new/choose) or [contact me](mailto:contact@tobiasgoetz.com) if you have any questions, suggestions or improvements.

## Usage
### :clipboard: Prerequisites
- LaTeX distribution (e.g. [MikTeX](https://miktex.org/))
- [Latexmk](https://mg.readthedocs.io/latexmk.html)

### :gear: Configuration
- :gear: **Edit `config/config.tex`**: author, title, dates, language, and toggles for which sections to include (authorship, abstract, acronyms, lists, appendix, bibliography). Comment out optional cover fields (company, campus, supervisor, reviewer, focus) to hide them.
- :framed_picture: **Put images** in the `images/` folder (e.g. `images/dhbw`, `images/company`), or change `\myuniversitylogo` / `\mycompanylogo` in the config.
- :writing_hand: **Write your chapters** in `content/` as `00chapter.tex`, `01chapter.tex`, … (two-digit number + `chapter`). They are included automatically.
- :books: **Add your bibliography** to `bibliography/bibliography.bib`.

### :hammer: Build
To build the document, run the following command in the root directory of the project:
```bash
latexmk
```

Build output is written to `out/` (PDF: `out/main.pdf`).

### :package: Releasing
Releases are built and published automatically via GitHub Actions when you push a version tag.

1. **Create and push a version tag** (e.g. `v1.0.0`):
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```

2. **The workflow runs** on any tag matching `v*` (e.g. `v1.0.0`, `v2.1.3`).

3. **In the workflow** (runs in a [TeX Live](https://hub.docker.com/r/texlive/texlive) container):
   - The repo is checked out.
   - `latexmk` builds the PDF into `out/main.pdf`.
   - [softprops/action-gh-release](https://github.com/softprops/action-gh-release) creates a GitHub Release for that tag, generates release notes from commits, and attaches the PDF as an asset.

4. **Result:** On the repo’s **Releases** page you get a release (e.g. `v1.0.0`) with auto-generated notes and the PDF available for download.

You don’t need to create the release in the GitHub UI first—push the tag and the action builds the PDF and publishes the release.
