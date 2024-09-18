#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Algèbre Linéaire Série 7",
  subtitle: "16/10/2024",
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

= Exercice 1

== 
Supposons que $A C = I_n$
Si A a un inverse alors $exists!E space  E A = I_n$
Supposons que $ C A != I_n $
Ainsi $ (C A - I_n)D != 0 $
$ A(C A - I_n)D != 0 $
$ A C A D - A D != 0 $
$ A D - A D != 0 $
$ 0 != 0 $ Absurde Donc $A C = I_n arrow.long.l.r.double C A = I_n $  et C est l'inverse de A par définition
==
Supposons que $C A = I_n$
Si A a un inverse alors $exists!E space A E = I_n$
Supposons que $ A C != I_n $
Ainsi $ C(A C - I_n)D != 0 $
$ C(A C - I_n)D != 0 $
$ C A C D - C D != 0 $
$ C D - C D != 0 $
$ 0 != 0 $ Absurde Donc $C A = I_n arrow.long.l.r.double A C = I_n $  et C est l'inverse de A par définition

Par double implication $A$ est inversible d'inverse $C$

= Exercice 2

On $A B(U) = I_n$
et $V(A B) = I_n $
Par associativité $ A(B U) = I_n $ d'après le théorème précédent A est inversible d'inverse $B U$
$ (V A)B = I_n $  d'après le théorème précédent B est inversible d'inverse $V A$

= Exercice 3

$det(A)= b c^2 - c b^2 -a c^2 + c a^2 + a b^2 - b a^2 = c^2(b-a)+b^2(a-c)+ a^2(c- b) = (b-a)(c-a)(c-b)$

$(b-a)(c-a)(c-b) != 0$
$arrow.double.long c!=b!=a!=c$

==

$ A => mat(1, 1, 1, 1; 0, b-a, c-a, d-a; 0, b(b-a), c(c-a), d(d-a); 0, b^2(b-a), c^2(c-a), d^2(d-a);) $
$ det(A) = (b-a)(c-a)(d-a)(c-b)(d-b)(d-c) $

== Généralisation

$ det(A) = product_(0<=i<j<=n)^n (c_j-c_i) $

= Exercice 4

$ t = 7 $
$ s = 14 $

= Exercice 5

$ det(A) = 16 $

= Exercice 6

==
F
==
V
==
F
==
F

= Exercice 7

==

$ det(C) = -15 det(A) $
$ det(2 B) = 2^3B $
$ det(D) = -120 det(A)det(B) $
==

$ det(C) = 4^3(-1) det(A) $
$ det(D^-1) = 1/4det(B)^-1 $
$ det(C D^-1) = -16 det(A)det(B)^-1 $

= Exercice 8

==

S4S

==

S4S
==
S4S
==
S4S
==
$ f(x) = 0 in FF $
$ f(x)+g(x) in RR $
$ alpha f(x) in RR $

Donc $FF$ est un espace vectoriel

==
$ 0 in PP $  car $f(x) = 0 = p(t) = 0$ monome nulle
Question a

==

On peut dire que $C(RR)$ est un sous ensemble de $FF$
Or d'après l'analyse $f+g$ est continue si f et g sont continue donc $f+g in C(RR)$
$f(x) = 0$ est continue et $alpha f(x)$ est continue pour tout $alpha in RR$ si f est continue
donc $C(RR)$ est un sev de $FF$, un espace vectoriel.

==

$f(x) = 0 in C^1(RR)$ car $f(x) = 0$ a pour dérivée lui même donc sa dérivée est continue
$f +g in C^1(RR)$ et $alpha f in C^1(RR)$ d'après l'analyse
donc $C^1(RR)$ est un sev de $C(RR)$
