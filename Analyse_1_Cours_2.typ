#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2"
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 2",
  subtitle: "13/09/2024",
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

= Nombre réels: $RR$

== Réels

=== Théorème 1
$pi$ est irrationnel.

Pour un triangle rectange de coté 1, 1, x

$ 1²+1² = x² $
$ x²=2 $

=== Théorème 2

$exists x >=0 | x² = 2 space x " est irrationnel."$

==== Preuve

Par l'absurde, supposons que $x in QQ arrow.double.l.r.long exists p in ZZ, q in ZZ^* "tq" x = p/q$
#linebreak()
On suppose que $p/q$ est irréductible
Alors $p² = 2q²$

Ainsi $2 divides p² arrow.l.r.double.long 2 divides p arrow.l.r.double.long exists k in N^* "tq" p = 2k$

$ (2k)²  = 2q² arrow.double.long 2 divides q² arrow.double.long 2 divides q $

$p$ et $q$ sont divisibles par $2$ contradiction avec le présupposé. #linebreak()
$x in.not QQ$.

Notation : $x=sqrt(2)$

