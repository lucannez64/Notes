#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "m dm 18 09 2023",
  authors: (
    "Lucas",
  ),
  date: "16 Septembre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 1:
<exercice-1>
=== 1.
<section>
$f_1 prime lr((x)) eq 2 x^2 plus x minus 6$ \
$f_1 colon bb(R) arrow.r bb(R)$ \
$f_1 prime lr((x)) eq 0$ \
$2 x^2 plus x minus 6 eq 0$ \
$Delta eq b^2 minus 4 a c$ \
$Delta eq 1 minus 4 ast.basic 2 ast.basic lr((minus 6))$ \
$Delta eq 49$ \
$x_1 eq 6 / 4 eq 3 / 2$ \
\
$x_2 eq frac(minus 8, 4) eq minus 2$

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Variation/Signe], [Interval],
  [positif],
  [pour x \< -2],
  [zéro],
  [à x \= -2],
  [négatif],
  [pour -2\<x\<3/2],
  [zéro],
  [at x \= 3/2],
  [positif],
  [pour x\>3/2],
  [croissante],
  [de -inf à -2],
  [décroissante],
  [de -2 à 3/2],
  [croissante],
  [de 3/2 à +inf],
)
]

=== 2.
<section-1>
$f_2 prime lr((x)) eq frac(minus 11, lr((4 x minus 3))^2)$

Valeurs interdites : \
$4 p minus 3 eq 0$ \
$4 p eq 3$ \
$p eq 4 / 3$ \
\
$x eq.not 4 / 3$ \

Ensemble de définition: \
$f_2 colon bb(R) without lr({4 / 3}) arrow.r bb(R)$

\

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Variation/Signe], [Interval],
  [négatif],
  [de -inf à 3/4],
  [indéfini],
  [à 3/4],
  [négatif],
  [de 3/4 à +inf],
  [décroissante],
  [de -inf à 3/4],
  [indéfini],
  [at 3/4],
  [décroissante],
  [de 3/4 à +inf],
)
]

=== 3.
<section-2>
$f_3 prime lr((x)) eq e^x sqrt(x) plus frac(e^x, 2 sqrt(x)) eq frac(e^x lr((2 x plus 1)), 2 sqrt(x))$
\
Ensemble de définition : \
$f_3 colon bb(R)^plus arrow.r bb(R)^plus$

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Variation/Signe], [Interval],
  [positif],
  [on 0\<x à +inf],
  [croissante],
  [on 0\<x à +inf],
)
]

== Exercice 2
<exercice-2>
+ elle prend deux arguments f et x soit une fonction et un nombre

+ Le résultat est 'positif'

+ elle donne le signe d’un nombre après avoir appliqué une fonction f

+

#block[
#set enum(numbering: "a.", start: 1)
+ L’instruction lambda sert à définir une fonction anonyme (sans nom)
+ 'positif'
]

#block[
#set enum(numbering: "1.", start: 5)
+
]

```python
from math import * 
def racine(f, x):
  if (2*f(x)-1)>=0:
    return sqrt(2*f(x)-1)
  else:
    return 'non défini'

def f(x):
  return 5-2*x

print(racine(f, -5))
print(racine(f, 10))
```

#block[
#set enum(numbering: "1.", start: 6)
+ $x eq minus 5 arrow.r y eq 5.385164807134504$ \
  $x eq 10 arrow.r prime n o n med d é f i n i prime$
]

== Exercice 3
<exercice-3>
Soit à démontrer: \
$lr((P_n)) colon sum_(k eq 1)^n k^2 eq frac(n lr((n plus 1)) lr((2 n plus 1)), 6)$
\
\
Initialisation: \
pour $n eq 1$ $ sum_(k eq 1)^x k^2 eq 1\
frac(n lr((n plus 1)) lr((2 n plus 1)), 6)\
eq 6 / 6 eq 1 $ donc la propriété $lr((P_n))$ est vraie au rang $n eq 1$
\
\
Hérédité: \
On suppose que la propriété est vraie au rang $n eq p$ \
On va montrer que : \
$sum_(k eq 1)^(p plus 1) k^2 eq frac(lr((p plus 1)) lr((p plus 2)) lr((2 lr((p plus 1)) plus 1)), 6)$
$ sum_(k eq 1)^(p plus 1) k^2 eq frac(p lr((p plus 1)) lr((2 p plus 1)), 6) plus p^2 plus 2 p plus 1\
eq frac(2 p^3 plus 3 p^2 plus p plus 6 p^2 plus 12 p plus 6, 6)\
eq frac(2 p^3 plus 9 p^2 plus 13 p plus 6, 6) $

