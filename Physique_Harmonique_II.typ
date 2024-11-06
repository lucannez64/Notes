#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Physique Harmonique II",
  subtitle: "09/10/2024",
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

= Suite du pdf

$ sqrt(gamma^2 - omega_0^2) = i sqrt(omega_0^2 - gamma^2) $
$ e^(lambda t) = e^(-gamma t) e^(i sqrt(omega_0^2 - gamma^2) t) $
$ e^(i alpha t) =  $

$ cos(alpha t) =( e^(i alpha t) + e^(-i alpha t) )/2 $
$ sin(alpha t) =( e^(i alpha t) - e^(-i alpha t) )/(2i) $

