#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "m dm 18 09 2023",
  authors: (
    "Lucas",
  ),
  date: "13 Septembre, 2023",
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
  [Variation], [Interval],
  [positive],
  [on x\<-2],
  [zero],
  [at x \= -2],
  [negative],
  [on -2\<x\<3/2],
  [zero],
  [at x \= 3/2],
  [positive],
  [on x\>3/2],
  [increase],
  [from -inf to -2],
  [decrease],
  [from -2 to 3/2],
  [increase],
  [from 3/2 to +inf],
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

Ensemble de définition
$f_2 colon bb(R) without lr({4 / 3}) arrow.r bb(R)$

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Variation], [Interval],
  [negative],
  [from -inf to 3/4],
  [not defined],
  [at 3/4],
  [negative],
  [from 3/4 to +inf],
  [decrease],
  [from -inf to 3/4],
  [not defined],
  [at 3/4],
  [decrease],
  [from 3/4 to +inf],
)
]

=== 3.
<section-2>
$f_3 prime lr((x)) eq e^x sqrt(x) plus frac(e^x, 2 sqrt(x)) eq frac(e^x lr((2 x plus 1)), 2 sqrt(x))$
$f_3 colon bb(R)^plus arrow.r bb(R)^plus$

#align(center)[#table(
  columns: 2,
  align: (col, row) => (auto,auto,).at(col),
  inset: 6pt,
  [Variation], [Interval],
  [positive],
  [on 0\<x to +inf],
  [increase],
  [on 0\<x to +inf],
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
D’après le principe de récurrence pour tout entier naturel $n gt.eq 1$,
$sum_(k eq 1)^n k^2 eq frac(n lr((n plus 1)) lr((2 n plus 1)), 6)$

#link("Maths_DM.pdf")[Maths DM]
