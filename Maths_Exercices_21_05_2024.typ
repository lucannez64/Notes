#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths",
  subtitle: "21/05/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "LHB",
  year: "2023/2024",
  class: "101",
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

= Exercice 53 p 460

== Partie A

===

#tablem[
  |$x_i$|$1$|$2$|$3$|$4$|$5$|$6$|Total|
  |-----|-|-|-|-|-|-|-----|
  |$p_i$|$1/6$|$1/6$|$1/6$|$1/6$|$1/6$|$1/6$|$1$|
  |$p_i x_i$|$1/6$|$1/3$|$1/2$|$2/3$|$5/6$|$1$|$7/2$|
]

#tablem[
  |$x_i$|$1$|$2$|$3$|$4$|$5$|$6$|$7$|$8$|$9$|$10$|$11$|$12$|Total|
  |-----|-|-|-|-|-|-|-|-|-|--|--|--|----|
  |$p_i$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1/12$|$1$|
  |$p_i x_i$|$1/12$|$1/6$|$1/4$|$1/3$|$5/12$|$1/2$|$7/12$|$2/3$|$3/4$|$10/12$|$11/12$|$1$|$13/2$|
]

===

$Z = X + Y$

Ainsi $E(Z) = E(X) + E(Y) = 13/2 + 7/2 = 10$

===

Les deux lancers sont indépendants car on lance deux dés différents

===

Les deux variables étant indépendantes $V(Z) = V(X) + V(Y) = 35/12 + 143/12 = 89/6$

== Partie B

===
Il y a $12 times 6 = 72$ issues possibles et parmi elles il y a $6$ avec un total supérieur à 15
$(6; 10), (5;11) , (6;11), (4;12), (5;12) , (6;12)$

Ainsi la probabilité d'obtenir ce bonus est de $6/72= 1/12$

===

Comme dit précédemment deux lancers sont indépendants soit $B$ la variable aléatoire qui associe 1 si un joueur a eu le bonus, 0 s’il ne l’a pas eu, et $S_n$ le nombre de bonus obtenus sur n lancers de deux dés alors $S_n$ suit une loi binomiale de paramètre n=$n$ et p=$1/12$
$E(S_n) = n times 1/12 = n/12$ 

et $V(S_n) = n times 1/12 times 11/12 = (11 n)/24$

===

$Z_n = n Z$

$E(Z_n + S_n) = E(Z_n) + E(S_n) = n E(Z)+ n/12$
$= 10n + n/12 = (121 n)/12$

===

On cherche le plus petit $n$ tel que $E(Z_n + S_n) gt.eq 300$
$ (121 n)/12 gt.eq 300 $
$ n gt.eq 3600/121 approx 29.75 $

Ainsi le nombre moyen de lancers pour finir la partie est de $30$ lancers.


