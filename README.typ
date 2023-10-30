#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "README",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Notes
<notes>
This directory contains my class notes and materials.

== Contents
<contents>
- Course notes for various subjects like Math, Physics, Computer
  Science, etc. All notes are in Markdown format.

- PDF versions of the notes generated from Markdown using pandoc.

- Some source code files.

- Diagrams and images referenced in notes.

== Scripts
<scripts>
- `update.ps1` - Automatically updates and compiles the Markdown files
  to PDF on changes.

- `notes_converter` - Compiles Markdown files to PDF and opens the
  Markdown in Neovim and PDF in parallel. (located on the separate
  repository)
  #link("https://github.com/lucannez64/notes_converter")[Link]

- `pdf.ps1` - Opens the compiled PDF.

- `edit.ps1` - Opens the Markdown file in Neovim for editing.

- `mpf.ps1` - Shortcut to start notes in Neovim and PDF viewer
  side-by-side.

This allows me to efficiently take notes in Markdown, automatically
generate PDFs, and reference both formats.
