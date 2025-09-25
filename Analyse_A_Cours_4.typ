#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse A Cours 4",
  subtitle: "17/03/2025",
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

= Méthodes de preuve
== Preuve par induction/récurrence

Soit $ NN = { 0, 1 , 2 , ... }$ l'ensemble des entiers dit naturels

$P$ une proposition portant sur $NN$ 

$n in NN$

But: Démontrer que $P(n)$ est vraie à partir d'un certain entier $n_0 in NN$
càd $P(n)$ vraie $forall n>= n_0$

Ex: Conjecture de Goldbach
$forall n "pair" in NN >= 4 space exists p_1,p_2 "premiers" | n = p_1 + p_2 $

Principe de récurrence

Il suffit de démontrer deux propositions

1. $P(n_0)$ est un théorème de $cal(T)$
2. L'implication $P(n) => P(n+1)$ est un théorème de $cal(T)$

Alors $P(n)$ est un théorème de $cal(T) space forall n >= n_0 $

Ex: $P(n)$ le nombre $7^n-1$ est divisible par 6

$n=0$
$7^0-1 = 0*6 = 0$
$<=> P(0) "est un théorème de" cal(T)$

Supposons $exists n in NN | P(n) "est un théorème de" cal(T)$
Alors $exists k in NN | 7^n-1 = 6*k$
Montrons que $P(n+1)$ est un théorème de $cal(T)$
$ 7^(n+1)-1 = 7(7^n) -1 = (6+1)(7^n)-1 = 6*7^n+7^n-1 = 6k+6*7^n= 6(k+7^n) = 6k' $
$<=> P(n+1) "est un théorème de" cal(T)$

= Algèbre Elémentaire sur le corps des nombres réels

$RR$ l'ensemble des nombres réels
$ZZ "Relativzahlen"$
$QQ "Quotientzahlen"$


$NN subset ZZ subset QQ subset RR subset CC subset HH subset OO subset SS subset TT$

Propriétés de $RR$
$(RR, +, dot, 0, 1, <=)$ est un corps commutatif ordonné
en particulier

+ $a b=b a, forall a,b in RR$
+ $forall a in RR_*, b in RR | a b = 1 $
+ $forall a,b in RR | a<= b <=> a+c <= b+c , forall c in RR$
+ $forall a,b in RR | a c<=b c, forall c in RR^+$

== Inéquations sur $RR$

Contexte: $f,g "fonctions": E subset.eq RR $ on veut déterminer $S = {x in RR | f(x) = g(x)}$
ou $S = {x in RR | f(x) <= g(x)}$
ou $S = {x in RR | f(x) >= g(x)}$

$RR "univers"$
$E = D_f  \u{2229} D_g$

== Inéquation linéaires

$a x = b$ ou $a x <= b$

Distinguer des cas

- $a != 0$ alors $x = b/a$ $S={b/a}$
- $a = 0$ alors $0x = b$
  - $b = 0$ $S=RR$
  - $b != 0$ $S = nothing.rev$

Ex: Equation avec paramètre $m in RR$
Résoudre en $x in RR$
l'équation $m^2 x -m -4x = 2$ en fonction de m

+ Isoler les x

$<==> m^2 x -4x = 2 + m$
$<==> x(m^2-4) = 2 + m$
- Si $m^2-4 != 0 <=> m != plus.minus 2$ alors $S = {(m+2)/(m^2 - 2)} = {1/(m-2)}$
- Si $m = plus.minus 2$
  - Si $m = -2$ alors $S = RR$
  - Si $m = 2$ alors $S = nothing.rev$
$x > 4/x$
$(x^2-4)/x > 0$

Tableau des signes \
|     |  | $-2$ | | $0$ | | $-2$ | | \
|$x+2$| $-$| $0$ | $+$ \
|$x-2$| $-$ | $-$ | $-$ | $-$ | $0$ | $+$ \
|$x$  | $+$ | $0$ | $-$ | $-$ | $0$ | $+$
