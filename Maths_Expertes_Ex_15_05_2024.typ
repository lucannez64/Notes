#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths Expertes",
  subtitle: "Pour le 15/05/2024",
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

= Exercices

== Ex 4 p 218

===

L'ordre du graphe est 9

===

A: 4
B: 4
C: 4
D: 6
E: 5
F: 6
G: 5
H: 4
I: 4

Ainsi le nombre d'arêtes du graphe est $4+4+4+6+5+6+5+4+4=42$

== Ex 5 p 218

===

L'ordre du graphe est 6

===

Le graphe n'est pas complet 

===

====

Un sous-graphe d'ordre 2 complet est le graphe ${A,E}$

====

Un sous-graphe d'ordre 3 complet est le graphe ${A,E,D}$

====

Un sous-graphe d'ordre 4 complet est le graphe ${A, E, D, F}$

== Ex 8 

Non car tout les graphes doivent être des cycles eulériens et donc possédés des degrès paires à chaque sommets

== Ex 10

===

L'ordre du graphe est 6

=== 

Le graphe n'est pas simple car deux arêtes relient E à F

===

Les 7 chaines de longeurs 3 reliant les sommets E et C sont 
1. $E-C-A-C$
2. $E-C-E-C$
3. $E-(a_1)-F_1-(a_1)-E-C$
4. $E-(a_2)-F-(a_2)-E-C$
5. $E-C-F-C$
6. $E-(a_2)-F-(a_1)-E-C$
7. $E-(a_1)-F-(a_2)-E-C$

== Ex 14

===

L'ordre du graphe est 7

===

Le degré entrant du sommet A est 1

===

Le degré sortant du sommet B est 3

===

La chaine $A->B->C->E$ est une chaîne de longueur 3 reliant les sommets A et E

== Ex 15

#let a = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

#let divise(x,y) = calc.rem(x,y) == 0
#let b = ()
#for x in a {
  for y in a {
    if divise(x,y) {
      b.push((y,x))   
      linebreak()
    }
  }
}

#let z(x) = x.map(str).join(" -> ")
#raw(b.sorted().map(z).join("\n"))

#figure(image("IXHIObiYBlThHoMv.svg"))

== Ex 31


===
L'ordre du graphe est 5

===

$M = mat(
0, 1, 0, 1, 0; 
0, 0, 0, 1, 0; 
1, 1, 0, 0, 1; 
0, 0, 0, 0, 0; 
1, 1, 0, 1, 0; 

  )$

===

Oui on peut car $m_(3,4) = 3$
il y a donc trois parcours différents possibles
1. $D-H-B-F$
2. $D-H-A-F$
3. $D-A-B-F$

===

#figure(image("VzMrPcLVHmgyGHva.svg"))

== Ex 55

=== Partie A

====

D'après le cours pour une matrice carré de taille 2 l'inverse s'écrit
$M^(-1) = 1/det(M) mat(d, -b; -c, a; )$ avec $M=mat(a, b; c, d;)$

Ici $c=5$ et $d=3$ par conséquent $N$ correspond à cette forme

====

=====

$6 times 3 − 3 times 5 = 3$

Donc $(6;3)$ est un couple solution

=====

=== Partie B

====

$Q^(-1) = 1/(3 times 6 -5 times 3) mat(3, -3;-5,6) = 1/3 mat(3, -3; -5, 6;) = mat(1, -1; -5/3, 2)$

====

On a $X = mat(3, 14)$,
puis $Y = mat(60, 57)$
puis $R = mat(8,5)$. $D O -> I F$.

