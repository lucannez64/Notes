#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Expertes Ex 12 12 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "11 Décembre, 2023",
)

#set heading(numbering: "1.1.")

=== Exercice 37p150
<exercice-37p150>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + $16 times lr((minus 17)) plus 21 times 13 eq 1$ Donc le couple
    $lr((minus 17 semi 13))$ est solution de $16 x plus 21 y eq 1$

  + On peut écrire $lr((E))$ comme
    $797 lr((16 x plus 21 y)) eq 1 lr((797))$ Donc en multipliant le
    couple solution de la première équation on obtient une solution
    particulière de $lr((E))$ soit le couple
    $lr((minus 13549 semi 10361))$ est solution de $lr((E))$

  + $16 times 4 plus 21 times lr((minus 3)) eq 1$ Donc le couple
    $lr((4 semi minus 3))$ est solution de $16 x plus 21 y eq 1$

  + On peut écrire $lr((E))$ comme
    $797 lr((16 x plus 21 y)) eq 1 lr((797))$ Donc en multipliant le
    couple solution de la première équation on obtient une solution
    particulière de $lr((E))$ soit le couple
    $lr((3188 semi minus 2391))$ est solution de $lr((E))$
  ]

+ Soit $lr((x semi y))$ solution. Alors
  $16 lr((x minus 3188)) plus 21 lr((y plus 2391)) eq 0$ donc
  $16 lr((3188 minus x)) eq 21 lr((y plus 2391))$, or en utilisant
  l’algorithme d’Euclide $P G C D lr((16 semi 21)) eq 1$ car
  $21 eq 16 times 1 plus 5$ , $16 eq 5 times 3 plus 1$ ,
  $5 eq 5 times 1 plus 0$ donc $16$ et $21$ sont premiers entre eux,
  selon le théorème de Gauss, $21 bar.v 3188 minus x$ donc il existe un
  entier relatif $k$ tel que $3188 minus x eq 21 k$
  $x eq 3188 minus 21 k$. On a donc
  $16 lr((3188 minus 3188 plus 21 k)) eq 21 lr((y plus 2391))$
  $16 k eq y plus 2391$ $y eq 16 k minus 2391$ Donc le couple
  $lr((3188 minus 21 k semi 16 k minus 2391))$ est solution avec
  $k in m a t h b b Z$

$S eq brace.l lr((3188 minus 21 k semi 16 k minus 2391)) comma k in m a t h b b Z brace.r$

#block[
#set enum(numbering: "1.", start: 2)
+ Tant que $3188 minus 21 k gt 0$ et $16 k minus 2391 gt 0$ car il ne
  peut pas perdre de l’argent sur un plat il existe un couple solution.
  Or quand $k eq 150$, $lr((38 semi 9))$ est un couple solution et en
  prenant $k eq 151$, $lr((17 semi 25))$ Donc pour tout $k gt 149$ il
  existe un couple solution dans $bb(N)^2$, on ne peut donc pas
  déterminer le nombre de repas de chaque sorte que le restaurateur a
  servi.
]

=== Exercice 39p150
<exercice-39p150>
+ Vrai le couple $lr((minus 1 semi 1))$ est solution
+ Faux. En divisant par 3 on obtient $10 x minus 4 y eq 1$ soit selon le
  théoème de Bézout $4$ et $10$ premiers entre eux or $4$ et $10$ ont
  $2$ comme diviseur commun donc $P G C D eq.not 1$
+ Faux. $lr((1 semi 1))$ sont solution et $lr((4 semi minus 1))$ donc il
  existe au moins deux solution à cette équation
+ Vrai. Cette équation a des équations si et seulement si $5$ et $12$
  sont premiers entre eux d’après le théorème de Bézout. En utilisant
  l’algorithme d’Euclide on obtient $12 eq 2 times 5 plus 2$
  $5 eq 2 times 2 plus 1$ $2 eq 1 times 2 plus 0$ soit
  $P G C D lr((12 semi 5)) eq 1$ donc $5$ et $12$ sont bien premiers
  entre eux.
