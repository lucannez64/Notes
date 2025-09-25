#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 11",
  subtitle: "01/04/2025",
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

= Dérivabilité

== Définition, nombre dérivé

Soit $d$ la sécante à la courbe d'une fonction $f$ continue en $(x_0, f(x_0))$ et $(x, f(x))$ \
Alors la pente de $d$ est: $ (f(x)-f(x_0))/(x-x_0) = (f(x_0+h)-f(x_0))/(h) $
Et est appelée rapport de Newton de $f$ en $x_0$


Soit $f$ définie dans un voisinage de $x_0 in RR$

si $ lim_(x arrow x_0) (f(x)-f(x_0))/(x-x_0) = lim_(h arrow 0) (f(x_0+h)-f(x_0))/(h) $
existe, on la dénote $f'(x_0)$, le nombre dérivé de $f$ en $x_0$ et $f$ est dite dérivable en x_0.

Remarque: Dans ce cas $f'(x_0)$ est la pente de la tangente au graphe de $f$ en $x_0$

$ cal(T)_f(x_0): f'(x_0)(x-x_0) + f(x_0) = y $

=== Exemple

$sqrt(x)$ est dérivable en tout $x_0>0$

Soit $x_0 > 0$
$ (f(x_0+h)-f(x_0))/h = (sqrt(x_0+h)-sqrt(x_0))/h $
$  = (x_0 + h -x_0)/ (h (sqrt(x_0+h) + sqrt(x_0))) = 1/ (sqrt(x_0 + h) + sqrt(x_0)) $
$ lim_(h arrow 0) 1/ (sqrt(x_0 + h) + sqrt(x_0)) = 1/(2sqrt(x_0)) := f'(x_0) $
$ cal(T)_sqrt(x_0) : y = 1/(2sqrt(x_0))(x-x_0)+ sqrt(x_0) $
$ cal(T)_sqrt(16) (x) : y = 1/8 (x-16) + 4 $

=== Exemple 2

$abs(x)$ dérivable en $0$ ?

$ lim_(x arrow 0) (abs(x)-0)/(x-0) $

$ lim_(x arrow 0^+) (abs(x)-0)/(x-0) = 1 $
$ lim_(x arrow 0^-) (abs(x)-0)/(x-0) = -1 $

=== Exemple 3

$root(3, x)$ dérivable en $0$ ?

$ lim_(x arrow 0) root(3,x)/x = lim_(x arrow 0) 1/x^2/3= lim_(x arrow 0) 1/(root(3,x))^2 = +oo $

=== Exemple 4

$ f(x) = cases( x sin(1/x) space &x != 0, 0 space &0) $

$ x sin(1/x)/x = sin(1/x)$ n'admet pas de limite en $0$

$ g(x) = cases( x^2 sin(1/x) space &x != 0, 0 space &0) $
est dérivable en $0$

== Dérivabilité et continuité

Soit $f$ définie dans un voisinage de $x_0 in RR$ et dérivable en $x_0$ $=> f$  est continue en $x_0$

=== Preuve

Soit $f$ dérivable en $x_0$, soit $x in V(x_0)$
$ f(x)-f(x_0) = (f(x)-f(x_0))/(x-x_0) (x-x_0) $
$ lim_(x arrow x_0) f(x)-f(x_0) = 0 $

== Dérivabilités latérales

Soit $f$ définie sur $]x_0-delta, x_0] "(resp" [x_0, x_0+delta [ ")", delta > 0$
$f$ est dérivable à gauche (resp. à droite) en $x_0$ $ => f'_-(x_0) := lim_(x arrow x_0^-) (f(x)-f(x_0))/(x-x_0) $ existe
$ => f'_+(x_0) := lim_(x arrow x_0^+) (f(x)-f(x_0))/(x-x_0) $ existe \
C'est la pente de la demi-tangente à gauche (resp à droite) au graphe de $f$

=== Exemple

$ f(x) = cases(x <= 0"," x^2, x>0 "," 2x) $

$ lim_(x arrow   0^-) x^2/x = 0 $
$ lim_(x arrow 0^+) 2x/x = 2 $
Pas dérivable en $0$

=== Exemple 2

$sqrt(x)$ n'est pas dérivable à droite en $0$.

$ lim_(x arrow 0^+) sqrt(x)/x = lim_(x arrow 0^+) 1/sqrt(x) = +oo $

=== Exemple 3

$ f(x) = cases((x^2 + x + 2)/2 "," x<0, sqrt(x +1)"," x>= 0) $
$ lim_(x arrow 0^-) ((x^2 + x + 2)/2 - 1)/x = lim_(x arrow 0^-) (x^2+x)/2x = 1/2 $
$ lim_(x arrow 0^+) (sqrt(x+1) - 1)/x = lim_(x arrow 0^+) x/(x sqrt(x+1)+1) = 1/2 $

$f'(0) = 1/2 $ et $f$ dérivable en $0$

Remarque:
$f$ dérivable en $x_0 <=> f$ dérivable à gauche et à droite en $x_0$ et $f'_-(x_0) = f'_+(x_0)$

== Approximation linéaire

Soit $f$ dérivable $x_0$
On veut $f(x)$ pour un $x in V(x_0)$

$ cal(T)_f(x_0) : y = f'(x_0)(x-x_0) + f(x_0) $

On peut approximer $f(x)$ par $A(x) =  f'(x_0)(x-x_0) + f(x_0)$
$ f(x) = A(x) + epsilon(x) $
$ epsilon(x) = f(x) - A(x) = (x-x_0)((f(x)-f(x_0)/(x-x_0) - f'(x_0)) $
$ lim_(x arrow x_0) epsilon(x) = 0 $

=== Exemple

$ sqrt(16.2) $
$ A_16 (x) = 1/(8) (x - 16) + 4 $
$ sqrt(16.2) = 4.025 + epsilon(16.2) $
