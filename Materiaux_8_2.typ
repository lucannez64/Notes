#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Materiaux 8 2",
  subtitle: "07/11/2024",
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

= Thermodynamique

== Enthalpie

$ Delta H_"reaction" =sum_"produits" Delta H_0 - sum_"reactifs" Delta H_0 $

$ cases(
  Delta H < 0 "exothermique",
  Delta H > 0 "endothermique"
)
$

$ H = U + p V $

== Definition

Relation entre la chaleur et le travail

$ J = N dot m = k g m^2/s^2 $

== Système

Milieu reactionnel

1. Ouvert : echange de matiere et d'energie
2. Ferme : echange d'energie
3. Isole : pas d'echange

== Fontion d'état

- Decrit l'etat du systeme.
- Depend de l'etat du systeme seulement

=== Exemple

1. Altitude
2. Energie potentielle

== Grandeurs extensives et intensives

1. Extensives: proportionnelles a la quantite de matiere
2. Intensive: independantes de la quantite de matiere

== Energie interne

Independante de l'etat physique

$ Delta U = W + Q $

$W$ sous forme de travail et $Q$ sous forme de chaleur

Si le systeme est ferme $ Delta U = Q $
