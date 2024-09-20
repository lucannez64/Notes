#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "CM 1",
  subtitle: "20/09/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Correspondance des vues

- Alignement 
  - des vues 
  - des arêtes
  - des sommets
- Correspondance des dimensions

On va tracer des droites de "pivot" (45°) pour retrouver les vues

== Exercice

#table(
  columns: (auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [Pièce], [VF], [VG], [VD],
  ),
  [A], $11$, $7$,$3$,
  [B] , $5$, $14$, $8$,
  [C] , [] , [], [], 
  [D], $15$, [], [],
  [E],$1$, $4$, $9$,
)

= Vues partielles

La vue n'est pas représentée dans son intégralité.

== Vue interrompue

Vue partielle pour laquelle la zone non représentée s'étend sur une zone intermédiaire ( s'arrête avant l'extrémité de la vue )

== Demi-vue et quart de vue

Valable uniquement si la pla pièc eprésente des symétries planaires

== Vue de détaille

Vue secondaire représentée en échelle agrandie

= Vues auxiliaires
Positionnement libre de la vue par rapport à sa vue de référence

Améliore la lisibilité
