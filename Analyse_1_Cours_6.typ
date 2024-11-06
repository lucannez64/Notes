#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 6",
  subtitle: "04/10/2024",
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

= Suites définies par récurrence

$ x_(n+1) colon.eq g(x_n) $
$ g : RR arrow RR $
$ x_0 "est fixé, la condition initiale" $

== Exemple

=== Cas simple
$ g(x) = 1+x/2 $
$ x_(n+1) = 1+ x_n/2 $ 

==== Méthode 1

$ x_0 = 5 $
$ x_1 = 3.5 $
$ x_2 = 2.75 $
$ x_3 = 2.1875 $

Montrons qye $(x_n)$ est décroissante.
$ x_(n+1) - x_n = 1+x_n/2 - (1 + x_(n-1)/2) $
$ = 1/2 (x_n - x_(n-1) $
$ = 1/2^n (x_1 - x_0) $
$ = 1/2^n ( 1+ x_0/2 - x_0 ) $
$ = 1/2^n ( 1 - x_0/2 ) $

Si $x_0 = 5$, $x_(n+1) < x_n forall n$


En fait:
$ (x_n) cases(
  "décroissante" "si" x_0> 2,
  "croissante" "si" x_0 < 2,
  "constante" "si" x_0 = 2,
) $

Montrons que $(x_n)$ est bornée :

Si $x_0>2$ alors $ x_1 = 1 + x_0/2 > 2 $
$ x_n = 1 + x_(n-1)/2 > 2 $

$(x_n)$ minorée par $m=2$

$arrow.double.long (x_n)$ converge $exists L in RR "tq" lim(x_n) = L$

$ forall n >= N x_(n+1) = 1 + x_n/2 = x_n $
$ L = 2 = lim(x_n) $

Si $x_n<2$ On montre de même de $ x_n<2, forall n arrow.double.long exists L in RR, lim x_n = L arrow.double.long L = 2 $ 

==== Méthode 2

Essayer d'exrpimer $x_n = f(n)$

$ x_1 = 1+x_0/2 $
$ x_2 = 1 + 1/2 + 1/2^2 x_0 $
$ x_3 = 1 + 1/2 +1/2^2 +1/2^3 x_0 $
$ x_n = sum_(i=0)^(n-1) (1/2^i) + 1/2^n x_0 $
$ x_n = (1-(1/2)^(n))/(1-1/2) + 1/2^n x_0 $
$ f(x) =  2(1-(1/2)^x) + x_0/2^x $
$ lim x_n = 2 $

==== Méthode 3

Essayer de montrer que $(x_n)$ est une suite de Cauchy.

$ abs(x_n - x_m) <= ? $

Rappelons que $ abs(x_(n+1) - x_n) = 1/2^n abs(1 - x_0/2) $
$ forall n > m abs(x_n - x_m) = abs((x_n - x_(n-1)) + (x_(n-1) - x_(n-2))+ (x_m+1 - x_m)) $
$ <= sum_(k=m)^(n-1) abs(x_(k+1) -x_k) $
$ = abs(1 - x_0/2) sum_(k=m)^(n-1) (1/2^k) $
$ = abs(1 - x_0/2) ( 1/2^(m-1) - 1/2^(n-1) ) $

$ (x_n) "est de Cauchy" $

$ lim x_n = L = 2 $

== Approche générale

Remarque on a pu déterminer la valeur de la limite en faisant $ x_(n+1) = g(x_n) $
$ L = g(L) $

Donc $L$ est un point fixe de $g$

*Définition* Soit $g : RR arrow RR$ un $x_n in RR$ est point fixe de $g$ si $g(x_n) = x_n$

*Exemples* 
+ $g(x) = 1+x/2$ un seul point fixe $x_n =2$
+ $g(x) = 4(1-x), x_n = 0, 3/4$ 
+ $g(x) = e^x$ n'a pas de point fixe.

*Remarque* Si $x_(n+1) = g(x_n)$ et si $x_0$ est un point fixe de $g$, $(x_n)$ est une suite constante

*Théorème* Si une suite définie par récurrence à l'aide d'une fonction $g$, est convergente et si $g: RR in RR$ est continue alors la limite de $x_n$ est un point fixe de $g$

*Preuve* Si $(x_n) arrow L$ $lim x_(n+1) = L = lim g(x_n) = g(lim (x_n))  = g(L) $

=== Exemples

$ cases(
  x_0=4,
  x_(n+1) = g(x_n)
) $

$ g(x) = 2 - 1/x , x!= 0 $

$ g(x) = x $
$ 2 - 1/x = x $
$ (2x-1-x²)/x = 0 $
$ -(x-1)^2/x = 0 $

$x_* = 1$ est point fixe

Montrons que $forall n , x_n > 1$

$ 1/x^n < 1 $
$ 1/x_n+1 = 2 - 1/x^n > 1 $

Montrons que $(x_n)$ est décroissante :

$ x_(n+1) - x_n = 2 - 1/x_n - x_n = -(x_n - 1)^2/x < 0 $

Donc $ (x_n) arrow L=x_*=1 $ car $g$ est continue $]1, +infinity[$


