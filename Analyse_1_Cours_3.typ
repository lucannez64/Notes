#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 3",
  subtitle: "18/09/2024",
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

= Rappel
Si $A$ est minoré son infimum est le réel $s$
+ $s<= x, fa x in A$
+ $fa eps > 0, ex x in A, s<= x <= s+eps$

= Solutions de $x^2=2$

== Théorème 
$ex x > 0, x^2 = 2$

== Preuve

Soit $A = {x in RR_+^*: x^2 < 2}$
Ex: $1 in A, 2 in.not A$

*Lemme*
$A$ n'a pas de $max(A)$

*Preuve*

Soit $x in A$, $x' colon.eq x+1/n, n in NN^*$
On a $x'^2 = (x+1/n)^2 = x^2 + 2x/n + 1/n^2$
$ x'^2 <= x^2+(2x+1)/n $
Prenons $n$ tq $n>(2x+1)/(2-x^2)$ sachant que $2-x²>0$

$ x'^2 <= x^2+(2x+1)/n < x² + 2-x² = 2$
Ainsi $x' in A$
$A$ n'a pas de $max(A)$

*Remarque*
$A$ est majoré, par $M = 2$. En effet $forall x > 3, x² > 9 > 2, x in.not A$

Considérons $s colon.eq sup(A)$

*Lemme 2*
$s² = 2$

*Preuve 2* On va montrer que #linebreak()
$s²>= 2$ Comme $A$ n'a pas de $max$.
$s²<= 2$ Soit $M colon.eq (2+s²)/(2s)$

$ x² = (s+ (x-s))² = s² + 2s(x-s) + (x-s)² $
$ >= s²+2s(x-s) $
$ > s²+2s(M-s) $
$ = s²+2s((2+s²)/(2s) -s) $
$ = 2 $
$x in.not A$ alors $x<= M$ donc $M$ majore $A$. Or $s$ est le $sup(A)$ donc $s<= M$
$ s <= (2+s²)/2s $
$ 2s² <= 2+s² $
$ s² <= 2 $

Ainsi $s² = 2$
On appelle $s = sqrt(2)$

== Théorème
$ fa y > 0 space ex x > 0, x^2 = y $

Donc $f: RR⁺ arrow RR⁺, x arrow f(x) = x²$ est une bijection.
Sa réciproque s'appelle la fonction racine carrée.
$f^(-1): RR⁺ arrow RR⁺, y arrow f^(-1)(y) = sqrt(y)$

== Théorème

$ fa y > 0 space ex x > 0, x^n = y $

Donc $f: RR⁺ arrow RR⁺, x arrow f(x) = x^n$ est une bijection.
Sa réciproque s'appelle la fonction racine carrée.
$f^(-1): RR⁺ arrow RR⁺, y arrow f^(-1)(y) = root(n,y)$

= Densité

== Définition
Un sous-ensemble $E subset RR$ est dense (dans $RR$) si $fa x,y in RR, x < y, ex z in E "tq" x< z < y$

== Théorème

$QQ$ est dense dans $RR$

== Définition

$fa x in RR, floor(x) colon.eq "plus grand entier n" in ZZ "tq" n<=x$
$ floor(x) <= x <= floor(x) + 1 $
$ x-1 < floor(x) <= x $
=== Preuve

Soit $x,y in RR, x < y$
Posons $r colon.eq (floor(n x) +1)/n$ $n in NN$ tq $n> 1/(y-x)$
$r in QQ$

$ (n x)/n < r <= (n x+1)/n $
$ x < r <= x + 1/n $
$ x < r <= x + y -x $
$ x < r < y $

Ainsi $ QQ$ est dense dans $RR$

== Corollaire

$ fa x in RR, fa eps > 0, ex r = p/q in RR "tq" abs(x-p/q) <= eps $ 

== Théorème 2

$RR without QQ$ est dense dans $RR$

= Ensembles ouverts et fermés

== Définition

$G subset RR$ est ouvert si $fa x in G, ex eps > 0 "tq", ]x-eps, x+eps[ subset G $

$F subset RR$ est fermé si son complémentaire $F^c := RR without F$ est ouvert

=== Ex 

+ $G = ]0,1[$ est ouvert
+ $A = {x in RR | x²<2}$

== Propriété

Soit $ G, F subset RR$ ouvert alors $G union F $ est ouvert

=== Ex

+ $ ZZ$ est fermé car $ZZ^c = union_(n in ZZ) ]n, n+1[$ ouvert
+ $[a,b[$ n'est pas ouvert car $fa eps > 0, ] a -eps, a+eps[ subset.not [a,b[ $
$([a,b[)^c = ]-infinity, a[ union [b, + infinity[$ n'est pas ouvert donc $[a,b[$ n'est pas fermé
+ $QQ$ n'est pas ouvert, ni fermé pareil pour $RR without QQ$

= Suites réelles

== Définition

Une suite est une famille infinie de réels indexée par des entiers $eqi f: F subset.eq NN arrow RR$ 
