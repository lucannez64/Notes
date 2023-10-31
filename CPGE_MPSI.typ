#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "CPGE MPSI",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

Louis Le Grand 1 Pierre De Fermat 2 Stanislas 3 Saint-Louis 4 Parc 5
Montaigne 6 chateaubriand 7 Fénelon 8 Chaptal 9 Camille Guérin 10

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Nom], [Numéro],
  [Louis Le Grand],
  [1],
  [Pierre De Fermat],
  [2],
  [Stanislas],
  [3],
  [Saint-Louis],
  [4],
  [Parc],
  [5],
  [Montaigne],
  [6],
  [François-René Chateaubriand],
  [7],
  [Fénelon],
  [8],
  [Chaptal],
  [9],
  [Camille Guérin],
  [10],
)
]
