#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 2",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "24 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 1
<exercice-1>
=== Partie A
<partie-a>
+

#figure([#image("DM2_9_10_2023_1.png")],
  caption: [
    Cube
  ]
)

#block[
#set enum(numbering: "1.", start: 2)
+ Les points $M comma P comma F comma G$ sont coplanaires si et
  seulenent si $arrow(M P) eq a arrow(M F) plus b arrow(M G)$ avec
  $lr((a semi b)) in bb(R)^2$ \
  \
  $ arrow(M P) eq arrow(M H) plus arrow(H P) upright("(Chasles)")\
  arrow(M P) eq 1 / 2 arrow(E H) plus 1 / 4 arrow(H G) upright("(Données)")\
  arrow(M F) eq arrow(M E) plus arrow(E F) upright("(Chasles)")\
  arrow(M F) eq minus arrow(E M) plus arrow(H G) upright("(Car EFGH est un carré)")\
  arrow(M F) eq minus 1 / 2 E H plus H G upright("(Données)")\
  arrow(M G) eq arrow(M H) plus arrow(H G) upright("(Chasles)")\
  arrow(M G) eq 1 / 2 arrow(E H) plus arrow(H G) upright("(Données)") $
]

\
On peut transcrire le problème sous forme d’un système d’équation : \
\
$cases(1 / 2 eq minus 1 / 2 a plus 1 / 2 b, 1 / 4 eq a plus b)$
$arrow.l.r.double$ \
\
$cases(1 / 2 minus 1 / 2 b eq minus 1 / 2 a, 1 / 4 minus a eq b)$ $arrow.l.r.double$ \
\
$cases(1 / 2 minus 1 / 2 lr((1 / 4 minus a)) eq minus 1 / 2 a, b eq 1 / 4 minus a)$ $arrow.l.r.double$ \
\
$cases(a eq minus 3 / 8, b eq 1 / 4 plus 3 / 8 eq 5 / 8)$ \
\
$S eq lr({lr((minus 3 / 8 semi 5 / 8))})$

\
donc $arrow(M P) comma arrow(M G) comma arrow(M F)$ sont coplanaires
\=\> M,P,E,G sont coplanaires \

#block[
#set enum(numbering: "a.", start: 2)
+ $lr((M P))$ et $lr((F G))$ sont parallèles si et seulement si
  $arrow(M P) eq k arrow(F G)$ avec $k in bb(R)$ \
  \
  $arrow(M P) eq 1 / 2 arrow(E H) plus arrow(H G) upright("(Question précédente)")$
  $arrow(F G) eq arrow(E H) upright("(car EFGH est un carré)")$ \
]

On peut poser le système suivant : \
$cases(1 / 2 eq k, 1 eq 0)$

ce qui est impossible \

donc $lr((M P))$ et $lr((F G))$ ne sont pas parallèles.

=== Partie B
<partie-b>
+ On sait que $lr((M P)) subset lr((E H G))$ et
  $lr((F G)) subset lr((E H G))$ donc que $lr((M P))$ et $lr((F G))$
  sont coplanaires Or $lr((M P))$ et $lr((F G))$ ne sont pas parallèles
  d’après la question précédente et deux droites coplanaires sont soit
  parallèles ou sécantes donc $lr((M P))$ et $lr((F G))$ sont sécantes
  en un point d’intersection $L$

\
\
$ lr((L N)) subset lr((F G C))\
lr((C G)) subset lr((F G C))\
 arrow.r.double lr((L N)) upright(" et ") lr((G C)) upright(" sont coplanaires ") $

\
Or d’après la figure $lr((L N))$ n’est pas parallèle à $lr((G C))$ donc
$lr((L N))$ et $lr((C G))$ sont sécantes en un point d’intersection T \
\

#block[
#set enum(numbering: "1.", start: 3)
+ $lr((L N)) subset lr((F G C))\
  lr((B F)) subset lr((F G C))\)  & arrow.r.double lr((L N)) upright(" et ") lr((B F)) upright(" sont coplanaires ")$
  \
  \
]

