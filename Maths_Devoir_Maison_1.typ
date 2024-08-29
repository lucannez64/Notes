#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 1",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "10 Août, 2024",
)

#set heading(numbering: "1.1.")

== Exercice 1:
<exercice-1>
=== 1.
<section>
$f_1 prime (x) = 2 x^2 + x - 6$ \
$f_1 : bb(R) arrow.r bb(R)$ \
$f_1 prime (x) = 0$ \
$2 x^2 + x - 6 = 0$ \
$Delta = b^2 - 4 a c$ \
$Delta = 1 - 4 \* 2 \* (- 6)$ \
$Delta = 49$ \
$x_1 = 6 / 4 = 3 / 2$ \
\
$x_2 = frac(- 8, 4) = - 2$

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Variation/Signe], [Intervalle],),
    table.hline(),
    [positif], [pour x \< -2],
    [zéro], [à x = -2],
    [négatif], [pour -2\<x\<3/2],
    [zéro], [à x = 3/2],
    [positif], [pour x\>3/2],
    [croissante], [de -inf à -2],
    [décroissante], [de -2 à 3/2],
    [croissante], [de 3/2 à +inf],
  )]
  , kind: table
  )

=== 2.
<section-1>
$f_2 prime (x) = frac(- 11, (4 x - 3)^2)$

Valeurs interdites : \
$4 p - 3 = 0$ \
$4 p = 3$ \
$p = 4 / 3$ \
\
$x eq.not 4 / 3$ \

Ensemble de définition: \
$f_2 : bb(R) without {4 / 3} arrow.r bb(R)$

\

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Variation/Signe], [Intervalle],),
    table.hline(),
    [négatif], [de -inf à 3/4],
    [indéfini], [à 3/4],
    [négatif], [de 3/4 à +inf],
    [décroissante], [de -inf à 3/4],
    [indéfini], [à 3/4],
    [décroissante], [de 3/4 à +inf],
  )]
  , kind: table
  )

=== 3.
<section-2>
$f_3 prime (x) = e^x sqrt(x) + frac(e^x, 2 sqrt(x)) = frac(e^x (2 x + 1), 2 sqrt(x))$
\
Ensemble de définition : \
$f_3 : bb(R)^(+) arrow.r bb(R)^(+)$

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Variation/Signe], [Intervalle],),
    table.hline(),
    [positif], [de 0\<x à +inf],
    [croissante], [de 0\<x à +inf],
  )]
  , kind: table
  )

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
+ $x = - 5 arrow.r y = 5.385164807134504$ \
  $x = 10 arrow.r prime n o n med d é f i n i prime$
]

== Exercice 3
<exercice-3>
Soit à démontrer: \
$(P_n) : sum_(k = 1)^n k^2 = frac(n (n + 1) (2 n + 1), 6)$ \
\
Initialisation: \
pour $n = 1$ $ sum_(k = 1)^x k^2 = 1\
frac(n (n + 1) (2 n + 1), 6)\
= 6 / 6 = 1 $ donc la propriété $(P_n)$ est vraie au rang $n = 1$ \
\
Hérédité: \
On suppose que la propriété est vraie au rang $n = p$ \
On va montrer que : \
$sum_(k = 1)^(p + 1) k^2 = frac((p + 1) (p + 2) (2 (p + 1) + 1), 6)$
$ sum_(k = 1)^(p + 1) k^2 = frac(p (p + 1) (2 p + 1), 6) + p^2 + 2 p + 1\
= frac(2 p^3 + 3 p^2 + p + 6 p^2 + 12 p + 6, 6)\
= frac(2 p^3 + 9 p^2 + 13 p + 6, 6) $

$ frac((p + 1) (p + 2) (2 p + 3), 6)\
= frac((p^2 + 3 p + 2) (2 p + 3), 6)\
= frac(2^3 + 9 p^2 + 13 p + 6, 6) $ \
donc la propriété $(P_n)$ est vraie au rang p+1 \
\
Conclusion: \
D’après le principe de récurrence pour àut entier naturel $n gt.eq 1$,
$sum_(k = 1)^n k^2 = frac(n (n + 1) (2 n + 1), 6)$

== Exercice 4
<exercice-4>
\
On commence par calculer l’aire d’un cercle en posant $x$ comme le
périmètre du cercle: \
\
$A = pi r^2$ et $P = 2 pi r$ \
soit $r = frac(P, 2 pi)$ \
donc $A_c (x) = frac(x^2, 4 pi)$ \
On calcule l’aire du triangle équilatéral avec $(1 - x)$ comme le
périmètre du triangle \
\
$A_t e = sqrt(3) / 4 a^2$ avec $a = (1 - x) / 3$ donc comme un côté du
triangle \
\
$arrow.r.double A_t e (x) = sqrt(3) / 36 (1 - x)^2$ \
\
On obtient l’aire totale \
\
$A_t (x) = frac(x^2, 4 pi) + sqrt(3) / 36 (1 - x)^2$ \
\
$A_t (x) = 1 / 18 (9 x^2 + (1 - x)^2 + sqrt(3) pi)$ \
\
Pour miniser $A_t$ on calcule sa dérivée \
\
$A_t prime (x) = frac(18 x + sqrt(3) pi (2 x - 2), 36 pi)$ \
\
\
On calcule maitenant la racine de $A_t prime$ \
\
$A_t prime (x) = 0$ \
\
$frac(18 x + sqrt(3) pi (2 x - 2), 36 pi) = 0$ \
\
$frac(1, 2 pi) x + sqrt(3) / 18 x - sqrt(3) / 18 = 0$ \
\
$frac(9 x + sqrt(3) pi x, 18 pi) = sqrt(3) / 18$ \
\
$x (9 + sqrt(3) pi) = sqrt(3) pi$ \
\
$x = frac(sqrt(3) pi, 9 + sqrt(3) pi)$ \
\
$x approx 0.38 m$ \
Donc la longeur du morceaux formant le cercle est d’environ 0.38m \
et celle formant le triangle équilatéral : ~ \
\
$(1 - x) = frac(9, sqrt(3) pi + 9)$ \
\
$(1 - x) approx 0.62$ \

La longeur du deuxième morceaux est d’environ 0.62m

#link("Maths_DM.pdf")[Maths DM]
