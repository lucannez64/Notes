#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Prepa MPSI Chap1 Ex",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Ex 2
<ex-2>
#block[
#set enum(numbering: "1)", start: 1)
+ Prouvons par l’absurde $forall x in bb(R)$ et $x gt 2$ Supposons que
  $x gt.eq 3$ Si $x eq 2 comma 1$ On a $x gt 2 upright("et") x in bb(R)$
  Or $2 comma 1 lt 3$ donc $x gt.eq.not 3$ Soit la propriété non vraie
  pour tout les $x$ appartenant à $bb(R)$

+ $forall lr((x comma y)) in lr((bb(R)^ast.basic))^2 comma x lt y$
  Posons la fonction $f$ avec $f lr((x)) eq 1 / x$
  $f prime lr((x)) eq minus 1 / sqrt(x)$ $x gt 0 upright("ou") x lt 0$
  Pour $x gt 0$ $f prime lr((x)) lt 0$ $x lt 0$ $f prime lr((x)) gt 0$
  donc $f$ est croissante sur $bracket.r 0 semi plus oo bracket.l$ et
  décroissante sur $bracket.r minus oo semi 0 bracket.l$ Donc en
  composant par f(x) l’égalité devient Pour $x gt 0$ et $y gt 0$
  $1 / x gt 1 / y$ et pour $x lt 0$ et $y lt 0$ $1 / x lt 1 / y$ ce qui
  est différent de la proposition De plus l’égalité est indéterminable
  dans les autres cas

+ Soit $x in bb(R)_plus$. On a : $x lt sqrt(x)$ \
  $arrow.l.r.double x^2 lt x$ $arrow.l.r.double x lr((x minus 1)) lt 0$
]

On en déduit que : - Si $x in bracket.r 0 comma 1 bracket.l$, alors
$x lr((x minus 1)) lt 0$ et donc $x lt sqrt(x)$. - Si $x gt.eq 1$, alors
$x lr((x minus 1)) gt.eq 0$ et donc $x gt.eq sqrt(x)$.

Donc l’énoncé "$exists x in bb(R)_plus upright(", ") x lt sqrt(x)$" est
vrai, puisqu’il existe des réels strictement positifs inférieurs à 1 qui
vérifient cette inégalité.

#block[
#set enum(numbering: "1)", start: 6)
+ $forall x in bb(R) upright(",") quad x^2 plus x gt.eq 0 arrow.r.double x gt.eq 0$
]

Prenons un contre-exemple Posons $x eq minus 1 / 4$ alors
$x^2 plus x eq lr((minus 1 / 4))^2 minus 1 / 4 eq minus 3 / 16 lt 0$
Donc la propriété n’est pas vraie pour tout x dans $bb(R)$