Si on considère 3 droites: $lr((d)) comma lr((d^prime)) comma lr((t))$
avec $lr((d)) slash.double lr((d^prime))$ $s^prime lr((t))$ est sécante
à $lr((d))$ alors $lr((t))$ est sécante à $lr((d^prime))$ Or $lr((L N))$
est sécante à $lr((C G))$ et $lr((C G)) slash.double lr((B F))$ car
$F G C B$ est un carré et $lr([G C])$ est le côté opposé à $lr([B F])$
Donc $lr((L N))$ est sécante à (BF) en un point d’intersection $Q$ \
\
#image("DM2_9_10_2023_2.png") \
\

#block[
#set enum(numbering: "a.", start: 2)
+ La section $lr((M N P))$ de $lr((F G C))$ est la droite $lr((T Q))$ et
  d’après le théorème des parallèles la section pas un même plan de deux
  plan forment de deux droites parallèles or
  $lr((F G C)) slash.double lr((H E A))$ donc $lr((Q T))$ est parallèle
  à la droite $lr((M Y))$ avec $Y$ le point d’intersection entre
  $lr((E A))$ et la parallèle de $lr((Q T))$ au point $M$.
  $  & P in lr((H D C)) upright(" La section ") lr((M N P)) upright("de") lr((H G C D)) upright("est ") lr([T P])\
   & T in lr((H D C)) $ \
  \
  $  & Q in lr((E F B))\
   & Y in lr((E F B)) $ donc la section $lr((M N P))$ de $lr((A E F B))$
  est $lr([Y Q])$ \
]

On en déduis que la section (MNP) du cube (EHGFADCB) est (MPTQY)

#figure([#image("DM2_9_10_2023_3.png")],
  caption: [
    Section (MNP) de (EHGFADCB)
  ]
)

=== Partie C
<partie-c>
+ $M lr((0 semi 1 / 2 semi 1)) quad N lr((1 semi 1 / 2 semi 1 / 2)) quad P lr((1 / 4 semi 1 semi 1))$
  \
+ $arrow(M N) vec(x_N minus x_M, y_N minus y_M, z_N minus z_M) quad arrow(M N) vec(1, 0, minus 1 / 2)$
  ~ La longueur de $lr([M N])$ est égale à la norme de $arrow(M N)$
  définit comme : ~
  $parallel arrow(M N) parallel eq sqrt(x^2 plus y^2 plus y^2)$
  $ eq sqrt(1^2 plus 0^2 plus lr((minus 1 / 2))^2) $
  $ eq sqrt(1 plus 1 / 4) eq sqrt(5) / 2 $ \
  \
  donc la longueur de MN est $sqrt(5) / 2$ \
  \
+  \
  $  & arrow(T P) vec(1 / 4 minus 1, 1 minus 1, 1 minus 5 / 8) quad arrow(T P) vec(minus 3 / 4, 0, 3 / 8)\
  \
   & arrow(P N) vec(1 minus 1 / 4, 1 / 2 minus 1, 1 / 2 minus 1) quad arrow(P N) vec(3 / 4, minus 1 / 2, minus 1 / 2)\
  \
   & arrow(T N) vec(0, minus 1 / 2, minus 1 / 8) quad arrow(T N) vec(1 minus 1, 1 / 2 minus 1, 1 / 2 minus 5 / 8)\
   &  $ \
  D’après la réciproque théorème de pythagore un triangle est un
  traingle rectangle si et seulement si le carré de la longueur du plus
  grand côté est égale à la somme des carrés des autres côtés. \
  soit si
  $parallel arrow(P N) parallel^2 eq parallel arrow(T P) parallel^2 plus parallel arrow(T N) parallel^2$

$ lr((parallel arrow(P N) parallel))^2 & eq lr((3 / 4))^2 plus lr((minus 1 / 2))^2 plus lr((minus 1 / 2))^2\
 & eq 17 / 16\
 $

$ lr((parallel arrow(T P) parallel))^2 plus lr((parallel arrow(T N) parallel))^2 & eq lr((minus 3 / 4))^2 plus 0^2 plus lr((3 / 8))^2 plus 0^2 plus lr((minus 1 / 2))^2 plus lr((minus 1 / 8))^2\
 & eq 31 / 32 $

\
Donc TPN n’est pas un triangle rectangle

#link("Maths_DM.pdf")[Maths DM]
