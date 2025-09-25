#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 8",
  subtitle: "21/03/2025",
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

= Limites de fonctions en $x_0 in RR$

== Voisinage
Soit $x_0 in RR$ un voisinage de $x_0$ est un itervalle $]x_0-delta, x_0+delta[, delta > 0$

== Voisinage épointé de $x_0$
Soit $x_0 in RR$ un voisinage de $x_0$ est un itervalle $]x_0-delta, x_0+delta[ \\ {x_0}, delta > 0$

==  Fonction convergente en $x_0$

Soit $x_0 in RR$, $f$ définie sur un voisinage épointé de $x_0$.
Soit $L in RR$
$f$ converge vers $L$ quand $ x "tend vers" x_0 $
$ <=> forall epsilon > 0 space exists delta > 0 | 0<abs(x-x_0)< delta => abs(f(x)- L)< epsilon  $


=== Exemple

$ lim_(x arrow 2) 3x-1 = 5 $
$ (3x-1)-5<epsilon $
$ |x-2| < epsilon/3  $
Il suffit de prendre $delta = epsilon/3$


$ lim_(x arrow 0) x^2 = 0 $
$ <=> |x^2| < epsilon $
$ <=> |x| < sqrt(epsilon) $
Soit $ delta = sqrt(epsilon) $
Alors $|x^2| < epsilon$


$f(x) = sqrt(x+2), D_f = [-2, +infinity[$
$lim_(x arrow 1) f(x) = sqrt(3)$


Soit $epsilon > 0$
$ <=> abs(f(x)-sqrt(3))< epsilon $
$ <=> abs(sqrt(x+2) - sqrt(3)) < epsilon  $
$ abs( ( -3 x + 2)/(sqrt(x+2)+sqrt(3)) ) <= abs(x-1)/sqrt(3) $
$ delta = sqrt(3)epsilon  $
$ <=> abs(x-1)<delta $
$ <=> abs(f(x)-sqrt(3))< epsilon $

$ lim_(x arrow 0) sin(x) = 0 $
$ 0 < abs(sin(x)) < abs(x) $
$ abs(sin(x)) < epsilon $
il suffit que $ abs(x) < epsilon $
On prend $delta  = epsilon$
$ abs(x) < delta => abs(sin(x)) < epsilon $


$ lim_(x arrow 2) x^2 = 4 $
Soit $epsilon > 0$

$ abs(x^2 -4) < epsilon $
$ <=> abs(x-2)abs(x+2) < epsilon $
Si $x in ]1.99, 2.1[$
alors $ 3.9 < x+2 < 4.1 $
$ abs(x-2)abs(x+2) < 4.1 abs(x-2) $
On prend $ delta = min(epsilon/4.1, 0.1) $
$ |x-2| < delta  $
$ <=> abs(x-2)abs(x+2) < 4.1abs(x-2) < epsilon $

== Limites latérales
Soit $ x_0 in RR$
Un voisinage à gauche $]x_0 -delta, x_0[, delta > 0$
Un voisinage à droite $]x_0, x_0 +delta,[, delta > 0$

$f $ définie dans un voisinage à gauche de $x_0$
soit $L in RR$
$f$ tend vers $L$ qunad $x$ tend vers $x_0$ par la gauche
$ <=> forall epsilon > 0 space exists delta | x in ]x_0-delta, x_0[ => abs(f(x)-L) < epsilon  $
On note $lim_(x arrow x_0^(-)) f(x) = L$



$f $ définie dans un voisinage à droite de $x_0$
soit $L in RR$
$f$ tend vers $L$ qunad $x$ tend vers $x_0$ par la droite
$ <=> forall epsilon > 0 space exists delta | x in ]x_0, x_0-delta[ => abs(f(x)-L) < epsilon  $
On note $lim_(x arrow x_0^(+)) f(x) = L$

=== Exemple

$f(x) = cases(
  x+2 "si" x<= 2 ,
  -2x+2 "si" x>2 
)$

Limite à gauche 
$delta = epsilon$
$ 2-delta < x < 2 => abs(x-2) < delta = epsilon => abs(f(x) - 3) < epsilon $

Limite à droite 
$ abs(f(x)- 4) = abs(-2x+8-4) = 2abs(x-2) $
$delta = epsilon/2$
$ abs(x - 2) < delta => abs(f(x)-4) < epsilon $

== Théorème

$f$ admet une limite en un point $<=>$ les limites gauche et droite de $f$ en ce point existent et sont égales

=== Exemple

La fonction $s g n(x)$ n'a pas de limite en $0$ car sa limite à gauche est $-1$ et sa limite à gauche est $1$

== Propriétés des limites/ limites latérales en $x_0$

Les mêmes que en $plus.minus infinity$  

=== Exemple

$ lim_(x arrow 2) (x+1)/(x+3) = 3/5 $
$ lim_(x arrow -2) (x^2 +3x +2)/(x+2) = (x+2)(x+1)/(x+2) = x+1 = -2+1 = -1 $
$ lim_(x arrow 0) (sqrt(x+1)-1)/x = x/x(sqrt(x+1)+1) = 1/(sqrt(1)+1) = 1/2 $

== Théorème de la caratérisation de la convergence par suites
$x_0 in RR space f$ définie dans un voisinage de $x_0, L in RR$ \
$ f(x) arrow.long_(x arrow x_0) L <=>$ toute suite $x_n arrow.long_(n arrow +infinity) x_0$ satisfait $f(x_n) arrow.long_(n arrow +infinity) L$ 

=== Exemple

$f(x) = sin(1/x) $
$D_f = R^*$
n'a pas de limite en 0
Soit $a_n = 1/(n pi) $
et $b_n = 1/(2n pi + pi/2)$

$f(b_n) = 1 $ et $ f(a_n) = 0$
donc $f(x)$ n'admet pas de limite en 0
