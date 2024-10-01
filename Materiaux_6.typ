#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Materiaux 6",
  subtitle: "26/09/2024",
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

= Etats de la matière

- Les positions d'équilibre dépendent de la température et la pression
Ainsi Un même matériau peut donc se présenter sous plusieurs état.

+ Gaz : $rho_g approx 1 k g / m^3 $
+ Liquide : $rho_l approx 10³ " à " 20 times 10³ k g / m^3 $
+ Solide amorphe ( désordonnée liquide figée ) : $rho_a approx rho_l$
+ Solide cristallin ( ordonnée ) : $ rho_c approx rho_l + Delta rho$

$ (Delta rho)/ rho = 0 " à " 10% $
$ (Delta rho)/ rho = -9% " pour la glace à 0°C" $
$ (Delta rho)/ rho = -2.3% " pour Si à 1414°C" $

= Propritétés d'écoulement

*Viscosité* $mu [P a dot s]$

$ F/S = mu v/d $
$ mu = F/S d/v $ 

= Etats des corps solides

- Forme vitreuse : liquide figé très grande viscosité $T_g$ température de transition vitreuse
- Forme cristalline : état ordonnée décrit par un motif que l'on répète à chaque noeud d'un réseau cristallin


