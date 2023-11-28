#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Exercices 29 11 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "28 Novembre, 2023",
)

#set heading(numbering: "1.1.")

=== Exercice 18
<exercice-18>
+ $ S lr((n)) eq a frac(q^n minus 1, q minus 1) eq 1 frac(5^n minus 1, 1 minus 5) eq frac(5^n minus 1, 4) $
+ D’après la question précédente $ 5^n eq 4 S plus 1 $ donc
  $ 5^n plus 15 eq 4 S plus 16 eq 4 lr((S plus 4)) $ Or
  $S plus 4 in bb(Z)$ donc $5^n plus 15$ est bien un multiple de 4

=== Exercice 4
<exercice-4>
+ $P G C D lr((a comma b)) eq P G C D lr((r comma b))$ On sait que
  $1078 eq 3 times 322 plus 112$ et que $322 eq 2 times 112 plus 98$ et
  $112 eq 98 plus 14$ et $98 eq 14 times 7 plus 0$ donc
  $P G C D lr((1078 comma 322)) eq P G C D lr((14 comma 0)) eq 14$

+ $P G C D lr((a comma b)) eq P G C D lr((a minus b comma b))$ On sait
  que $544 minus 268 eq 276$, $276 minus 268 eq 8$ ,
  $268 minus 8 eq 260$, $260 minus 8 eq 252$,$252 minus 8 eq 244$,
  $244 minus 8 eq 236$, $236 minus 8 eq 228$, …~

#align(center)[#table(
  columns: 3,
  align: (col, row) => (auto,auto,auto,).at(col),
  inset: 6pt,
  [a], [b], [a-b],
  [544],
  [268],
  [276],
  [276],
  [268],
  [8],
  [268],
  [8],
  [260],
  [260],
  [8],
  [252],
  [252],
  [8],
  [244],
  [244],
  [8],
  [236],
  [236],
  [8],
  [228],
  [228],
  [8],
  [220],
  [220],
  [8],
  [212],
  [212],
  [8],
  [204],
  [204],
  [8],
  [196],
  [196],
  [8],
  [188],
  [188],
  [8],
  [180],
  [180],
  [8],
  [172],
  [172],
  [8],
  [164],
  [164],
  [8],
  [156],
  [156],
  [8],
  [148],
  [148],
  [8],
  [140],
  [140],
  [8],
  [132],
  [132],
  [8],
  [124],
  [124],
  [8],
  [116],
  [116],
  [8],
  [108],
  [108],
  [8],
  [100],
  [100],
  [8],
  [92],
  [92],
  [8],
  [84],
  [84],
  [8],
  [76],
  [76],
  [8],
  [68],
  [68],
  [8],
  [60],
  [60],
  [8],
  [52],
  [52],
  [8],
  [44],
  [44],
  [8],
  [36],
  [36],
  [8],
  [28],
  [28],
  [8],
  [20],
  [20],
  [8],
  [12],
  [12],
  [8],
  [4],
  [8],
  [4],
  [4],
)
]

#block[
#set enum(numbering: "1.", start: 3)
+ On sait que 1024 peut s’écrire comme $1 times 1024$ $2 times 512$
  $4 times 256$ $8 times 128$ $16 times 64$ $32 times 32$
]

et 652 peut s’écrire comme $1 times 652$ $2 times 326$ $4 times 163$

Donc le $P G C D lr((652 comma 1024)) eq 4$

#block[
#set enum(numbering: "1.", start: 4)
+ $P G C D lr((a comma b)) eq P G C D lr((r comma b))$
  $1248 eq 1 times 640 plus 608$ $640 eq 1 times 608 plus 32$
  $608 eq 32 times 19 plus 0$
]

Donc $P G C D lr((1248 comma 640)) eq P G C D lr((32 comma 0)) eq 32$

=== Exercice 13
<exercice-13>
On note $s$ le nombre de sachets, $c$ dragées au chocolat, $a$ dragées
aux amandes dans chaque sachet. On a alors $760 eq c s$ et $1045 eq a s$
soit $s$ un diviseur de 760 et 1045 car $c$ et $a$ sont des entiers. On
cherche le nombre maximal de sachets $s$ donc on cherche le
$P G C D lr((760 comma 1045))$ \
En utilisant l’algorithme d’Euclide on obtient : \
$1045 eq 1 times 760 plus 285$ \
$760 eq 285 times 2 plus 190$ \
$285 eq 190 times 1 plus 95$ \
$190 eq 95 times 2 plus 0$ \
$arrow.r.double P G C D lr((760 comma 1045)) eq P G C D lr((95 comma 0)) eq 95$
\
Parconséquent on peut faire au maximum 95 sachets dans lequel il y aura
$1045 / 95 eq 11$ dragées aux amandes par sachet et $760 / 95 eq 8$
dragées au chocolat par sachet
