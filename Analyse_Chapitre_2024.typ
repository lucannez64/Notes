#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse_Chapitre_2024",
  subtitle: "06/09/2024",
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

= Chapitres

== Pas commencé
- Compléments
- Développements limités
- Séries
- Séries entières
- Suites récurrente ( à vérifier )
== En cours
- Intégrale ( Liste des primitives et Changement de variable )
- Suites réelles ( Comportements et théorème de Bolzano-Weierstrass )

== Fait
- Calcul Differentiel
- Fonctions Continues
- Fontions Réelles
- Integrale
- Integrales Généralisées
- Limite de fonction
- Nombres Complexes
- Nombres réels


== Révisé
