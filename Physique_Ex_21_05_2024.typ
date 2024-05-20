#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem
#import "@preview/diagraph:0.2.3": raw-render
#show: bubble.with(
  title: "Physique",
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

#set heading(numbering: "1.1.1.a")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)


= Exercice 20 p 420

== Partie 1

===

$E_(p h o t o n 1) = h times c / lambda = 6.63 times 10^(-34) times (3.00 times 10^8) / (400 times 10^(-9)) = 4.97 times 10^(-19) J $

===

Chaque photon a la même énergie et pour $lambda_2 = 700 n m$  cette énergie est insuffisante pour arracher des électrons ainsi augmenter l'intensité lumineuse n'augmente pas l'énergie d'un photon car chaque photon n'a toujours pas l'énergie suffisante

===

Car dans cette formule on considère la lumière sous forme corpusculaire, le photon.

===

$ E_(p h o t o n)= W_(e x t r a c t i o n) + E_c $ 
$ E_(p h o t o n) = W_(e x t r a c t i o n) + 1/2 m v ^2 $
$ v = sqrt(2/m ( E_(p h o t o n) - W_(e x t r a c t i o n))) $
$ v = sqrt(2/(9.11 times 10^(-31)) ( 4.97 times 10^(-19)  - (2.29 times 1.60 times 10^(-19)))) $
$ v = 5.35 times 10^5 m dot s^(-1) $

===

#figure(image("Physique_Exercices_21_05_2024_1.png"))

== Partie 2

===

#raw-render(
  ```
  digraph{
    rankdir=LR
    node[shape=rectangle]
    e_l -> c
    c -> e_e
    c -> e_t [style="dashed"]
  }
  ```,
  labels: (:
    c: [Cellule Photovolataïque],
    e_l: [Energie lumineuse],
    e_t: [Energie Thermique (Perdue)],
    e_e: [Energie Electrique],
  ),
)

===

====

La puissance maximale fournie pour un éclairement de $1000 W dot m^(-2)$ est de $180 W$

====

Quand la puissance maximale est atteinte la tension est de $24 V$

====
$I = P/U$
$I = 180/24 = 7.5 A$
L'intensité du courant est alors de $7.5 A$

===

$eta = P_(é l e c)/P_(l u m)$

$ P_(l u m) = E times S $
$ P_(l u m) = 1000 times 1318 times 10^(-3) times 994 times 10^(-3) $
$ P_(l u m) = 1.31 times 10^(3) $

Ainsi $ eta = 180/(1.31 times 10^(3)) = 0.137 $

Soit le rendement maximale est égale à $13.7%$

===

====

$(3.5 times 10^3)/180 = 19.4 approx 20$

Il faut donc 20 panneaux pour fournir $ 3.5 k W c$

====

$ E_(l u m) = 1450 times 1318 times 10^(-3) times 994 times 10^(-3) times 20 $
$ E_(l u m) = 3.80 times 10^4 k W dot h $

Le rendement étant de $10 %$ #linebreak() 
$ E_(e l e c) = 3.80 times 10^3 k W dot h $
Ainsi le revenu sera de $r = 0.20 times 3.80 times 10^3 = 760 €$


