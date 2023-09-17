#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Correction Olympiades Partie 1",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "17 Septembre, 2023",
)

#set heading(numbering: "1.1.")

=== 1. Quelques exemples
<quelques-exemples>
#block[
#set enum(numbering: "a.", start: 1)
+ On peut construire une autre liste de longueur 8 et de score 3 en
  changeant l’ordre de certains éléments tout en gardant 3 inversions.
  Par exemple :
]

\[4,2,6,7,1,5,3,8\]

Ici on a inversé 2 et 5 par rapport à la liste initiale, ainsi que 6 et
7, tout en gardant le même nombre d’inversions (3).

#block[
#set enum(numbering: "a.", start: 2)
+ Avec n\=3, il y a 3! \= 6 listes possibles. Les voici avec leur score
  :
]

- \[1,2,3\] : score 0 (liste triée dans l’ordre croissant)
- \[1,3,2\] : score 1 (une inversion 3-2) \
- \[2,1,3\] : score 1 (une inversion 2-1)
- \[2,3,1\] : score 1 (une inversion 3-1)
- \[3,1,2\] : score 1 (une inversion 3-2)
- \[3,2,1\] : score 2 (deux inversions 3-2 et 3-1)

=== 2. Fonction Python
<fonction-python>
```python
def score(L, n):
  compteur = 0
  for i in range(n-1):
    if L[i] < L[i+1]:
      compteur += 1
  return compteur
```

=== 3. Démonstration des bornes du score
<démonstration-des-bornes-du-score>
- Score minimum \= 0. C’est le cas quand la liste est triée dans l’ordre
  croissant, il n’y a alors aucune inversion.
- Score maximum \= n-1. C’est le cas quand la liste est triée dans
  l’ordre décroissant. Il y a alors une inversion entre chaque paire
  d’éléments successifs, soit n-1 inversions.
- Exemple de liste avec score 0 : \[1, 2, 3, …, n\] \
- Exemple de liste avec score n-1 : \[n, n-1, n-2, …, 1\]

=== 4. Existence d’une liste de score k
<existence-dune-liste-de-score-k>
#block[
#set enum(numbering: "a.", start: 1)
+ On peut construire une telle liste comme suit : on prend les k plus
  grands éléments dans l’ordre décroissant, puis on ajoute les n-k plus
  petits éléments dans l’ordre croissant. Cette liste aura alors
  exactement k inversions.
]

Par exemple avec n \= 8 et k \= 3 : \
\[7, 6, 5, 1, 2, 3, 4, 8\]

#block[
#set enum(numbering: "a.", start: 2)
+ Oui il existe plusieurs listes avec le même score k. Par exemple avec
  n \= 5 et k \= 2 :
]

\[4, 5, 1, 2, 3\] \
\[5, 4, 1, 2, 3\]

Ces deux listes ont toutes les deux exactement 2 inversions (entre 4 et
1, et entre 5 et 1).

=== 5. Formules pour L\_n(0) et L\_n(n-1)
<formules-pour-l_n0-et-l_nn-1>
L\_n(0) \= 1 car il n’y a qu’une seule liste possible avec 0 inversion :
la liste triée par ordre croissant.

L\_n(n-1) \= 1 car il n’y a qu’une seule liste possible avec n-1
inversions : la liste triée par ordre décroissant.

=== 6. Relation de récurrence
<relation-de-récurrence>
#block[
#set enum(numbering: "a.", start: 1)
+ Avec n \= 3 : \
  L\_3(0) \= 1 (liste \[1,2,3\]) \
  L\_3(1) \= 3 (listes \[2,1,3\], \[1,3,2\] et \[3,1,2\]) \
  L\_3(2) \= 1 (liste \[3,2,1\])
]

Pour insérer 4 et garder un score de 1, on peut insérer 4 entre 1 et 2 :
\[3,1,4,2\]

#block[
#set enum(numbering: "a.", start: 2)
+ Pour insérer 4 et garder un score nul, on insère 4 avant 3 :
  \[4,3,2,1\]

+ Avec n \= 4, vérification de la formule L\_4(1) \= 2#emph[L\_3(1) +
  3]L\_3(0) \= 2#emph[3 + 3]1 \= 6

+ Démonstration de la relation de récurrence générale :
]

- Pour compter les listes de longueur n+1 et de score k, on regarde la
  position d’insertion de n+1 :
  - Si on insère n+1 à la fin, cela crée k nouvelles inversions et on
    avait une liste de longueur n et score k. Il y a L\_n(k) listes
    possibles.
  - Si on insère n+1 en iième position, cela crée k-i nouvelles
    inversions. On avait une liste de longueur n et score k-i. Il y a
    L\_n(k-i) listes possibles pour chaque position d’insertion i.
- Il y a donc au total :
  - (n+1-k)\*L\_n(k) listes avec insertion à la fin \
  - (k+1)\*L\_n(k-1) listes avec insertion en position intermédiaire

D’où la relation L\_(n+1)(k) \= (n+1-k)#emph[L\_n(k) + (k+1)]L\_n(k-1)