$ frac(lr((p plus 1)) lr((p plus 2)) lr((2 p plus 3)), 6)\
eq frac(lr((p^2 plus 3 p plus 2)) lr((2 p plus 3)), 6)\
eq frac(2^3 plus 9 p^2 plus 13 p plus 6, 6) $ \
donc la propriété $lr((P_n))$ est vraie au rang p+1 \
\
Conclusion: \
D’après le principe de récurrence pour àut entier naturel $n gt.eq 1$,
$sum_(k eq 1)^n k^2 eq frac(n lr((n plus 1)) lr((2 n plus 1)), 6)$

== Exercice 4
<exercice-4>
\
On commence par calculer l’aire d’un cercle en posant $x$ comme le
périmètre du cercle: \
\
$A eq pi r^2$ et $P eq 2 pi r$ \
soit $r eq frac(P, 2 pi)$ \
donc $A_c lr((x)) eq frac(pi x^2, 4 pi^2)$ \
On calcule l’aire du triangle équilatéral avec $lr((1 minus x))$ comme
le périmètre du triangle \
\
$A_t e eq sqrt(3) / 2 a^2$ avec $a eq lr((1 minus x)) / 3$ donc comme un
côté du triangle \
$arrow.r.double A_t e lr((x)) eq sqrt(3) / 2 lr((frac(1 minus x, 3)))^2$
\
\
On obtient l’aire totale \
\
$A_t lr((x)) eq frac(pi x^2, 4 pi^2) plus sqrt(3) / 2 lr((frac(1 minus x, 3)))^2$
\
\
$A_t lr((x)) eq frac(x^2, 4 pi) plus 1 / 18 sqrt(3) lr((1 minus 2 x plus x^2))$
\
\
Pour miniser $A_t$ on calcule sa dérivée \
\
$A_t prime lr((x)) eq frac(8 x pi, lr((4 pi))^2) plus 1 / 18 sqrt(3) lr((2 x minus 2))$
\
\
$A_t prime lr((x)) eq frac(8 pi, lr((4 pi))^2) x plus sqrt(3) / 9 x minus sqrt(3) / 9$
\
\
On calcule maitenant la racine de $A_t prime$ \
\
$A_t prime lr((x)) eq 0$ \
\
$frac(8 pi, lr((4 pi))^2) x plus sqrt(3) / 9 x minus sqrt(3) / 9 eq 0$ \
\
$x lr((frac(8 pi, lr((4 pi))^2) plus sqrt(3) / 9)) minus sqrt(3) / 9 eq 0$
\
\
$x paren.l frac(1, 2 pi) plus sqrt(3) / 9 eq sqrt(3) / 9$ \
\
$x lr((frac(2 sqrt(3) pi plus 9, 18 pi))) eq sqrt(3) / 9$ \
\
$x eq sqrt(3) / 9 ast.basic frac(18 pi, 2 sqrt(3) pi plus 9)$ \
\
$x eq frac(18 sqrt(3) pi, 18 sqrt(3) pi plus 81)$ \
\
$x eq frac(2 sqrt(3) pi, 2 sqrt(3) pi plus 9)$ \
\
$x approx 0.55 m$ \
Donc la longeur du morceaux formant le cercle est d’environ 0.55m \
et celle formant le triangle équilatéral : ~ \
\
$lr((1 minus x)) eq frac(2 sqrt(3) pi plus 9 minus 2 sqrt(3) pi, 2 sqrt(3) pi plus 9)$
\
\
$lr((1 minus x)) eq frac(9, 2 sqrt(3) pi plus 9)$ \
\
$lr((1 minus x)) approx 0.45$ \

La longeur du deuxième morceaux est d’environ 0.45m

#link("Maths_DM.pdf")[Maths DM]
