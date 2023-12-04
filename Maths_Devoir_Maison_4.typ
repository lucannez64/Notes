#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 4",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "4 Décembre, 2023",
)

#set heading(numbering: "1.1.")

== Rédacteur Lucas Duchet-Annez
<rédacteur-lucas-duchet-annez>
== Exercice 1
<exercice-1>
=== Partie A
<partie-a>
On sait que $lr((C f))$ admet deux asymptotes d’équations $x eq 1$ et
$x eq minus 1$ cela veut dire que $f$ n’est pas définie quand $x eq 1$
ou $x eq minus 1$ or f est une fonction rationnelle définie tant que son
dénominateur est différent de 0 soit quand $x^2 minus c eq.not 0$ Donc
$c eq lr((1))^2$ ou $c eq lr((minus 1))^2$ soit $c eq 1$.

$ f lr((x)) minus lr((x plus 2)) eq frac(a x^3 plus b x^2, x^2 minus 1) minus x minus 2 $
$ eq frac(lr((a minus 1)) x^3 plus lr((b minus 2)) x^2 plus x plus 2, x^2 minus 1) $
$ eq frac(x^3 lr((a minus 1 plus frac(b minus 2, x) plus 1 / x^2 plus 2 / x^3)), x^2 lr((1 minus 1 / x^2))) $
$ eq x frac(a minus 1 plus frac(b minus 2, x) plus 1 / x^2 plus 2 / x^3, 1 minus 1 / x^2) $
On sait que $l i m_(x arrow.r plus oo) 1 / x^k eq 0$ donc
$l i m_(x arrow.r plus oo) a minus 1 plus frac(b minus 2, x) plus 1 / x^2 plus 2 / x^3 eq a minus 1$
et $l i m_(x arrow.r plus oo) 1 minus 1 / x^2 eq 1$ De plus
$l i m_(x arrow.r plus oo) x eq plus oo$ Donc
$l i m_(x arrow.r plus oo) f lr((x)) minus lr((x plus 2)) eq l i m_(x arrow.r plus oo) x lr((a minus 1)) eq 0$

Pour que la limite soit 0 il faut que $a minus 1 eq 0$ soit $a eq 1$

Finalement On peut noter
$ f lr((x)) minus lr((x plus 2)) eq x frac(1 minus 1 plus frac(b minus 2, x) plus 1 / x^2 plus 2 / x^3, 1 minus 1 / x^2) $
$ eq frac(frac(b minus 2, plus) 1 / x plus 2 / x^2, 1 minus 1 / x^2) $

A nouveau $1 / x$ et $1 / x^2$ tendent vers $0$ lorsque $x$ tend vers
$plus oo$. Par conséquent on obtient
$l i m_(x arrow.r plus oo) f lr((x)) minus lr((x plus 2)) eq l i m_(x arrow.r plus oo) b minus 2 eq 0$
Donc $b eq 2$

=== Partie B
<partie-b>
+ Pour étudier les variations de $g$ on analyse le signe de sa dérivée.
  $g prime lr((x)) eq 3 x^2 minus 3$ $g prime lr((x)) gt 0$
  $3 x^2 minus 3 gt 0$ $x^2 gt 3 / 3$ $x^2 gt 1$ $x gt 1$ ou
  $x lt minus 1$

Pour calculer les limites de $g$ on factorise par le terme prépondérant.
$g lr((x)) eq x^3 lr((1 minus 3 / x^2 minus 4 / x^3))$ On sait que
$lim_(x arrow.r plus oo) 1 / x^k eq 0$ donc
$lim_(x arrow.r plus oo) 1 minus 3 / x^2 minus 4 / x^3 eq 1$ et
$lim_(x arrow.r plus oo) x^3 eq plus oo$. Par conséquent
$lim_(x arrow.r plus oo) g lr((x)) eq plus oo$ et de manière analogue
$lim_(x arrow.r minus oo) g lr((x)) eq minus oo$ On en déduit

