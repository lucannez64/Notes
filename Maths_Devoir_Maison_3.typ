#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 3",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 1
<exercice-1>
=== Partie A
<partie-a>
+ Soit $P_n$ la probabilité d’obtenir une face de couleur $n$ au premier
  lancer avec $n in brace.l 0 comma 1 comma 2 brace.r$ où 0 correspond à
  la couleur verte, 1 à la couleur noire et 2 à la couleur rouge. Les
  lancers étant indépendants, la probabilité d’obtenir deux faces de
  couleur $n$ est $P_n^2$. On a alors : $P_0 eq 2 / 6 eq 1 / 3$
  $P_1 eq 2 / 6 eq 1 / 3$ $P_2 eq 3 / 6 eq 1 / 2$ La probabilité
  d’obtenir deux faces noires est donc $P_1^2 eq 1 / 9$. \

+ Notons $C$ l’événement "les deux faces obtenues sont de la même
  couleur". On a alors :
  $ P lr((C)) eq P_0^2 plus P_1^2 plus P_2^2 eq 1 / 36 plus 1 / 9 plus 1 / 4 eq 7 / 18 $

+ La probabilité qu’à l’issue d’un jeu, les deux faces obtenues soient
  de couleurs différentes est la probabilité de l’événement contraire
  $overline(C)$ qui s’obtient par :
  $ P lr((overline(C))) eq 1 minus P lr((C)) eq 1 minus 7 / 18 eq 11 / 18 $

+ Notons $B$ l’événement "les deux faces obtenues sont vertes" inclus
  dans $C$. On sait que $P lr((B)) eq P_0^2 eq 1 / 36$. La probabilité
  conditionnelle s’écrit alors :
  $ P_C lr((B)) eq frac(P lr((B sect C)), P lr((C))) eq frac(P lr((B)), P lr((C))) eq frac(1 slash 36, 7 slash 18) eq 1 / 14 $

=== Partie B
<partie-b>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + #figure([#image("DM3_13_11_2023.png")],
      caption: [
        Arbre des probabilités
      ]
    )
  ]

#block[
#set enum(numbering: "a.", start: 2)
+ Notons $A$ l’événement "obtenir une face verte au premier lancer" et
  $B$ l’événement "obtenir une face verte au second lancer". On lit sur
  l’arbre des probabilités : $P_A lr((B)) eq 2 / 3$. \
]

#block[
#set enum(numbering: "1.", start: 2)
+ La probabilité d’obtenir deux faces vertes est
  $P lr((A sect B)) eq P lr((A)) times P_A lr((B)) eq 2 / 3 times 2 / 3 eq 4 / 9$

+ La probabilité d’obtenir une face verte au 2ème lancer est
  $ P lr((B)) eq P_A lr((B)) P lr((A)) plus P_(overline(A)) lr((B)) P lr((overline(A))) eq 4 / 9 plus 1 / 3 times 1 / 6 eq 1 / 2 $
]

== Exercice 2
<exercice-2>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + Calculons les premiers termes de la suite:
    $u_1 eq frac(u_0, 1 plus u_0) eq 1 / 2$,
    $u_2 eq frac(u_1, 1 plus u_1) eq 1 / 3$,
    $u_3 eq frac(u_2, 1 plus u_2) eq 1 / 4$
  ]

\
b.

```python
def liste(k):
  L=[]
  u=1
  for i in range(0, k+1):
    L.append(u)
    u=u/(1+u)
  return L 
```

