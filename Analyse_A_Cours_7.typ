#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse A Cours 7",
  subtitle: "07/04/2025",
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

== Propriétés

$ a,b in RR_+, n,m in NN^* $
- $ root(n,a) in RR_+ $
- $ (root(n,a))^n = root(n,a^n)  $
- $ root(m,root(n,a)) = root(n m,a) $
- $ root(n, a b) = root(n, a) root(n, b) $
- $ root(m,a^n) = (root(m,a))^n $

$ root(n,a^n) = cases("si n impair" a, "si n pair" abs(a)) $

Soit $a,b in RR_+$ et $n in NN^*$, $n$ pair alors 
+ $a = b <=> root(n,a) = root(n,b) <=> a^n = b^n$
+ $ root(n,a) < root(n,b) <=> a <b <=> a^n < b^n$
$forall a,b in RR, n in NN^*, n$ impair alors
+ $root(n,a) = root(n,b) <=> a=b <=> a^n = b^n$
+ $root(n,a) < root(n,b) <=> a<b <=> a^n < b^n$


== Equations radicielles
#set math.equation(numbering: "(1.1)")

$ sqrt(f(x)) = g(x) $


#set math.equation(numbering: none)
$ D_(d é f) = D_(p o s)(f) sect D_(d é f)(g) sect D_(d é f)(f) $

#set math.equation(numbering: "(1.1)")
$ (1) <=> f(x) = g(x)^2, "si" g(x)>= 0 $

#set math.equation(numbering: none)
$ S_((1)) = S_((2)) sect D_(d é f) sect D_(p o s)(g) $

== Théorème
Regardons $D subset.eq RR$ et $f,g : D arrow RR$ 
En principe $D subset D_(d é f)(f) sect D_(d é f)(g)$
$ => forall x in D, P: sqrt(f(x)) = g(x) <=> cases(f(x) = g(x)^2, g(x)>= 0), P "est vraie" $

=== Exemple

$ sqrt(x^2 -3x + 6) = 4x-6 $
$ D_(d é f) = D_(p o s) (x^2-3x+6) $
$ ((Delta = 9-24 < 0) and (a = 1 > 0)) <=> forall x in RR, x^2-3x+6 > 0  $
$ D_(p o s) (g) = {x in RR | x>=3/2 } =  [ 3/2, +oo[ $

Soit $x in D_(p o s) (g)$ on peut résoudre $f(x) = g(x)^2$ 
$ <=> x^2-3x+6 = (4x-6)^2 $
$ <=> 15x^2 - 45x +30 = 0 $
$ <=> x^2 - 3x + 2 = 0 $
$ Delta = 1  $
$ x_1 = 2 , x_2 = 1 $
$ <=> S = {2} = {1,2} sect D_(p o s) (g) sect D_(d é f) $

=== Exemple 2
Résoudre en $x in RR$

#set math.equation(numbering: "(1.1)")
$ sqrt(x + m^2) = x +m  $
$ D_(d é f) ((3)) = { x in RR | x >= -m^2 } = [-m^2, +oo[  $
$ D_(p o s) (x + m) = {x in RR | x >= -m } = [-m, +oo[ $
$ (3) <=> x(x + (2m-1)) = 0 <=> x = 0 "ou" x= 1-2m $
$ 1-2m in D_(d é f) <=> m in RR $
$ 1-2m in D_(p o s) <=> m <= 1 $
$ S = cases({1-2m} "si" m< 0, {0,1-2m} "si" m in [0,1], {0} "si" m>1) $
