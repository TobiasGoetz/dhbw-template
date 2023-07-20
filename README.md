# DHBW-template
## Description
This is a template usable for DHBW students.
It contains everything you need to get started writing your T1000, T2000 or T3000, Bachelor's or Master’s thesis.

Feel free to [open an issue](https://github.com/TobiasGoetz/dhbw-template/issues/new/choose) or [contact me](mailto:dhbw-template@tobiasgoetz.com) if you have any questions, suggestions or improvements.

## Usage
### :clipboard: Prerequisites
- LaTeX distribution (e.g. [MikTeX](https://miktex.org/))
- [Latexmk](https://mg.readthedocs.io/latexmk.html)

### :gear: Configuration
- :gear: **Edit files in the `/config` folder** to your liking
  - `config.tex` contains all the general settings
  - `chapter.tex` is used to include your chapters, choose which inclusion style you prefer
- :framed_picture: **Replace images** in the `/images` folder with your own, but make sure to keep the same file names
- :writing_hand: **Write your chapters** in the `/content` folder
- :books: **Add your bibliography** to `/bibliography/bibliography.bib`

### :hammer: Build
To build the document, run the following command in the root directory of the project:
```bash
latexmk
```