#block[
#set enum(numbering: "1.", start: 2)
+ Montrons par récurrence que la suite $lr((u_n))$ est strictement
  décroissante. \
  Soit à démontrer : $P_n colon u_(n plus 1) lt u_n$ \
  #emph[Initialisation:] \
  Pour le rang n\=0, on a $u_1 eq 1 / 2$ et $u_0 eq 1$ soit $u_0 gt u_1$
  donc la propriété est vraie au rang n\=0. \
  #emph[Hérédité:] \
  On suppose qu’il existe un entier naturel k tel que
  $u_(k plus 1) lt u_k$. Montrons que la propriété est vraie au rang
  $n eq k plus 1$. On pose la fonction f qui à x renvoie
  $frac(x, 1 plus x)$ définie et dérivable sur
  $bracket.l 0 semi plus oo bracket.l$ en dérivant f on obtient
  $f prime lr((x)) eq 1 / lr((1 plus x))^2$ or $lr((1 plus x))^2 gt 0$
  pour $x gt.eq 0$ donc $f prime lr((x)) gt 0$ sur
  $bracket.l 0 semi plus oo bracket.l$ donc f est croissante sur ce même
  intervalle on peut donc composer par f.
  $f lr((u_(k plus 1))) lt f lr((u_k))$ $u_(k plus 2) lt u_(k plus 1)$
  Donc la propriété est héréditaire. \
  #emph[Conclusion:] \
  $forall n in bb(N)$, $u_(n plus 1) lt u_n$, la suite $lr((u_n))$ est
  strictement décroissante.

+ Montrons que la suite $lr((u_n))$ converge:
]

La suite $lr((u_n))$ est strictement décroissante d’après la question
précédente. De plus la suite $lr((u_n))$ est minorée par 0 puisque
$forall n in bb(N) med u_n gt 0$ d’après l’énoncé.

Or, toute suite strictement décroissante et minorée converge vers un
réel l d’après le théorème 4.2 du cours sur la convergence des suites
monotones.

#block[
#set enum(numbering: "1.", start: 4)
+ $lim_(n arrow.r plus oo) u_(n plus 1) eq lim_(n arrow.r plus oo) u_n eq l$
  d’après la convergence de la suite. Donc $l eq frac(l, 1 plus l)$ \
  $arrow.l.r.double l minus frac(l, 1 plus l) eq 0$ \
  \
  $arrow.l.r.double frac(l plus l^2 minus l, 1 plus l) eq 0$ \
  \
  $arrow.l.r.double frac(l^2, 1 plus l) eq 0$ \
  \
  $arrow.l.r.double$ $cases(l^2 eq 0, 1 plus l eq.not 0)$ \
  \
  $arrow.l.r.double$ $cases(l eq 0, l eq.not minus 1)$ \
  Or $l gt 0$ d’après l’énoncé donc $l eq 0^plus$ soit la
  $lim_(n arrow.r plus oo) u_(n plus 1) eq lim_(n arrow.r plus oo) u_n eq 0^plus$

+ #block[
  #set enum(numbering: "a.", start: 1)
  + On conjecture à partir des premiers termes de la suite que
    $u_n eq frac(1, n plus 1)$.
  ]
]

#block[
#set enum(numbering: "a.", start: 2)
+ Soit la proposition $P_n colon u_n eq frac(1, n plus 1)$ \
  Montrons que $P_n$ est vraie pour tout entier naturel n par
  récurrence: \
  #emph[Initialisation:] \
  pour $n eq 0$ on a $frac(1, n plus 1) eq 1 1 eq 1$ et
  $u_n eq u_0 eq 1$ donc la propriété $P_0$ est vraie. \
  #emph[Hérédité:] \
  On suppose qu’il existe un entier naturel k tel que
  $u_k eq frac(1, k plus 1)$ \
  Montrons que $P_k plus 1$ est vraie: \
  $u_(k plus 1) eq frac(u_k, u_k plus 1)$ \
  \
  $u_(k plus 1) eq frac(1, k plus 1) frac(k plus 1, k plus 2)$ \
  \
  $u_(k plus 1) eq frac(1, k plus 2)$ \
  Donc la propriété $P_n$ est héréditaire \
  #emph[Conclusion:] \
  $forall n in bb(N) med u_n eq frac(1, n plus 1)$ \
  La conjecture est bien démontrée
]

== Exercice 3
<exercice-3>
\
1.

$lr((I J))$ est sécante avec $lr((A B))$ en le point d’intersection $J$
et $lr((A B)) slash.double lr((E F))$ car $lr([A B])$ et $lr([E F])$
sont des faces opposées du cube donc $lr((I J))$ est sécante avec
$lr((E F))$ en un point d’intersection $P$. Or,
$lr((E F)) subset lr((E F G))$, par conséquent $lr((I J))$ coupe le plan
$lr((E F G))$ au point d’intersection $P$.

