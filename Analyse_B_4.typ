#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B 4",
  subtitle: "07/03/2025",
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

#let limi = $lim_(n arrow +infinity)$

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Séries Géométriques

=== Déf 

Soit $r in RR$ la suite $(a_n)_(n>=0), a_n=r$ est la suite géométrique de raison r

==== Ex
$ 1,2,,4,8,16,..... | r = 2 $
$ 1,1,1,1,.... | r = 1 $
$ 1, -1, 1, -1, | r=-1 $

=== Proposition (Convergence des suites géométriques)

Soit $(a_n)$ la suit géométrique de raison $r$.

$(a_n)$ : 
- Converge vers $1$ si $r=1$
- Converge vers $0$ si $-1<r<1$
- Diverge sinon

==== Preuve

- Si $r=1$, $a_n=1$ suite constante converge.
- Si $r=-1$, $a_n=(-1)^n$ diverge.
- si $abs(r) > 1$ 
$abs(a_n) = abs(r^n) = abs(r)^n$ diverge

Si $abs(a_n) -> +infinity arrow.double.long.r  a_n text(" diverge")$
- Si $abs(r) < 1$
   - Si $r = 0 | a_n = 0$
   - Si $r!=0$, $abs(r) = 1/r',r'>1$ par le point précédent $lim_n (r')^n = +infinity$ donc $abs(a_n) -> 0$ or $- abs(a_n) <= a_n<= abs(a_n)$ donc par les deux gendarmes $a_n -> 0$

==== Remarque

$(abs(a_n) ->  0) arrow.r.long.double (a_n -> 0)$

=== Déf
Soit $r in RR$ et $(a_n)$ la suite géométrique de raison $r$.
On définit la suite de sommes partielles $(S_n)_(n>=0)$
$ S_n = a_0 + a_1 +.. +a_n $
$ = sum_(i=0)^n (r^i) $

==== Exemples

- $r=0.1 space a_n = 1, 0.1, 0.01 space S_n = 1, 1.1, 1.11$
- $r=-2 space a_n= 1,-2,4,-8 space S_n=1,-1,3,-5,11,-21 $

==== Lemme
Soit $r in RR$ et $S_n= sum_(i=0)^n r^i$
alors $ S_n = { n+1 "si" r=1; (1-r^(n+1))/(1-r) "si" r!=1} $

==== Preuve
Si $r=1$ 
$ S_n = 1+1+...+1 = n+1 $

Si $r!=1$
$ S_n = 1+..+r^n $
$ r S_n = r+..+r^(n+1) $
$ (1-r)S_n = 1-r^(n+1) $
$ S_n = (1-r^(n+1))/(1-r) $

==== Example 
$r=0.1$
$(S_n) = 1, 1.1, 1.11$
$S_n=(1-(0.1)^(n+1))/(0.9)$

On va étudier la convergence de $(S_n) arrow.r.long.double$ $limi S_n = limi sum_(i=0)^n r^i $

=== Proposition
Soit $r in RR$ et $S_n = sum_(i=0)^n r^i$
alors $S_n { "converge vers" 1/(1-r) "si" abs(r) < 1; "diverge sinon" }$

==== Preuve

- Si $r=1, S_n = n+1 arrow +infinity $
- Si $r!=1, S_n=(1-r^(n+1))/(1-r)$
  - Si $abs(r)<1, r^(n+1) arrow 0 "et" S_n arrow 1/(1-r)$
  - Si $abs(r)>1, "on sait que" r^(n+1) "diverge" S_n "doit diverger aussi car sinon "  r^(n+1) = 1-(1-r)S_n = 1-(1-r)L "converge" $ 

==== Exemples
+ $r = 1/2$
  On cherche la limite

  $ S_n = (1-1/2^(n+1))/(1-1/2) = 2(1-1/2^(n+1)) arrow 2 $

  $ sum_(i=1)^infinity  1/2^i = sum_(i=0)^infinity 1/2^i - 1 $
  $ = 2-1 = 1 $

+ $ sum_(i=1)^infinity ((-1)^i*3)/2^i = -3/2(1-1/2+1/4-1/8+1/16) = -3/2 1/(1-(-1/2)) = -1 $
  $ = 3 sum_(j=0)^(infinity) (-1/2)^j+1 = -3/2 1/(1+1/2) = -1 $

+ Montrer que $2.macron(34) = 2+0.34 + 0.0034 + ... in QQ$
  $ = 2+34/100 (1+1/100+1/100^2 +...) = 1/(1-1/100) = 2+34/100 (100/99) = 232/99 in QQ $

+ Soit $e_n = 1+1/1  +1/2! + .. $
  On étudie la convergence de $(e_n)$ 

  $e_(n+1)-e_n = 1/(n+1)! > 0$ donc $(e_n) "croissante"$
  $forall n>= 2 | 1/n! <= 1/2^(n+1)$
  $ e_n = 1+ 1/1! + 1/2! + 1/3! + .. + 1/n! <= 1+ 1+  1/2 + 1/2^2+1/2^n-1 = 1+ (1-(1/2)^n)/(1-(1/2)) = 1+ 2(1-1/2^n) < 3 $
  $(e_n)$ étant croissante et majorée par 3, elle admet une limite notée
  $e := sum_(i=0)^infinity 1/i!$ #linebreak()
  On peut montrer que $2<= e <=3$
  $forall n>= 2  | e_n> e_1 = 2$
  donc $2<= e <= 3$ #linebreak() on sait aussi que $e=limi (1+1/n)^n$

+   Le flocon de von Koch

- étape 0
On a un triangle d'aire 1 et de coté $l_0$

- étape n, n>0
Couper chaque côté en 3 et ajouter un triangle équilatérale à la place du segment au milieu de chaque côté

On s'intérese à l'aire du flocon $A_n$ et au périmètre $P_n$

Nombre de côtés à chaque étape : 
+ $C_0 = 3$
+ $C_1 = 4C_0$
+ $C_2 = 4C_1$
+ $C_n = 4^n*3$
Longueur des côtés à chaque étape :
+ $l_0$
+ $l_1= 1/3 l_0$
+ $l_n = 1/3^n l_0$
Aire d'un petit triangle :
+ $a_0=1$
+ $a_1=1/9 a_0$
+ $a_n=1/9^n a_0$
Aire du flocon:
+ $A_0=1$
+ $A_1 = A_0 + C_0 a_1$
+ $A_(n+1)  = A_n + C_n a_(n+1) = 1+ 1/3( 1+ 4/9 + 4^2/9^2+..)= 1+ 1/3 (1-(4/9)^n)/(5/9) + 1+3/5 (1-(4/9)^n) = 8/5$ 
Périmètre du flocon:
$P_n = C_n l_n = 3l_0 (4/3)^n arrow +infinity$
