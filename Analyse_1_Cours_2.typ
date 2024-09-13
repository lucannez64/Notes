#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2"
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 2",
  subtitle: "13/09/2024",
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

= Nombre réels: $RR$

== Réels

=== Théorème 1
$pi$ est irrationnel.

Pour un triangle rectange de coté 1, 1, x

$ 1²+1² = x² $
$ x²=2 $

=== Théorème 2

$exists x >=0 | x² = 2 space x " est irrationnel."$

==== Preuve

Par l'absurde, supposons que $x in QQ arrow.double.l.r.long exists p in ZZ, q in ZZ^* "tq" x = p/q$
#linebreak()
On suppose que $p/q$ est irréductible
Alors $p² = 2q²$

Ainsi $2 divides p² arrow.l.r.double.long 2 divides p arrow.l.r.double.long exists k in N^* "tq" p = 2k$

$ (2k)²  = 2q² arrow.double.long 2 divides q² arrow.double.long 2 divides q $

$p$ et $q$ sont divisibles par $2$ contradiction avec le présupposé. #linebreak()
$x in.not QQ$.

Notation : $x=sqrt(2)$
== Règles de calcul: $+, -, times, div$

=== Addition
+ $x + y = y + x$
+ $x + (y+z) = (x+y) +z$
+ $x+0=0+x=x$
+ $x + (-x) = 0$

=== Soustraction

$ x - y = x + (-y) $

=== Multiplication

+ $x times y = y times x$
+ $ x times ( y times z) = ( x times y) times z$
+ $ x times ( y + z) = x times y + x times z$
+ $ x times 1 = 1 times x = x$
+ $ x times x^(-1) = x^(-1) times x = 1, x in RR^*$

=== Division

$ x / y colon.eq x times y^(-1) $

== Ordre $<=, >=, <, >$

+ $ forall x,y in RR x <= y " ou/et " y <= x $
+ $ x <= w$
+ $ x <= y, y<= z, x<= z$
+ $ x <= y, x+y <= y+z forall z in RR$
+ $ 0 <= x, 0<=y arrow.long.double 0 <= x times y$

== Intervalles

$ [a,b] colon.eq {x in RR: a<= x <= b} $
$ ]a,b[ colon.eq {x in RR: a< x < b} $
$ [a,b[ colon.eq {x in RR: a<= x < b} $
$ ]a,b] colon.eq {x in RR: a< x <= b} $
$ [a, +inf[ colon.eq {x in RR: x>= a} $
$ ]a, +inf[ colon.eq {x in RR: x> a} $
$ ]-inf, b] colon.eq {x in RR: x <= b} $
$ ]-inf, b[ colon.eq {x in RR: x < b} $

== Valeur Absolue

$ |x| colon.eq cases(
  x "si" x>0,
  0 "si" x=0,
  -x "si" x<0,
) $

+ $ abs(-x) = abs(x) >= 0$
+ $ abs(x) = 0 arrow.double.l.r.long x = 0$
+ $-abs(x) <= x <= abs(x)$
+ $a >= 0 arrow abs(x) <= a arrow.double.l.r.long -a <= x <= a$
+ $abs(x times y) = abs(x) times abs(y)$
+ $forall y in RR^*, abs(x/y) = abs(x)/abs(y)$
+ $forall x in RR^*$
$ x/abs(x) = cases(
  +1 "si" x>0,
  -1 "si" x<0,
) $

=== Propriété Inégalité triangulaire
$ abs(x + y) <= abs(x) + abs(y) $

== Distance

$ d(x,y) colon.eq abs(x-y) $
+ $forall x,y in RR space d(x,y) >= 0, d(x,y) = 0 arrow.l.r.double.long x=y$
+ $d(x,y) = d(y,x)$
+ $d(x,y) <= d(x,z) + d(z,y)$

=== Equivalence

$ d(x,a) <= epsilon arrow.l.r.double.long abs(x-a) <= epsilon $
$ arrow.l.r.double.long a-epsilon <= x <= a+epsilon $
$ arrow.l.r.double.long x in [a - epsilon, a + epsilon] $

== Supremum et Infimum

=== Minimum et Maximum

$ max(A) = x^* arrow.l.r.double.long forall x in A x <= x^* $
$ min(A) = x_* arrow.l.r.double.long forall x in A x >= x_* $

==== Ex

+ $A = NN arrow.double min(A) = 0, "pas de " max(A)$
+ $A = {1/n, n in NN} arrow.double max(A) = 1, "pas de " min(A)$
+ $A = [0, 1[ arrow.double min(A) = 0, "pas de " max(A)$
=== Majorants et Minorants

Soit $A subset RR$
+ A est majoré $arrow.l.r.double.long exists M in RR "tq" forall x in A, x <= M$
+ A est minoré $arrow.l.r.double.long exists m in RR "tq" forall x in A, x >= m$
+ A est borné $arrow.l.r.double.long$ A est majoré et minoré

==== Ex

+ $A = [0, 1[ "est borné"$
+ $A = NN "est minoré et non majoré", forall M in RR, exists n in N "tq" n > M$

=== Supremum, Infimum

$A subset RR != emptyset$

$s in RR$ est supremum de $A$ si
+ $s$ majore $A$
+ $s <= s' , forall s' in M a j(A)$
$arrow.l.r.double.long s = sup A$

$s in RR$ est infimum de $A$ si
+ $s$ minore $A$
+ $s >= s' , forall s' in M i n(A)$
$arrow.l.r.double.long s = inf A$

==== Remarque
Si $A$ possède un $max(A)$
$ sup(A) = max(A) $
Si $A$ possède un $min(A)$
$ inf(A) = min(A) $

==== Ex

+ $A = {1/n, n in NN^*} arrow.l.r.double.long max(A) = sup(A) = 1, exists.not min(A), inf(A) = 0$ 
  - En effet $0$ minore $A$ $0 <= 1/n, forall n in NN^*$
  - $0$ est le plus grand minorant $s'>0, exists n in NN^*, n > 1/s' arrow.l.r.double.long 1/n < s'$ Or $n in A, s'$ ne minore pas $A$

+ $A = [0,1[, inf(A) = min(A) = 0, sup(A) = 1$