#block[
#set enum(numbering: "a.", start: 5)
+ Formule générale par récurrence : L\_(n+1)(k) \= (n+1-k) \* L\_n(k) +
  (k+1) \* L\_n(k-1)

+ Tableau des valeurs de L\_n(k) :
]

#align(center)[#table(
  columns: 4,
  align: (col, row) => (auto,auto,auto,auto,).at(col),
  inset: 6pt,
  [k \\ n], [3], [4], [5],
  [0],
  [1],
  [1],
  [1],
  [1],
  [3],
  [6],
  [10],
  [2],
  [1],
  [15],
  [35],
  [3],
  [-],
  [20],
  [56],
  [4],
  [-],
  [-],
  [70],
)
]

== Exercice 2 (candidats suivant l’enseignement de spécialité de la voie
générale)
<exercice-2-candidats-suivant-lenseignement-de-spécialité-de-la-voie-générale>
=== Partie 1
<partie-1>
+ b \= -(r1 + r2) \
  c \= r1\*r2

+ Comme b ≤ 0 et c ≥ 0, les racines r1 et r2 sont de signes opposés.
  Voici une proposition pour continuer le développement des réponses :

=== Partie 2
<partie-2>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + Soit (x1, x2, x3) une solution de (E). Alors : |x1|^2 + |x2|^2 +
    |x3|^2 \= α|x1||x2||x3| par parité des fonctions carré et valeur
    absolue. Donc (|x1|, |x2|, |x3|) est aussi solution de (E).
  ]

#block[
#set enum(numbering: "a.", start: 2)
+ S’il existe une solution (x1, x2, x3) dans Z^3 avec un xi non nul,
  alors (|x1|, |x2|, |x3|) est une solution dans N^3.
]

#block[
#set enum(numbering: "1.", start: 2)
+ Si (x1, x2, x3) est solution de (E), alors en permutant x1 et x2, on
  obtient que (x2, x1, x3) est aussi solution de (E).

+ D’après les questions précédentes, s’il existe une solution dans Z^3
  différente de (0,0,0), alors il existe aussi une solution (x1, x2, x3)
  dans N^3 avec x1 ≤ x2 ≤ x3.
]

=== Partie 3
<partie-3>
+ Supposons x1 \= 0. Alors d’après (E), on a x2^2 + x3^2 \= 0, donc x2
  \= x3 \= 0. Ce qui contredit le fait que (x1, x2, x3) est différent de
  (0,0,0). Donc nécessairement x1 \> 0.

+ #block[
  #set enum(numbering: "a.", start: 1)
  + Montrons que y racine de Q \<\=\> (x1, x2, y) solution de (E) :
  ]

- Si y racine de Q, alors Q(y) \= 0, donc x1^2 + x2^2 + y^2 \= αx1x2y,
  donc (x1, x2, y) solution de (E).
- Réciproquement, si (x1, x2, y) solution de (E), alors x1^2 + x2^2 +
  y^2 \= αx1x2y, donc Q(y) \= 0, donc y racine de Q.

#block[
#set enum(numbering: "a.", start: 2)
+ x3 est racine de Q car (x1, x2, x3) solution de (E).

+ Q(x2) \= (3 - αx1)x2^2 + (x1^2 - x2^2) \< 0 car x1 \> 0 et x2 \> x1
  d’après l’énoncé.

+ Q(0) \= x1^2 + x2^2 \> 0

+ Q a deux racines 0 \< x2 \< x3. De plus, Q(x2) \< 0 et Q(0) \> 0 donc
  il existe une racine y \> x3 par le théorème des valeurs
  intermédiaires.

+ Comme y est racine de Q, d’après a., (x1, x2, y) est solution de (E)
  dans N^3.
]

#block[
#set enum(numbering: "1.", start: 3)
+ On peut réappliquer le raisonnement précédent en remplaçant x3 par y,
  et trouver un nouveau triplet solution encore plus grand, et ainsi de
  suite. Cela conduit à une impossibilité car il n’y a pas de suite
  strictement croissante infinie d’entiers naturels.

+ On aboutit à une contradiction. Donc le seul triplet solution de (E)
  dans Z^3 est (0,0,0).

+ Généralisation au cas de n variables :
]

On procède par récurrence sur n.~L’initialisation pour n\=2 est
immédiate. Supposons le résultat vrai jusqu’à l’ordre n-1, avec n ≥ 3.
Raisonnons par l’absurde en supposant qu’il existe un n-uplet (x1, …,
xn) solution de l’équation avec un xi ≠ 0.

En appliquant un raisonnement similaire aux questions précédentes, on
peut se ramener à un n-uplet (x1, …, xn) dans N^n avec x1 ≤ … ≤ xn.

On définit alors Q(y) \= y^2 - αx1…xn-1y + (x1^2 + … + xn-1^2). On
montre comme précédemment que Q admet deux racines distinctes xn et y
avec y \> xn.

Donc (x1, …, xn-1, y) est un (n-1)-uplet solution de l’équation analogue
en dimension n-1. Ceci contredit l’hypothèse de récurrence.

D’où finalement le seul n-uplet solution est (0, …, 0).
