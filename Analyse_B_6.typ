#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B 6",
  subtitle: "14/03/2025",
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

== Bijection, fonction réciproque
$ f: A -> B $ fonction réelle on s'intéresse à déterminer, si elle existe, la fonction réciproque $f^(-1): B -> A$

Quelles sont les conditions que f doit satisfaire pour admettre une réciproque ?

=== Surjectivité

Soit $f: A -> B$, $f$ est surjective $arrow.long.double.l.r forall y in B space exists x in A | f(x) = y$ càd si tout élément de B admet un (ou plusieurs) antécédent par f.

==== Exemple
$f: RR^+ arrow RR$ \
$space space space space x arrow sqrt(x)$

n'est pas surjective mais si on la redéfinit comme  \
$f: RR^+ arrow RR^+$ \
$ space space space space x arrow sqrt(x)$

On peut toujours restreindre l'ensemble d'arrivée à $"Im" f$ pour rendre f surjective

$ f: RR arrow RR$
$ space x arrow x^2 + 2x $
n'est pas surjective $"Im" f = [-1, +infinity[$
On peut la rendre surjective $f: RR arrow [-1, +infinity[$

=== Injectivité
Soit $f: A arrow B$ est injective $ arrow.long.double.l.r forall x_1, x_2 in A | x_1 != x_2 arrow.long.double f(x_1) != f(x_2) $
$ arrow.long.double.l.r forall x_1_, x_2 in A | f(x_1) = f(x_2) arrow.long.double x_2 = x_1 $

==== Théorème
Soit $f$ strictement monotone, alors elle est injective

==== Exemple

$f: RR arrow RR^+ \ space space space space x arrow x^2$

$f$ n'est pas injective car $f(1) = f(-1)$

Soient $a,b in RR "t.q" f(a) = f(b)$
$ a^2 = b^2 $
$ a^2-b^2 = 0 $
$ (a-b)(a+b) = 0 $
$ a = b "ou" a=-b $

On peut restreindre l'ensemble de départ de $f$ pour la rendre injective :
- $f: RR^+ arrow RR^+$
- $f: RR^- arrow RR^+$
- $f: [0, 1] union ]-infinity, -1[ arrow RR^+$

$ f: RR arrow RR $
$ space space space space x arrow x^3 $

$ f(a) = f(b) $
$ (a-b)(a^2+a b+b^3) = 0 $
$ a-b = 0 "ou" a^2+a b + b^2 = 0 $
or si $ a^3 = b^3 $ sont de même signe
donc $a b >= 0$ et $a^2 + a b + b^2 > 0$
sauf si $a=b=0$ donc $f(a)=f(b) arrow.double.long a=b$ et $f$ est injective

=== Bijectivité
Soit $f: A arrow B$ est bijective $ arrow.r.l.double.long "est surjective et est injective" $

càd tout élément de $B$ admet un unique antécédent par $B$

Dans ce cas, il existe une unique fonction $f^(-1) B arrow A$ la fonction réciproque de f,
qui associe $y in B$ avec son unique antécédent par $f$
$ A arrow B arrow A $
$ f^(-1) compose f = i d_A $
$ f compose f^(-1) = i d_B $

==== Remarque
Le graphe de $f^(-1)$ s'obtient par réflexion du graphe de $f$ par rapport à l'axe $y=x$

==== Exemple

$ f: RR arrow RR $
$ x arrow x^2 $

$I m  f = RR^+$
Pour rendre $f$ surjective on restreind l'ensemble d'arrivée à $RR^+$
$ f: RR^+ arrow RR^+ $
$ x arrow x^2 $
$ f^(-1): RR^+ arrow RR^+ $
$ x arrow sqrt(x) $

$ f: RR^- arrow RR^+ $
$ x arrow x^2 $
$ f^(-1): RR^+ arrow RR^- $
$ x arrow -sqrt(x) $

$ f: ]-infinity, -2 [ union [ 0, 2] arrow RR^+ $
$ x arrow x^2 $

$ f^(-1) : RR^+ arrow ]-infinity, -2[ union [0,2] $
$ x arrow \ sqrt(x) "si" x <= 4 \  "sinon" -sqrt(x) $  


+ $ f: RR arrow RR $ $ x arrow x-x^2 $
 
$ x-x^2 = y $
$ x^2-x+y = 0 $
$ Delta = 1-4y >= 0 arrow.long.double.l.r y <= 1/4 $
$ I m  f = ]-infinity, 1/4 ] $
Soit $a,b in RR | f(a) = f(b)$
$ a-a^2 = b-b^2 $
$ a-b-a^2+b^2 = 0 $
$ a-b+(b-a)(b+a) $
$ (a-b)(1 -a-b) = 0 $
$ a+b-1 = 0 $
$ a = 1-b $
Il faut enlever du domaine un parmi $ (a, 1-a) $ 
ces paires sont symétrique par rapport à $1/2$
On peut restreindre $D_f$ à $[1/2, +infinity[$

$ f: [1/2, +infinity[ arrow ]-infinity, 1/4] $
$ x arrow x-x^2 $
$ f^(-1): ]-infinity, 1/4] arrow [1/2, +infinity[ $
Elle associe à $y in ]-infinity, 1/4] "l'unique" x in [1/2, +infinity[ | x-x^2 = y$
$ x = (1 plus.minus sqrt(1-4y))/2 $
Or $ x>= 1/2 $
Donc $ f^(-1): x arrow (1 plus sqrt(1-4x))/2 $
