#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 7",
  subtitle: "18/03/2025",
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

= Limites de fonctions

== Limites en $plus.minus infinity$

=== Fonctions convergentes en $plus.minus infinity$
Un voisinage de $+infinity$ est un intervall $ [A, +infinity [, A subset RR $

Ex:
+$f(x) = 1/x$ est définie sur un voisinage de $ plus.minus infinity $
+ $tan(x)$ ne l'est pas

Soit $f$ définie sur un voisinage de $+infinity$ et soit $L in RR$
$ f "tend vers" L "lorsque x tend vers" infinity "si" forall epsilon > 0 exists N > 0 "tq" x>= N => |f(x)-L|< epsilon $
$ "En" -infinity, forall epsilon exists N<0 "tq" x <= N => |f(x) - L| < epsilon $

Ex
+ $f(x) = x/(3x-2), x != 2/3$
Montrer que $lim_(x arrow +infinity) f(x) = 1/3$
$ abs(f(x)-1/3) = abs(x/(3x-2) -   1/3 ) = 2/3 1/(|3x-2|) $
$ |f(x)-L| = 2/(3abs(3x-2)) < epsilon $
$ <=> 3x-2 > 2/3epsilon "pour" x> 2/3 $
$ <=> x > 2/9epsilon + 2/3 $
Soit $N = min{x in RR | x > 2/9epsilon + 2/3}$
Alors $x >= N => |f(x) -1/3| < epsilon $

Ex
+ Montrer que $lim_(x arrow -infinity) 1/x = 0 $
Soit $epsilon > 0$
$ abs(1/x) < epsilon $
$ <=>  1/abs(x) < epsilon $
$ <=>  -x > 1/epsilon "pour" x<0 $
$ <=> x < -1/epsilon $
$ A < -1/epsilon $
$ forall x <= A => x < -1/epsilon => |1/x - 0| < epsilon $

=== Théorème


Soit $f$ une fonction définie sur un voisinage de $+infinity$
$ lim_(x arrow +infinity) f(x) = L <=> "toute suite" (x_n) "tq" x_n arrow +infinity, f(x_n) arrow L $


Soit $f$ une fonction définie sur un voisinage de $-infinity$
$ lim_(x arrow -infinity) f(x) = L <=> "toute suite" (x_n) "tq" x_n arrow -infinity, f(x_n) arrow L $

Preuve: de $=>$
on suppose $lim_(x arrow +infinity) f(x) = L$, soit $(x_n) arrow +infinity$
Soit $epsilon>0$

$ exists M "tq" x > M => abs(f(x) -L) <epsilon $
$ exists N "tq" n>= N => x_n > M $
$ forall n >= N => x_n > M => abs(f(x_n) - L )< epsilon $

Ex:
$sin(x)$ n'admet pas de limite lorsque $x arrow +infinity$
Par le théorème si $sin(x)$ admettait un limite $L in RR$ alors $forall (x_n) in RR^NN arrow +infinity => sin(x_n) arrow L$
Soit $a_n = n pi$ on a $sin(a_n) = 0$
et $b_n = 2n pi + pi/2 $ on a $sin(b_n) = 1$ donc $sin(x)$  n'a pas de limite

== Fonctions qui divergent vers $plus.minus infinity$ lorsque $x arrow plus.minus infinity$

Soit $f$ définie sur un voisinage de $+infinity$
$ lim f(x) = +infinity "si" forall M>0 exists N > 0 "tq" x>= N => f(x) > M $
$ lim f(x) = -infinity "si" forall M<0 exists N > 0 "tq" x>= N => f(x) < M $

Soit $f$ définie sur un voisinage de $-infinity$
$ lim_(x arrow -infinity)f(x) = +infinity "si" forall M>0 exists N < 0 "tq" x>= N => f(x) > M $
$ lim_(x arrow -infinity)f(x) = -infinity "si" forall M<0 exists N < 0 "tq" x>= N => f(x) < M $

Ex:
+ 
$ lim_(x arrow -infinity)x^3 = -infinity $
Soit $M<0$
$ x^3 < M <=> x< root(3, M ) $
Donc $ N < root(3, M ) $

+

$ lim_(x arrow -infinity)x^2 = +infinity $
$ x^2> M <=> x < 0, x < -sqrt(M) $ 
Soit $( N < -sqrt(M))and(x<=N) => x² > M$

== Propriétés des limites de fonctions
Comme avant//////////////////////////////////////////////////////////////////////////////////////////////////////


Ex:
$ lim_(x arrow +infinity) (-3x^2 + 2x +7)/(5x+1) = lim_(x arrow +infinity) x^2(-3 + 2/x + 7/x^2)/x(5+1/x) = -infinity $
$ lim_(x arrow -infinity) = x/(sqrt(x^2 + x)) = x/(-x sqrt(1+1/x)) = -1/sqrt(1+1/x) = -1 $