#align(center)[#table(
  columns: 8,
  align: (col, row) => (auto,auto,auto,auto,auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [x], [-∞], [], [-1], [], [1], [], [+∞],
  [signe de g’(x)],
  [],
  [+],
  [0],
  [-],
  [0],
  [+],
  [],
  [var de g],
  [-∞],
  [➚],
  [g(-1)\=-2],
  [➘],
  [g(1)\=-6],
  [➚],
  [+∞],
)
]

#block[
#set enum(numbering: "1.", start: 2)
+ #block[
  #set enum(numbering: "a.", start: 1)
  + On peut étudier chaque intervalle à l’aide du théorème des valeurs
    intermédiaires. Premièrement g est une fonction polynomiale donc
    définie et dérivable sur $bb(R)$, par conséquent g est une fonction
    continue sur $bb(R)$. Sur l’intervalle
    $bracket.r minus oo semi minus 1 bracket.r$ g est croissante et
    $lim_(x arrow.r minus oo) g lr((x)) eq minus oo$,
    $g lr((minus 1)) eq minus 2$ donc $lr((C g))$ ne coupe pas l’axe des
    abscisses et l’équation $g lr((a)) eq 0 lr((E))$ n’as pas de
    solution de manière analogue sur $lr([minus 1 semi 1])$ g est
    décroissante et comme $g lr((minus 1)) lt 0$ $lr((E))$ n’as pas non
    plus de solution. Finalement sur
    $bracket.l 1 semi plus oo bracket.l$ g est croissante et
    $lim_(x arrow.r plus oo) g lr((x)) eq plus oo gt 0$,
    $g lr((1)) eq minus 6 lt 0$ Donc d’après le théorème des valeurs
    intermédiares $lr((E))$ a une unique solution sur l’intervalle
    $bracket.l 1 semi plus oo bracket.l$
  + $g lr((2.19)) eq minus 0.066541$ et $g lr((2.20)) eq 0.048$ ce qui
    veut dire que $g lr((2.19)) lt a lt g lr((2.20))$ soit d’après le
    théorème des valeurs intermédiares $2.19 lt a lt 2.20$
  ]

+ $g lr((x)) gt 0$ $x^3 minus 3 x minus 4 gt 0$ $x gt a$ On en déduit le
  tableau suivant

  #align(center)[#table(
    columns: 6,
    align: (col, row) => (auto,auto,auto,auto,auto,auto,).at(col),
    inset: 6pt,
    [x], [-∞], [], [a], [], [+∞],
    [signe de g(x)],
    [],
    [-],
    [0],
    [+],
    [],
  )
  ]
]

=== Partie C
<partie-c>
+ $f$ est définie quand son dénominateur est différent de $0$ soit quand
  $x^2 minus 1 eq.not 0$ donc quand $x eq.not 1$ et $x eq.not minus 1$
  donc $D_f eq bb(R) backslash brace.l minus 1 semi 1 brace.r$ De plus
  $f lr((x)) eq frac(u lr((x)), v lr((x)))$ avec
  $u lr((x)) eq x^3 plus 2 x^2$ et $v lr((x)) eq x^2 minus 1$ donc son
  ensemble de dérivabilité est
  $D_(f prime) eq bb(R) backslash brace.l minus 1 semi 1 brace.r$ car
  $v$ n’est pas définie quand $x eq 1$ et $x eq minus 1$

+ f satisfait les conditions de la partie A car
  $f lr((0)) eq frac(0^3 plus 2 lr((0^2)), 0^2 minus 1) eq 0$ donc f
  passe par l’origine. De plus $f$ n’est pas définie en $minus 1$ et $1$
  comme dans la partie A et la limite de
  $f lr((x)) minus lr((x plus 2)) eq frac(x^3 plus 2 x^2 minus x^3 plus x minus 2 x^2 plus 2, x^2 minus 1) eq frac(1 plus 2 / x^2, x lr((1 minus 1 / x^2)))$
  Or $lim_(x arrow.r plus oo) 1 / x^k eq 0$ donc
  $lim_(x arrow.r plus oo) f lr((x)) minus lr((x plus 2)) eq 0$ et de
  manière analogue
  $lim_(x arrow.r minus oo) f lr((x)) minus lr((x plus 2)) eq 0$

