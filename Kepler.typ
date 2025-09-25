#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Kepler",
  subtitle: "03/12/2024",
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

= Excentricité

$e = (||arrow(P O)||)/(||arrow(P Q)||) = rho/(d- rho cos(phi))$

- $e = 0$ cercle
- $0<e<1$ ellipse
- $e=1$ parabole
- $1<e<oo$ hyperbole

= Mouvement central

Le mouvement d'un point P est central de centre O si le support de l'acceleration passe constamment par O
$ arrow.long.l.r.double arrow(r) and arrow(v) = arrow(r_0) and arrow(v_0) $

$ d/(d t) (arrow(r) and arrow(v)) = arrow(r) and arrow(a) $
$ = 0 arrow.long.l.r.double arrow(v) " colineaire a " arrow(a) $

Ainsi $L_0$ est constant



