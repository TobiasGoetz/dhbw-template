# DHBW-template
## Description
This is a template usable for DHBW students. It contains everything you need to get started writing your thesis,
be it T1000, T2000 or T3000, Bachelor or Master.

Feel free to open an issue or contact me if you have any questions, suggestions or improvements.

## Usage
### :clipboard: Prerequisites
- LaTeX distribution (e.g. [MikTeX](https://miktex.org/))
- [Latexmk](https://mg.readthedocs.io/latexmk.html)

### :gear: Configuration
- :gear: **Edit files in the 'config' folder** to your liking
  - 'config.tex' contains all the general settings
  - 'chapter.tex' is used to include your chapters, choose which inclusion style you prefer
- :framed_picture: **Replace images** in the 'images' folder with your own, but make sure to keep the same file names
- :writing_hand: **Write your chapters** in the 'content' folder
- :books: **Add your bibliography** to 'bibliography.bib'

### :hammer: Build
To build the document, run the following command in the root directory of the project:
```bash
latexmk
```