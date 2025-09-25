#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse A Serie 4",
  subtitle: "17/03/2025",
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

= Exercice 1
== A
$ (m-2)x -(11m+3)x = -10 $
$ x(-10m -5) = -10 $
+ $-10m -5 != 0 <=> m != 1/2$ $S = {10/(10m+5) = 2/(2m+1)}$
+ $S = nothing.rev$

== B
+ $m != -1/2$ $S = 2m-1$
+ $m = 1/2$ $ S = RR$

= Exercice 8
$ x^2 + (m-2)x -(m+3)= 0 $
$ Delta = (m-2)^2 - 4(-m-3) $
$ x_1 = (-m+2 plus (m-2)^2 - 4(-m-3))/2 $
$ x_2 = (-m+2 minus ((m-2)^2 - 4(-m-3)))/2 $

$ ((-m+2 plus (m-2)^2 - 4(-m-3))/2)^2  + ((-m+2 minus (m-2)^2 - 4(-m-3))/2)^2 = 9 $
$ (-m plus m^2 +9 )^2 + (-1-m^2+7m )^2 = 36 $
$ (m(m - 1)+9)^2 + (m(m+7)-1)^2 = 36 $
$ (m(m-1))^2 + 18m(m-1) + 81 + (m(m+7))^2 - 2m(m+7) + 1 = 36 $
$ m^2(m^2-2m+1) + 18m^2-18m + 82 + m^2(m^2+14m+49) -2m^2 + 14m  = 36 $
$ 2m^4+12m^3+ 66m^2 - 4m +82 = 36  $

Autre Chemin
Formule de viète
$x^2 + (m-2)x -(m+3) = 0$
$ x_1+x_2 = -a_2/a_1 $
$ x_1+x_2 = -(m-2)/1 $
$ x_1+x_2 = -m + 2 $
$ (x_1 + x_2)^2 = x_1^2 + x_2^2 + 2x_1*x_2 $
$ (-m+2)^2 = 9 + 2x_1 x_2 $
$ x_1x_2 = a_0/a_2 $
$ x_1x_2 = (-m-3) $
$ 9 = (-m+2)^2 + 2(m + 3) = m^2 -4m + 4 + 2m + 6 = m^2 -2m + 10 $
$ Delta = 4 -4 = 0 $
$ x_1 = 2m/2 = m $
$ (m - 1)^2 = 0 $
$ m = 1 $
