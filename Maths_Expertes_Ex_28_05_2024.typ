#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths Expertes",
  subtitle: "28/05/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "Fénelon Notre-Dame",
  year: "2023/2024",
  class: "Terminale B",
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

= Exercice 21 p 220

==
L'ordre du graphe est $5$

==
Le nombre d'arête est $12/2= 6$

==

Non car A et D ne sont pas adjacent

==

Oui le graphe est simple

==

A: $2$
B: $3$
C: $3$
D: $2$
E: $2$

==
Le graphe admet une chaîne eulérienne car il y a $2$ sommets de degré impair

==

Le graphe n'admet pas de cycle eulérien car il a $2$ sommets de degré impair

= Exercice 1 p 242

==
$ U_1 = A U_0 = mat(-1 times 2 -1 times 2; 1 times 2 -1 times 0.5;) = mat(-4; 3/2) $
$ U_2 = A U_1 = mat(-1 times -4 + 2 times 3/2; 1 times -4 + 0.5 times 3/2) = mat(7; -13/4;) $

==

$U_n = A^n U_0$

$U_10 = A^10 U_0 = mat(252217/256;-432253/1024)$

= Exercice 2 p 242

==

$A = mat(10, 5; -3, 4)$
$U_0 = mat(5; -2)$

==

$A = mat(-0.2,0.5;1.3,-0.7)$
$U_0 = mat(0;1)$

==

$U_0 = mat(2;1)$

$U_n = mat(a_n; a_(n+1))$

$A = mat(0,1 ;-13, 6)$

= Exercice 3 p 242

==

Faux $U_3 = A^3 U_0 = mat(0.094;0.031)$

==

$lim_(n arrow +infinity) -n = -infinity$ #linebreak()
$lim_(n arrow -infinity) e^n = 0$ #linebreak()
Par composition $lim_(n arrow +infinity) e^(-n) = 0$

Pour $-1<k<1$ $lim_(n arrow +infinity) k^n = 0$
Ainsi $lim_(n arrow +infinity) 0.7^n -1 = -1$

$lim_(n arrow +infinity) U_n = mat(0; -1)$

==

$A U =  mat(2, 1, 1; 1,3,1;4,5,2;) times mat(1; 0; -1) = mat(1; 0 ;2 ) != U$

Donc U n'est pas un état stable

==

$ U_n = A^n U_0$
$ U_n = mat(3^n, 0; 0, 2^n) times mat(1;1) = mat(3^n; 2^n)$

$lim 3^n = +infinity$
$lim 2^n = +infinity$

Donc $lim U_n = mat(+infinity; +infinity)$
Ainsi $(U_n)$ diverge

==

La matrice $mat(0;0)$ est un état stable car $A times O = mat(0; 0)$
