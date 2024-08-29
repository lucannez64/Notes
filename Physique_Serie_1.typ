#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Physique Série 1",
  subtitle: "29/08/2024",
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


== Exercice 2

===  Partie A

1. 
$ sum(F) = m arrow(a) $
$ m arrow(g) = m arrow(a) $
$ arrow(g) = arrow(a) $
$ a = vec(0, -g) $
$ a = arrow(v)' $
$ v = vec( v_a cos(alpha), -g t + v_a sin(alpha)) $
$ x = v_a cos(alpha)t $
$ y = -g t² + v_a sin(alpha)t $

Car $x_0 = 0$ et $y_0=0$ 

2. Il faut satisfaire les conditions suivantes quand $x = 8$, $y(x) = 6 $
$ t = x/(v_a cos(alpha)) $
$ y(x) = -g(x/(v_a cos(alpha)))² + v_a sin(alpha) (x/(v_a cos(alpha))) $
$ -10(8/(15 cos(alpha)))²+15 sin(alpha) (8/(15cos(alpha))) = 6 $
