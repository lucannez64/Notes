#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 10",
  subtitle: "28/03/2025",
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

= Continuité

== Définition

Soit $f$ définie dans un voisinage de $x_0 in RR$ (en particulier, $f$ déf en $x_0$)
$f$ est continue en $x_0$ si $lim_(x arrow x_0) f(x) = f(x_0)$
$ <==> forall epsilon > 0 exists delta  >0 "tq" abs(x-x_0) < delta => abs(f(x)-f(x_0))< epsilon $

== Exemple

===

$forall x_0 in RR, "soit" epsilon > 0, sin(x) "est continue en " x_0$
$ abs(sin(x) - sin(x_0)) < epsilon $
$ = abs(2cos((x+x_0)/2)sin((x-x_0)/2)) <= 2 abs(sin((x-x_0)/2)) <= 2 abs((x-x_0)/2) = abs((x-x_0)) $
$ delta = epsilon $
$ |x-x_0| < delta => |sin(x) - sin(x_0)| < epsilon $

===

De manière analogue pour $cos(x)$ à l'aide  $ (cos(A)-cos(B)) = -2 sin((A+B)/2) sin((A-B)/2) $

===

$f(x)= x^2$ est continue en tout $x_0 in RR$

Avec les propritétés des limites

$ lim_(x arrow x_0) (x*x) = lim_(x arrow x_0) x * lim_(x arrow x_0) x $
$ = x_0 * x_0 = f(x_0) $

A partir de la définition


Si $x_0 = 0$

Soit $epsilon >  0$

$ abs(x^2 - f(0)) = abs(x^2) = abs(x-0)^2 $
$ abs(x-0)^2 < epsilon  $
$ <=> abs(x-0) < sqrt(epsilon) $
$ delta = sqrt(epsilon) $

Si $x_0 != 0$

Soit $epsilon > 0$
$ abs(x^2-x_0^2) $
$ = abs(x-x_0)abs(x+x_0) $
$ abs(x-x_0) < abs(x_0)/2 $
$ abs(x+x_0) < 5abs(x_0)/2 $
$ delta = min(epsilon/(5abs(x_0))/2, abs(x_0)/2) $

== Propriétés des fonctions continues
Découlenet des propriétés des limites

$f,g$ continues en $x_0$
$=> f plus.minus g, f dot g, abs(f), f/g "si" g(x_0) != 0$
 continues en $x_0$

== Exemple

===
$tan(x) = sin(x)/cos(x)$ est continue sur son domaine

===

Les polynômes sont des fonctions continues sur $RR$ (car $id: x arrow x$ est continue et $f: x arrow lambda$ sont continues)

Les fonctions rationelles sont continues sur leur domaine

== Composée

$lim_(x arrow x_0) f(x) = a $ et $g$ continue sur $a$,
$ lim_(x arrow x_0) g(f(x)) = g(lim_(x arrow x_0) f(x)) = g(a) $

En particulier si $f $ continue en $x_0$ alors $g compose f$ continue en $x_0$

== Exemple

===

$sin(x^4)$ continue sur $RR$
$tan(x^4)$ continue sur son domaine

===
$ lim_(x arrow 1) sqrt(x^2 + 7) = sqrt(lim_(x arrow 1) x^2 + 7) = sqrt(8) $

== Continuités latérales

$f$ est continue à gauche en $x_0$ si $lim_(x arrow x_0^-) = f(x_0)$ \
$f$ est continue à droite en $x_0$ si $lim_(x arrow x_0^+) = f(x_0)$

$f$ est continue en $x_0 <=> f$ continue à gauche et à droite en $x_0$

== Exemple

===

$ abs(sqrt(x)) < epsilon $
$ <=> 0<x<epsilon^2 $
$ delta = epsilon^2 $
$ abs(x-0) < delta => abs(sqrt(x)) < epsilon $

===

$E(x)$ est continue en tout $x_0 in RR\ ZZ$

en $x_0 in ZZ$
$E(x)$ est continue à droite

$ lim_(x arrow x_0^+) = x_0 = E(x_0) $

mais pas à gauche
$ lim_(x arrow x_0^-) = x_0-1 != E(x_0) $

== Théorème de la valeur intermédiaire

$ f "continue sur" [a,b] <=> f "continue" forall x_0 in ]a, b[, "continue à droite en a et continue à gauche en b" $

Soit $f$ continue sur $[a,b]$ avec $f(a)< f(b)$
$ forall h in ]f(a),f(b)[ exists c in ]a,b[ "tq" f(c) = h $

Remarques:
- si $f$ n'est pas continue on ne peut rien dire
- le TVI ne dit rien sur le nombre de solutions de l'équation $f(x) = h$ dans $[a,b]$
- si $f$ est de plus strictement monotone alors $exists! x in [a,b] | f(x) = h$

Soit $f: [a,b] arrow RR$ continue
- strictement croissante alors $f:[a,b] arrow [f(a), f(b)]$ est bijective
- strictement décroissante alors $f:[a,b] arrow [f(b), f(a)]$ est bijective

== Exemple
Donner un intervalle de longeur $<= 0.1$ contenant une solution de l'équation $x^3 = 3x +1$ \
Soit $f(x) = x^3 -3x - 1$
$ f(0) = -1 $
$ f(1) = -3 $
$ f(2) = 1 $
$ exists c in ]1,2[ "tq" f(c) = 0 $
$ f(1.5) = -2.125 $
$ f(1.75) = -0.89 $
$ f(1.875) = -0.033 $
$ f(1.9375) = 0.46 $
$ => exists c in ]1.875, 1.9375[ space | f(c) = 0 $
