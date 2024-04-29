#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths Expertes",
  subtitle: "Pour le 30/04/2024",
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

== Numéro 47 page 172

#block(fill: macchiato.yellow, inset: 8pt, radius: 4pt, [Montrer que pour tout entier naturel $n$, le nombre $n^11 - n$ est divisible par $33$])

=== Méthode 1

$n$ est un entier naturel et $11$ est un nombre premier, ainsi d'après le corollaire du petit théorème de Fermat $n^11-n eq.triple 0 mod 11$. #linebreak()
De plus $3$ est aussi un nombre premier, donc $n^3-n eq.triple 0 mod 3$ #linebreak()
$n^11 = (n^3)^3 times n^2$
Par conséquent $n^3 eq.triple n mod 3$ et $(n^3)^3 eq.triple n^3 mod 3 eq.triple n mod 3$
Donc $n^11 eq.triple n times n^2 mod 3 eq.triple n^3 mod 3 eq.triple n mod 3$

Alors il existe un entier $k$ tel que $n^11-n eq 11 times k$
et il existe un entier $k'$ tel que $n^11-n eq 3 times k'$
Ainsi $3 times k' = 11 times k$.
Ainsi $3k'$ divise $11k$ et $3k'$ divise $3k' arrow.double 3$ divise $11k$ or $3$ et $11$ sont deux nombres premiers $arrow.l.r.double$ pgcd$(3;11)=1$ #linebreak() Selon le théorème de Gauss $3$ divise $k$ #linebreak()
Soit $k = 3k''$ avec $k''$ un entier relatif : 
$11 times 3k'' = 3 times k'$ #linebreak()
$ arrow.l.r.double 11 times k'' = k'$ #linebreak()
$n^11-n = 3 times k' arrow.l.r.double$ #linebreak()
$n^11-n = 3 times 11 times k''$ #linebreak()
$arrow.l.r.double n^11-n = 33k''$ #linebreak()
Par conséquent $n^11-n$ est divisible par $33$

=== Méthode 2

$n$ est un entier naturel et $11$ est un nombre premier, ainsi d'après le corollaire du petit théorème de Fermat $n^11-n eq.triple 0 mod 11$. #linebreak()

De plus $3$ est aussi un nombre premier, donc $n^3-n eq.triple 0 mod 3$ #linebreak()
$n^11 = (n^3)^3 times n^2$
Par conséquent $n^3 eq.triple n mod 3$ et $(n^3)^3 eq.triple n^3 mod 3 eq.triple n mod 3$
Donc $n^11 eq.triple n times n^2 mod 3 eq.triple n^3 mod 3 eq.triple n mod 3$ #linebreak()
$n^11-n eq.triple 0 mod 3$
Donc $n^11-n$ divisible par $3$ #linebreak() 
or $33=11 times 3$ donc $33$ a pour facteurs premiers $11$ et $3$ et $33=\p\p\c\m(11,3)$
Comme $n^11-n$ est divisible par $3$ et par $11$ il est aussi divisible par $33$