+ #block[
  #set enum(numbering: "a.", start: 1)
  + $f prime lr((x)) eq frac(lr((x^2 minus 1)) lr((3 x^2 plus 4 x)) minus 2 x lr((x^3 plus 2 x^2)), lr((x^2 minus 1))^2) eq frac(x^4 minus 3 x^2 minus 4 x, lr((x^2 minus 1))^2) eq frac(x g lr((x)), lr((x^2 minus 1))^2)$

  +
  ]

$lim_(x arrow.r lr((minus 1))^minus) f lr((x)) eq plus oo$ car
$x lt minus 1$ $x^2 gt 1$ car $x^2$ est décroissante sur $bb(R)^minus$
$x^2 minus 1 gt 0$

et de manière analogue
$lim_(x arrow.r lr((minus 1))^plus) f lr((x)) eq minus oo$ car
$x gt minus 1$ $x^2 lt 1$ car $x^2$ est décroissante sur $bb(R)^minus$
$x^2 minus 1 lt 0$

De plus $lim_(x arrow.r 1^plus) f lr((x)) eq plus oo$ car $x gt 1$
$x^2 gt 1$ car $x^2$ est croissante sur $bb(R)^plus$ $x^2 minus 1 gt 0$
Finalement $lim_(x arrow.r 1^minus) f lr((x)) eq minus oo$ car $x lt 1$
$x^2 lt 1$ car $x^2$ est croissante sur $bb(R)^plus$ $x^2 minus 1 lt 0$

#align(center)[#table(
  columns: 10,
  align: (col, row) => (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [x], [-∞], [], [-1], [], [0], [], [1], [], [+∞],
  [signe de xg(x)],
  [],
  [+],
  [],
  [+],
  [0],
  [-],
  [],
  [-],
  [],
  [var de f],
  [x+2],
  [➚],
  [||],
  [➚],
  [0],
  [➘],
  [||],
  [➘],
  [x+2],
)
]

#block[
#set enum(numbering: "1.", start: 4)
+ #block[
  #set enum(numbering: "a.", start: 1)
  + $x plus 2 plus frac(x plus 2, x^2 minus 1) eq frac(x plus 2 plus lr((x plus 2)) lr((x^2 minus 1)), x^2 minus 1) eq frac(x plus 2 minus 2 minus x plus x^3 plus 2 x^2, x^2 minus 1) eq f lr((x))$
  + Par conséquent
    $f lr((x)) minus lr((x plus 2)) eq frac(x plus 2, x^2 minus 1)$ Donc
    quand x tend vers $minus oo$ $lr((C f))$ sera légèrement en dessous
    de $Delta$ et inversement quand x tend vers $plus oo$
  ]

+ #figure([#image("DM4_1.png")],
    caption: [
      Graphique
    ]
  )
]

=== Partie D
<partie-d>
#figure([#image("DM4_2.png")],
  caption: [
    h(x) en pointillé
  ]
)

= Brouillon
<brouillon>
== Exercice 2
<exercice-2>
+ #figure([#image("DM4_3.png")],
    caption: [
      Arbre de probabilités
    ]
  )

+ #block[
  #set enum(numbering: "a.", start: 1)
  + $a_2 eq P lr((A_2 sect B_1)) plus P lr((A_2 sect A_1)) eq P_(B_1) lr((A_2)) P lr((B_1)) plus P_(A_2) lr((A_1)) P lr((A_2))$
    donc $a_2 eq 0.5 times 0.24 plus 0.5 times 0.84 eq 0.54$

  + $P_(A_2) lr((B_1)) eq frac(P paren.l A_2 sect B_1, P lr((A_2))) eq frac(0.24 times 0.5, 0.54) eq 2 / 9$
  ]

+ ```
  a. 
  ```

  #image("DM4_4.png") \
  b.
  $a_n plus 1 eq lr((0.24)) lr((1 minus a_n)) plus 0.84 a_n eq 0.24 minus 0.24 a_n plus 0.84 a_n eq 0.6 a_n plus 0.24$

