#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 1",
  subtitle: "11/10/2024",
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

= Fonctions

$f : A arrow B$#linebreak()
$x arrow y = f(x) $

$y$ est l'image de $x$ et $x$ est une préimage de $y$

== Ensemble image

=== Définition
$ I m(f) = {y in B | exists x in A |f(x) = y } $

=== Surjection

$f: A arrow B$ est surjective $arrow.l.r.double I m(f) = B arrow.l.r forall y in B space exists x in A | f(x) = y$

==== Example
- $ f : ZZ arrow ZZ $ $ x arrow y = f(x) = x+1 $ est surjective. Soit $y in ZZ$ et $x = y - 1 in ZZ$ car $ZZ$ est stable par addition. On a $f(x) = x+1 = y$. Ainsi $I m(f) = ZZ$.

- Soit $A = "ensemble des élèves"$ , B = $NN$ $ f: A arrow B $ $ x arrow f(x) = "nombre de frères de soeurs de x" $ n'est pas surjective car $y = 676$ n'a pas de préimage. $ I m(f) = {0, 1 , 2, 3, 4, 5, 10} $

==== Remarque

Si $tilde(B) = I m(f)$, $ tilde(f): A arrow tilde(B) $ $ x arrow tilde(f)(x) = f(x) $

=== Injection

$f: A arrow B$ est injective $arrow.l.r.double.long forall (x,x') | x != x' arrow.long.double f(x) != f(x') arrow.l.r.double.long forall (x, x') in A^2 | f(x) = f(x') arrow.l.r.double x = x'$ 

==== Example

- $tilde(f)$ n'est pas injective, car $f("Marianne") = f("Pierre") = 2$

- $f: RR arrow RR space x arrow f(x) = x^2$ n'est pas surjective car $y=-4 in RR$ n'a pas de préimage et n'est pas injective car $x=-2 != x'=2 space f(x) = f(x')$
- $f: NN arrow QQ space x arrow f(x) = (x^2)/(x^2 +1)$
Quand $ f(x) = f(x') $
$ x^2/(x^2+1) = x'^2/(x'^2+1) $
$ x^2-x'^2 = 0 $
$ (x-x')(x+x')=0 $
$ x = x' " ou " x = x' = 0 $
$ x = x' $
Donc f est injective

=== Bijection

$ f: A arrow B " est bijective " arrow.l.r.double.long " f est surjective et injective "$
- $forall y in B space exists x_* in A | f(x_*) = y$
- $"Il existe au plus une préimage pour " y$
$arrow.l.r.double.long exists! x_* in A | f(x_*) = y$

==== Fonction Réciproque
Ainsi il existe une fonction, appelé réciproque de f
$f^(-1) : B arrow A space y arrow f^(-1)(y) = x_*$

- $f^(-1)(f(x)) = x$
- $f(f^(-1)(y)) = y$


==== Fonctions réelles 
$A, B subset.eq RR$

=== Graphiquement

$ f : A arrow B$ est surjective si $forall y in B$ , la droite horizontale à hauteur y coupe le graphe de f en au moins un point.

$ f : A arrow B$ est injective si $forall y in B$ , la droite horizontale à hauteur y coupe le graphe de f en au plus un point.

=== Example

$ f: RR arrow RR space x arrow f(x)  = (x-5)/3$

$ forall (x,x') in RR^2 arrow.double.l.r.long (x-5)/3 = (x'-5)/3 arrow.double.l.r.long x = x' $
Ainsi f est injective
$ forall y in RR space f(x) = y arrow.double.l.r.long (x-5)/3 = y arrow.double.l.r.long x = (3y+5) in RR $
Ainsi f est surjective.
$ arrow.double.long f$ bijective
et sa réciproque est $ f^(-1) : RR arrow RR space y arrow f^(-1)(y) = 3y+5$

= Preuve par récurrence

$forall n >= 0 cal(P)(n)$

+ Montrer que $cal(P)(0)$ est vraie
+ Montrer que si $cal(P)(n)$ est vraie alors $cal(P)(n+1)$ est vraie aussi
$ arrow.double.long cal(P)(n) "est vraie" forall n >= 0 $

== Example

Montrons que $forall n>= 1 space sum_(k=1)^n(n) = n(n+1)/2$

$ a_n = sum_(k=1)^n(n) $
$ b_n = n(n+1)/2 $
+ $a_1 = 1$ et $b_1 = 1 space a_1=b_1 arrow.double.long cal(P)(1) "est vraie"$
+ Supposons que $cal(P)(n) "est vraie" a_n = b_n$
$a_(n+1) = a_n + n+1 = b_n + n+1 = n(n+1)/2 + n+1 = (n^2+3n+2)/2 = (n+1)(n+2)/2 = b_(n+1)$

$ arrow.double.long cal(P)(n) "vraie" forall n >= 1 $
