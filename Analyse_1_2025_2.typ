#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, crossproduct
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse 1 2025 2",
  subtitle: "12/09/2025",
  author: "Lucas Duchet-Annez",
  accent: latte.blue
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)
#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1)")
#let definition-style = builder-thmline(color: latte.sapphire)
#let example-style = builder-thmline(color: latte.flamingo)
#let theorem-style = builder-thmbox(color: latte.blue, shadow: (offset: (x: 3pt, y: 3pt), color: luma(70%)))
#let remark-style = builder-thmline(color: latte.yellow)
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = remark-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
#let problem = problem-style("problem", "Problème")
#let proof(body, name: none) = {
  thmtitle[Preuve]
  if name != none {
    [ #thmname[#name]]
  }
  thmtitle[.]
  body
  h(1fr)
  $square$
}

#outline()

= Nombres réels $RR$

$ NN = {0, 1, 2, ... } $

$ ZZ = {..., -2, -1, 0 , 1, 2, ... } $

$ QQ = { p/q | (p,q) in ZZ crossproduct ZZ^* } $

#thm[
  Les solutions de $ x^2 = 2$ sont irrationnels 
  $ exists.not (p,q) in ZZ^* | x = p/q $
]

#proof[
  Supposons $exists (p,q) in NN^* | x = p/q, p g c d(p,q)=1 $ \
  Par hypothèse
  $ p^2/q^2 = 2\
    <=> p^2 = 2q^2\
    => exists k in NN | p = 2k \
    4k^2 = 2q^2 \
    q^2 = 2k^2 \
    => exists z in NN | q = 2z \
    => p g c d (p,q) != 1 "absurde"\
    x in.not QQ
  $
]

Notation: $x = sqrt(2)$

#thm[
  $pi in.not QQ$
]


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

+ $forall x,y in RR x <= y " ou/et " y <= x $
+ $ x <= w$
+ $ x <= y, y<= z, x<= z$
+ $ x <= y, x+y <= y+z forall z in RR$
+ $ 0 <= x, 0<=y arrow.long.double 0 <= x times y$

== Intervalles

$ [a,b] colon.eq {x in RR: a<= x <= b} $
$ ]a,b[ colon.eq {x in RR: a< x < b} $
$ [a,b[ colon.eq {x in RR: a<= x < b} $
$ ]a,b] colon.eq {x in RR: a< x <= b} $
$ [a, +infinity[ colon.eq {x in RR: x>= a} $
$ ]a, +infinity[ colon.eq {x in RR: x> a} $
$ ]-infinity, b] colon.eq {x in RR: x <= b} $
$ ]-infinity, b[ colon.eq {x in RR: x < b} $

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
#definition[
$ abs(x + y) <= abs(x) + abs(y) $
]
== Distance

#definition[
$ d(x,y) colon.eq abs(x-y) $
+ $forall x,y in RR space d(x,y) >= 0, d(x,y) = 0 arrow.l.r.double.long x=y$
+ $d(x,y) = d(y,x)$
+ $d(x,y) <= d(x,z) + d(z,y)$
]
=== Equivalence
#proposition[
$ d(x,a) <= epsilon arrow.l.r.double.long abs(x-a) <= epsilon $
$ arrow.l.r.double.long a-epsilon <= x <= a+epsilon $
$ arrow.l.r.double.long x in [a - epsilon, a + epsilon] $
]
== Supremum et Infimum

#definition[
  $A subset RR, A != emptyset $
  - $x^* in A$ est maximal $<=> x^* >= x forall x in A <=> x^* = max A$
  - $x_* in A$ est minimal $<=> x_* <= x forall x in A <=> x_* = min A$
]

#exemple[
 $ A = {-5,0,1,sqrt(2), 3} \
    min A = -5, max A = 3
$
]

#exemple[
  $ A = NN -> min A = 0, exists.not max A $
]

#exemple[
  $ A = { 1/n | n in NN^* } \
    max A = 1, exists.not min A
  $
]

#exemple[
  $ A = [0, 1[  -> min A = 0, exists.not max A $
  $ forall x in A, exists x' in A | x'> x, "i.e" x'= (x+1)/2 $
]

#definition[
  $A subset RR , A != emptyset$
  $ M in RR "majore" A <=> x <= M,  forall x in A => A "est majoré" $
  $ m in RR "minore" A <=> m <= x,  forall x in A => A "est minoré" $
  $ A "est borné" <=> (A "est majoré") and (A "est minoré") $
]

#definition[
  $ A subset RR, A != emptyset $
  Soit $ M a j(A) = {M in RR | M "majore" A} $ et $ M i n (A) = {m in RR | m "minore" A} $
  Si $A$ est majoré
  - $s in RR "supremum de" A <=> s = min(M a j(A))$
  - $i in RR "infimum de" A <=> i = max(M i n(A))$
]

#theorem[
  $A subset RR $
  $ A "est majoré" => exists! s in RR | s = sup A $
  $ A "est minoré" => exists! i in RR | i = inf A $
]

#exemple[
  $ A= {1/n | n in   NN^* }, max A = 1 = sup A\ inf A = 0, exists.not min A $
  Soit $s' > 0$ $ exists n in NN^* | n > 1/s' <=> x = 1/n in A < s' \
  0 < x < s' "donc " s' "ne minore pas " A
  $
]