+ Soit à démonter:
  $P lr((n)) upright(": \"") a_n eq 0.6 minus 0.1 times 0.6^(n minus 1) upright("\"")$
  \
  Initialisation: au rang $n eq 1$ on a d’une part $a_1 eq 0.5$ et
  $0.6 minus 0.1 times 0.6^0 eq 0.5$ Donc $P lr((1))$ est vraie
  c’est-à-dire la propriété est initialisée. \
  Hérédité: On suppose qu’il existe un entier naturel $k$ tel que
  $P lr((k))$ soit vraie c’est-à-dire
  $a_k eq 0.6 minus 0.1 times 0.6^(k minus 1)$ \
  On veut démontrer que la propriété est vraie au rang $k plus 1$ \
  $a_(k plus 1) eq 0.6 lr((a_k)) plus 0.24 eq 0.6 lr((0.6 minus 0.1 times 0.6^(k minus 1))) plus 0.24$
  ~
  $a_(k plus 1) eq 0.36 minus 0.1 times 0.6^(k plus 1 minus 1) plus 0.24 eq 0.6 minus 0.1 times 0.6^(k plus 1 minus 1)$
  \
  Donc $P lr((k plus 1))$ est vraie c’est-à-dire $P lr((n))$ est
  héréditaire. \
  Conclusion: La propriété est initialisée et héréditaire donc d’après
  le principe de récurrence
  $forall n in bb(N)^ast.basic upright(", on a :") a_n eq 0.6 minus 0.1 times 0.6^(n minus 1)$

+ $lim_(n arrow.r plus oo) 0.6^n eq 0$ car $minus 1 lt 0.6 lt 1$ Donc
  $lim_(n arrow.r plus oo) a_n eq 0.6$ Ce qui veut dire qu’après un
  grand nombre de jour la probabilité de trouver le vélo au point A au
  matin suivant est de 0.6

+ On peut utiliser un programme de seuil

```python
def seuil(A):
  u=0.5
  n=1
  while u < A:
    n+=1
    u=0.6*u+0.24
  return n
print(seuil(0.599))
```

On obtient n\=11 ce qui veut dire qu’après 11 matin la probabilité
d’obtenir le vélo au point A le matin suivant sera supérieur à 0.599

== Exercice 3
<exercice-3>
D’après le théorème de Pythagore on a $R^2 eq r^2 plus lr((h / 2))^2$
soit $r^2 eq R^2 minus lr((h / 2))^2$ Or le volume d’un cylindre
d’hauteur variable est $V lr((h)) eq pi r^2 h$ Donc
$V lr((h)) eq pi lr((R^2 minus lr((h / 2))^2)) h eq pi h lr((R^2 minus h^2 / 4))$

On peut maintenant étudier les variations de $V$ sur
$bracket.r 0 semi 2 R bracket.l$
$V prime lr((h)) eq pi lr((R^2 minus h^2 / 4)) plus frac(minus 1, 2) h lr((pi h)) eq pi R^2 minus frac(3 pi h^2, 4)$

$ V prime lr((h)) eq 0 $ $ pi R^2 minus frac(3 pi h^2, 4) eq 0 $
$ pi R^2 eq frac(3 pi h^2, 4) $ $ 4 pi R^2 eq 3 pi h^2 $
$ frac(4 pi R^2, 3 pi) eq h^2 $ $ frac(4 R^2, 3) eq h^2 $ Donc
$h eq frac(2 R, sqrt(3))$ \
car $R gt 0$ et $h gt 0$ en tant que longeur.

Donc $h eq frac(2 R, sqrt(3))$ quand $V lr((h))$ est maximal et
$r^2 eq R^2 minus h^2 / 4$ \
$ r^2 eq frac(2 R^2, 3) $
$ r eq frac(R sqrt(2), sqrt(3)) eq sqrt(2 / 3) R $ car $R gt 0$ et
$r gt 0$ en tant que longeur.
