#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 3",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "27 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 1
<exercice-1>
=== Partie A
<partie-a>
+ Il y a 6 faces sur un cube et il y a 2 faces noires sur le dé A donc
  la probabilité d’obtenir une fois une face noire et
  $P eq 2 / 6 eq 1 / 3$. Comme les deux lancers sont indépendants la
  probabilité d’avoir une face noire au second lancer et aussi de
  $1 / 3$ donc la probabilité d’avoir deux faces noires successivement
  est $P eq 1 / 3 times 1 / 3 eq 1 / 9$ \

+ La probabilité de l’évènement C est égale à la somme des probabilités
  d’avoir deux faces d’une certaine même couleur, Soit :
  $P lr((C)) eq sum_(n eq 0)^2 P_n$ avec
  $n in brace.l 0 comma 1 comma 2 brace.r$ et 0 correspondant à la
  couleur verte, 1 à la couleur noire, et 2 à la couleur rouge On sait
  que $P_1 eq 1 / 9$ d’après la question précédente de manière analogue
  on détermine que $P_0 eq 1 / 6 times 1 / 6 eq 1 / 36$ et que
  $P_2 eq 3 / 6 times 3 / 6 eq 1 / 4$ donc
  $P lr((C)) eq P_0 plus P_1 plus P_2 eq 1 / 36 plus 1 / 9 plus 1 / 4 eq frac(4 plus 1 plus 9, 36) eq 14 / 36 eq 7 / 18$

+ La probabilité qu’à l’issue d’un jeu, les deux faces obtenues soient
  de couleurs différentes est
  $P lr((overline(C))) eq 1 minus P lr((C)) eq 1 minus 7 / 18 eq 11 / 18$

+ Soit l’évènement B : à l’issue d’un jeu, les deux faces obtenues
  soient vertes avec $P lr((B)) eq P_0 eq 1 / 36$ la probabilité de
  $P_C lr((B)) eq P lr((B divides C)) eq frac(P lr((B sect C)), P lr((C))) eq 1 / 36 18 / 7 eq 1 / 14$

=== Partie B
<partie-b>
+ #block[
  #set enum(numbering: "a.", start: 2)
  + Soit A l’évènement obtenir la face verte au premier lancer et B
    l’évènement obtenir la face verte au second lancer
    $P_A lr((B)) eq 2 / 3$ d’après l’arbre des probabilités.
  ]

+ La probabilité d’obtenir deux faces vertes est
  $P lr((A sect B)) eq P lr((A)) times P_A lr((B)) eq 2 / 3 times 2 / 3 eq 4 / 9$

+ La probabilité d’obtenir une face verte au 2ème lancer est
  $P lr((B)) eq P_A lr((B)) plus P_(overline(A)) lr((B)) eq 4 / 9 plus 1 / 3 times 1 / 6 eq 1 / 2$

== Exercice 2
<exercice-2>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + $u_1 eq frac(u_0, 1 plus u_0) eq 1 / 2$
    $u_2 eq frac(u_1, 1 plus u_1) eq 1 / 3$
    $u_3 eq frac(u_2, 1 plus u_2) eq 1 / 4$
  ]

#block[
#set enum(numbering: "a.", start: 2)
+ ```python
  def liste(k):
    L=[]
    u=1
    for i in range(0, k+1):
      L.append(u)
      u=u/(1+u)
    return L 
  ```
]

#block[
#set enum(numbering: "1.", start: 2)
+ Montrons par récurrence que la suite $lr((u_n))$ est strictement
  décroissante. \
  Initialisation: \
  pour le rang n\=0. $u_1 eq 1 / 2$ et $u_0 eq 1$ soit $u_0 gt u_1$ donc
  la propriété est vraie au rang n\=0. \
  Hérédité: \
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
  Conclusion: \
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
  d’après la convergence de la suite. Donc $l eq frac(l, 1 plus l)$
  $l minus frac(l, 1 plus l) eq 0$ \
  $frac(l plus l^2 minus l, 1 plus l) eq 0$ \
  \
  $frac(l^2, 1 plus l) eq 0$ \
  \
  $arrow.l.r.double$ $cases(l^2 eq 0, 1 plus l eq.not 0)$ \
  \
  $arrow.l.r.double$ $cases(l eq 0, l eq.not minus 1)$ \
  Or $l gt 0$ d’après l’énoncé donc $l eq 0$ soit la
  $lim_(n arrow.r plus oo) u_(n plus 1) eq lim_(n arrow.r plus oo) u_n eq 0$

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
  Initialisation: \
  pour $n eq 0$ on a $frac(1, n plus 1) eq 1 1 eq 1$ et
  $u_n eq u_0 eq 1$ donc la propriété $P_0$ est vraie. \
  Hérédité: \
  On suppose qu’il existe un entier naturel k tel que
  $u_k eq frac(1, k plus 1)$ Montrons que $P_k plus 1$ est vraie: \
  $u_(k plus 1) eq frac(u_k, u_k plus 1)$ \
  \
  $u_(k plus 1) eq frac(1, k plus 1) frac(k plus 1, k plus 2)$ \
  \
  $u_(k plus 1) eq frac(1, k plus 2)$ \
  Donc la propriété $P_n$ est héréditaire \
  Conclusion: \
  $forall n in bb(N) med u_n eq frac(1, n plus 1)$ \
  La conjecture est bien démontrée
]
