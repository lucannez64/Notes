#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths Expertes",
  subtitle: "29/05/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "Fénelon Notre-Dame",
  year: "2023/2024",
  class: "Terminale B",
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

= Exercice 4

==

$ U_n = A^n U_0 $
$ U_n = mat(3^n, 0; 0, 2^n;) times mat(1; 1) = mat(3^n;2^n) $

$ forall k gt 1 , lim_(n arrow +infinity) k^n = +infinity $
Ainsi $lim_(n arrow +infinity) 3^n = +infinity$
et $lim_(n arrow +infinity) 2^n = +infinity$

Par conséquent $(U_n)$ diverge

==

#linebreak()
$mat(0;0)$ est un état stable car $A times mat(0;0) = mat(0;0)$

= Exercice 6

==

$ U_(n+1) = mat(0, 1; -0.6, 0.2;) U_n $
$ U_n = mat(a_(n-1); a_n) $

==

$ U_n = A^(n-1) U_1 $
$ U_5 = mat(a_4; a_5) = A^5 U_1 = mat(4.4; 5.68) $
Ainsi $a_5=5.68$
