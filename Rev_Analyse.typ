#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse Rev",
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

#let fa=sym.forall
#let ex=sym.exists
#let eps= sym.epsilon
#let eqi = sym.arrow.l.r.double.long

= Complexes 

$ z^n - z=0 $
$ r^n e^(i n phi) = omega_0 = s_0 e^(i phi.alt_0) $
$ r = root(n,s_0), phi in {(2k pi + phi.alt_0)/n bar(k in [[0,n-1]])} $

si $ r != 0 arrow.double.long.l.r r^(n-1) e^(i(n+1)phi) = 1 $
$ r = 1, phi in {(2 pi k)/(n+1) bar(k in [[0, n]])} $

= Suites
Limite

$ root(3, n^3 + 8n^2 + 7)-n $
$ (8n^2+7)/(root(3, n^3+8n^2+7)^2 + n^2+ n root(3, n^3+8n^2+7)) $

= Séries

$ sum^infinity_(n=1) (1+1/n^2)^(n^b) x^n $

$ e^n^(b-3) $

Pour b = 2 alors $e^1$ $R= e^(-1) $
