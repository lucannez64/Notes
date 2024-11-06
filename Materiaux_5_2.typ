#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Materiaux 5 2",
  subtitle: "10/10/2024",
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

= Stockage d'énergie
$ d w = sigma_( x x) d epsilon_(x x) $
$ W = E(epsilon_(x x)^2)/V $
$ W = integral_0^epsilon_( x x) sigma_(x x)d epsilon_(x x) L_(0 x) S_( x x)  $
$ W = V E 1/2 epsilon_(x x)^2 $

= Plasticité des métaux

*Ecrouissage :* durcissement  du matériau durant les charges/ décharges successives.

$ n =( d sigma)/ (d epsilon) $

Une partie de l'énergie est rendu quand je relache la charge et l'autre partie est dissipée dans le matériau

= Densité $<<$ et grand module de Young

$ m = F/(Delta l) (L_0)^2 (rho / E) $

= Limite d'élasticité

$ sigma_m^(L J) = E/27 = 0.037  $