#block[
#set enum(numbering: "1.", start: 2)
+ $K in lr((E F G))$ et $K in lr((I J)) subset lr((I J K))$,
  $P in lr((E F G))$ et $P in lr((I J)) subset lr((I J K))$ donc
  l’intersection des plans (IJK) et (EFG) est la droite (PK)

+ La section $lr((I J K))$ de $lr((A B F))$ est la droite $lr((I J))$ et
  d’après le théorème des parallèles la section par un même plan de deux
  plan forment deux droites parallèles or
  $lr((A B F)) slash.double lr((D C G))$ donc $lr((I J))$ est parallèle
  à la droite $lr((K R))$ avec $R$ le point d’intersection entre
  $lr((G C))$ et la parallèle de $lr((I J))$ au point $K$. La section
  $lr((I J K))$ de $lr((E F G))$ est la droite $lr((P K))$ donc la
  section de la face $E F G H$ par le plan $lr((I J K))$ est le segment
  $lr([S K])$ avec $S$ le point d’intersection entre $lr((P K))$ et
  $lr((E H))$ d’après le théorème des parallèles la section par un même
  plan de deux plan forment deux droites parallèles or
  $lr((E F G)) slash.double lr((A B C))$ donc $lr((S K))$ est parallèle
  à la droite $lr((J Q))$ avec $Q$ le point d’intersection entre
  $lr((B C))$ et la parallèle de $lr((S K))$ au point $J$. De plus
  $S in lr((I J K)) upright("et") S in lr((H E)) subset lr((H E A))$ de
  même
  $I in lr((I J K)) upright("et") I in lr((E A)) subset lr((H E A))$ par
  conséquent $lr([S I])$ est la section de la face $H E A D$ par le plan
  $lr((I J K))$. Finalement
  $R in lr((G C)) subset lr((B C G)) upright("et") R in lr((I J K))$ de
  même
  $Q in lr((B C)) subset lr((B C G)) upright("et") Q in lr((I J K))$ par
  conséquent $lr([R Q])$ est la section de la face $F G C B$ par le plan
  $lr((I J K))$. Par conséquent la section du cube $A B C D E F G H$ par
  le plan $lr((I J K))$ est l’hexagone $I J Q R K S$
]

== Exercice 4
<exercice-4>
\
Considérons la fonction
$ f & colon & lr([2 semi 2 comma 1]) & arrow.r & bb(R)\
 &  & x & arrow.r.bar & f lr((x))\
 $ tel que
$f lr((x)) eq frac(x, lr((x minus 1))^2 plus x) eq frac(x, x^2 minus x plus 1)$
dérivable sur l’intervalle $lr([2 semi 2 comma 1])$ \
Étudions la variation de $f$: \
Pour tout $x in lr([2 semi 2 comma 1])$, la dérivée de $f$ est
$f prime lr((x)) eq frac(1 minus x^2, lr((x^2 minus x plus 1))^2)$ \
De plus pour tout $x in lr([2 semi 2 comma 1])$,
$x gt 1 arrow.r.double x^2 gt 1$ On en déduit que
$minus x^2 lt minus 1 arrow.r.double 1 minus x^2 lt 0$ \
Enfin
$lr((x^2 minus x plus 1))^2 gt 0 arrow.r.double forall x in bb(R) upright(",") frac(1 minus x^2, lr((x^2 minus x plus 1))^2) lt 0$
\
Soit $f prime lr((x)) lt 0$ sur l’intervalle $lr([2 semi 2 comma 1])$
autrement dit f est décroissante sur $lr([2 semi 2 comma 1])$. \
On pose $a eq 2 comma 014014014014$ et $b eq 2 comma 014014014016$ \
Puisque $a lt b$, on a $f lr((a)) gt f lr((b))$ en composant par la
fonction f \
Or $f lr((a)) eq A$ et $f lr((b)) eq B$ donc $A gt B$ \
En conclusion A est plus grand que B
