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

== Exercice 3
<exercice-3>
