#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Olympiades Correction",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "24 Septembre, 2023",
)

#set heading(numbering: "1.1.")

+

#block[
#set enum(numbering: "a.", start: 1)
+ Une autre exemple de liste de longueur 8 et de score 3 est
  $lr([1 comma 3 comma 5 comma 2 comma 4 comma 8 comma 7 comma 6])$.
+ Les listes de longueur 3 possibles sont:
]

- $lr([1 comma 2 comma 3])$ avec un score de 2
- $lr([1 comma 3 comma 2])$ avec un score de 1
- $lr([2 comma 1 comma 3])$ avec un score de 1
- $lr([2 comma 3 comma 1])$ avec un score de 1
- $lr([3 comma 1 comma 2])$ avec un score de 1
- $lr([3 comma 2 comma 1])$ avec un score de 0

#block[
#set enum(numbering: "1.", start: 2)
+ Voici la syntaxe d’une fonction Python qui calcule le score d’une
  liste L de longueur n :
]

```python
def calcul_score(L, n):
    score = 0
    for i in range(1, n):
        if L[i] > L[i-1]:
            score += 1
    return score
```

#block[
#set enum(numbering: "1.", start: 3)
+
]

- Pour une liste triée par ordre croissant, le score est 0. Par exemple,
  pour $n eq 5$, la liste $lr([1 comma 2 comma 3 comma 4 comma 5])$ a un
  score de 0.
- Pour une liste triée par ordre décroissant, le score est $n minus 1$.
  Par exemple, pour $n eq 5$, la liste
  $lr([5 comma 4 comma 3 comma 2 comma 1])$ a un score de 4. On peut
  voir que dans le pire des cas, il y a au moins une inversion entre
  chaque paire de cartes, sauf pour la première et la dernière.

#block[
#set enum(numbering: "1.", start: 4)
+
]

#block[
#set enum(numbering: "a.", start: 1)
+ On peut construire une liste de score $k$ en commençant avec une liste
  triée, puis en échangeant les cartes $i$ et $i plus 1$ pour les $k$
  premières paires de cartes (c’est-à-dire pour $i eq 0$ à
  $i eq k minus 1$). Par exemple, pour $n eq 4$ et $k eq 2$, on peut
  construire la liste $lr([1 comma 3 comma 2 comma 4])$ qui a un score
  de 2. On peut vérifier qu’il y a bien deux inversions dans cette liste
  : (1,3) et (3,2).
+ Il est possible de trouver deux listes de longueur $n$ et de score $k$
  si et seulement si $k eq.not n slash 2$. En effet, si
  $k eq n slash 2$, alors pour chaque inversion, il y a exactement une
  autre inversion correspondante, c’est-à-dire que si on échange les
  positions de deux cartes pour enlever une inversion, on en rajoute une
  autre. Donc on ne peut pas atteindre un score différent. Pour tout
  autre $k$, on peut construire deux listes en appliquant l’algorithme
  de l’étape a. à deux listes triées différentes.
]

#block[
#set enum(numbering: "1.", start: 5)
+ On a déjà trouvé que $L_n lr((0)) eq 1$ et $L_n lr((n minus 1)) eq 1$
  dans les exemples de listes triées par ordre croissant et décroissant.

+
]

#block[
#set enum(numbering: "a.", start: 1)
+ On a vu dans la question 1.b. que $L_3 lr((0)) eq 1$,
  $L_3 lr((1)) eq 3$ et $L_3 lr((2)) eq 2$. Pour insérer la carte 4 dans
  la liste $lr([3 comma 1 comma 2])$ pour obtenir un score de 1, on peut
  la placer à la deuxième position pour obtenir la liste
  $lr([3 comma 4 comma 1 comma 2])$.
+ Pour insérer la carte 4 dans la liste $lr([3 comma 2 comma 1])$ pour
  obtenir un score de 0, on doit la placer à la fin pour obtenir la
  liste $lr([3 comma 2 comma 1 comma 4])$.
+ On peut construire une liste de score 1 pour $L_4$ en insérant la
  carte 4 dans une liste de score 1 pour $L_3$ de deux manières
  différentes :
]

- En insérant la carte 4 à la fin de la liste de score 1 pour $L_3$, par
  exemple $lr([3 comma 2 comma 4 comma 1])$.
- En insérant la carte 4 entre les deux cartes de la liste de score 1
  pour $L_3$, par exemple $lr([3 comma 4 comma 2 comma 1])$. On peut
  vérifier que ces deux listes ont un score de 1 pour $L_4$. On peut
  aussi construire une liste de score 1 pour $L_4$ en insérantla carte 4
  dans une liste de score 0 pour $L_3$ de trois manières différentes :
- En insérant la carte 4 à la fin de la liste de score 0 pour $L_3$, par
  exemple $lr([3 comma 2 comma 1 comma 4])$.
- En insérant la carte 4 à la première position de la liste de score 0
  pour $L_3$, par exemple $lr([4 comma 3 comma 2 comma 1])$.
- En insérant la carte 4 entre les deux premières cartes de la liste de
  score 0 pour $L_3$, par exemple $lr([3 comma 4 comma 2 comma 1])$. On
  peut vérifier que ces trois listes ont un score de 1 pour $L_4$. En
  utilisant ces observations, on peut écrire une relation de récurrence
  pour $L_n lr((1))$ :
  $ L_n lr((1)) eq 2 L_(n minus 1) lr((1)) plus lr((n minus 1)) L_(n minus 1) lr((0)) $

#block[
#set enum(numbering: "a.", start: 4)
+ Pour tout entier naturel $n gt.eq 3$, on peut construire une liste de
  score 1 pour $L_(n plus 1)$ en insérant la carte $n plus 1$ dans une
  liste de score 1 pour $L_n$ de deux manières différentes :
]

- En insérant la carte $n plus 1$ à la fin de la liste de score 1 pour
  $L_n$.
- En insérant la carte $n plus 1$ entre les deux cartes de la liste de
  score 1 pour $L_n$. On peut vérifier que ces deux listes ont un score
  de 1 pour $L_(n plus 1)$. En utilisant ces observations, on peut
  écrire une relation de récurrence pour $L_(n plus 1) lr((1))$ :
  $ L_(n plus 1) lr((1)) eq 2 L_n lr((1)) plus n L_n lr((0)) $

#block[
#set enum(numbering: "a.", start: 5)
+ Pour tout entier naturel $n gt.eq 3$ et pour tout entier naturel $k$
  non nul, on peut construire une liste de score $k$ pour $L_(n plus 1)$
  en insérant la carte $n plus 1$ dans une liste de score $k$ pour $L_n$
  de deux manières différentes :
]

- En insérant la carte $n plus 1$ à la fin de la liste de score $k$ pour
  $L_n$.
- En insérant la carte $n plus 1$ entre deux cartes consécutives de la
  liste de score $k$ pour $L_n$. On peut vérifier que ces deux listes
  ont un score de $k$ pour $L_(n plus 1)$. Donc on a la relation de
  récurrence suivante :
  $ L_(n plus 1) lr((k)) eq L_n lr((k)) plus k L_n lr((k minus 1)) plus lr((n minus k)) L_n lr((k)) $

#block[
#set enum(numbering: "a.", start: 6)
+ Voici le tableau des valeurs de $L_n lr((k))$ pour
  $n in brace.l 3 comma 4 comma 5 brace.r$ et
  $k in brace.l 0 comma 1 comma 2 comma 3 comma 4 brace.r$ :
  $  & k eq 0 & k eq 1 & k eq 2 & k eq 3 & k eq 4\
  n eq 3 & 1 & 3 & 2 & minus & minus\
  n eq 4 & 1 & 4 & 5 & 2 & minus\
  n eq 5 & 1 & 5 & 9 & 9 & 2\
   $
]

Partie 1:

+ Pour un polynôme de la forme $P lr((x)) eq x^2 plus b x plus c$, où
  $b$ et $c$ sont des réels, les coefficients $b$ et $c$ peuvent être
  exprimés en fonction des racines $r_1$ et $r_2$ du polynôme. On a:

  $b eq minus lr((r_1 plus r_2))$

  $c eq r_1 r_2$

+ Si $b lt.eq 0$ et $c gt.eq 0$, alors on peut dire que les racines
  $r_1$ et $r_2$ du polynôme sont de signes opposés. Cela est dû au fait
  que la somme des racines est donnée par $r_1 plus r_2 eq minus b$, et
  puisque $b lt.eq 0$, cela implique que $r_1 plus r_2 gt.eq 0$. De
  plus, le produit des racines est donné par $r_1 r_2 eq c$, et puisque
  $c gt.eq 0$, cela signifie que $r_1$ et $r_2$ ne peuvent pas être tous
  les deux négatifs ou tous les deux positifs. Par conséquent, $r_1$ et
  $r_2$ doivent être de signes opposés.

Partie 2:

+ #block[
  #set enum(numbering: "a.", start: 1)
  + Si le triplet $lr((x_1 comma x_2 comma x_3)) in bold(Z)^3$ est une
    solution de l’équation (E), alors en prenant les valeurs absolues
    des éléments du triplet, on obtient
    $lr((lr(|x_1|) comma lr(|x_2|) comma lr(|x_3|)))$. Puisque le carré
    d’un nombre réel est positif ou nul, la substitution de $x_1$, $x_2$
    et $x_3$ par leurs valeurs absolues ne change pas l’équation. Donc,
    $lr((lr(|x_1|) comma lr(|x_2|) comma lr(|x_3|)))$ est également une
    solution de l’équation (E).

  + En supposant l’existence d’un triplet d’entiers relatifs solution de
    l’équation (E), différent de $lr((0 comma 0 comma 0))$, alors il
    existe un triplet d’entiers naturels différent de
    $lr((0 comma 0 comma 0))$ qui est également une solution de
    l’équation (E). Cela découle du fait que prendre les valeurs
    absolues des éléments d’une solution ne change pas le fait que c’est
    une solution, et les valeurs absolues des entiers relatifs sont des
    entiers naturels.
  ]

+ Si le triplet $lr((x_1 comma x_2 comma x_3)) in bold(Z)^3$ est une
  solution de l’équation (E), alors le triplet
  $lr((x_2 comma x_1 comma x_3))$ est également une solution de
  l’équation. Cela peut être démontré en remplaçant les variables dans
  l’équation (E) par leurs nouvelles valeurs:

  $x_2^2 plus x_1^2 plus x_3^2 eq alpha x_2 x_1 x_3$

  Donc, le triplet $lr((x_2 comma x_1 comma x_3))$ vérifie également
  l’équation (E).

+ Si l’équation (E) admet une solution dans $bold(Z)^3$ différente du
  triplet $lr((0 comma 0 comma 0))$, alors elle admet une solution
  $lr((x_1 comma x_2 comma x_3))$ dans $bold(N)^3$ différente du triplet
  $lr((0 comma 0 comma 0))$ et telle que $x_1 lt.eq x_2 lt.eq x_3$.
  Cette conclusion découle du fait que si une solution existe, on peut
  réarranger les éléments du triplet de manière croissante tout en
  restant une solution de l’équation (E).

Partie 3:

+ Pour le triplet $lr((x_1 comma x_2 comma x_3))$ qui est une solution
  de l’équation (E), si $x_1 lt.eq x_2 lt.eq x_3$, alors on peut montrer
  que $x_1 gt 0$. Supposons par l’absurde que $x_1 lt.eq 0$. Alors, le
  terme $x_1^2$ serait soit nul, soit négatif. Cependant, puisque
  $x_2^2$ et $x_3^2$ sont tous deux positifs (car ce sont des carrés),
  l’équation $x_1^2 plus x_2^2 plus x_3^2 eq alpha x_1 x_2 x_3$ ne
  serait pas satisfaite. Par conséquent, nous devons avoir $x_1 gt 0$.

+ On définit la fonction $Q$ de $bold(R)$ dans $bold(R)$ par
  $Q lr((x)) eq x^2 minus alpha x_1 x_2 x plus x_1^2 plus x_2^2$. Pour
  montrer que $lr((x_1 comma x_2 comma y))$ est un triplet d’entiers
  naturels solution de l’équation (E), il suffit de montrer que $y$ est
  une racine de $Q$.

  #block[
  #set enum(numbering: "a.", start: 1)
  + En remplaçant $x_3$ par $y$ dans l’équation (E), on obtient
    $x_1^2 plus x_2^2 plus y^2 eq alpha x_1 x_2 y$. Cela peut être
    réarrangé comme suit:
    $x_1^2 plus x_2^2 plus y^2 minus alpha x_1 x_2 y eq 0$. En comparant
    avec la fonction $Q lr((x))$, nous voyons que si $y$ est une racine
    de $Q$, alors $lr((x_1 comma x_2 comma y))$ est une solution de
    l’équation (E).

  + Une première racine de $Q$ peut être obtenue en substituant
    $x eq x_2$ dans $Q lr((x))$. Nous obtenons alors
    $Q lr((x_2)) eq lr((3 minus alpha x_1)) x_2^2 plus lr((x_1^2 minus x_2^2))$.

  + Pour montrer que $Q lr((x_2)) lt 0$, nous devons montrer que le
    coefficient devant $x_2^2$ est négatif. Cela signifie que
    $3 minus alpha x_1 lt 0$, ce qui est vrai puisque
    $alpha gt n gt.eq 2$ et $x_1 gt 0$. De plus, puisque
    $x_1^2 minus x_2^2$ est négatif (car $x_1 lt.eq x_2$), nous pouvons
    conclure que $Q lr((x_2)) lt 0$.

  + Le signe de $Q lr((0))$ est donné par
    $Q lr((0)) eq x_1^2 plus x_2^2$. Puisque $x_1$ et $x_2$ sont des
    entiers naturels non nuls, le terme $x_1^2 plus x_2^2$ est
    strictement positif.

  + Pour montrer que $Q$ a deux racines distinctes, nous devons montrer
    qu’il existe une autre racine $y$. Puisque $Q lr((0)) gt 0$ et
    $Q lr((x_2)) lt 0$, il existe un réel $y$ tel que $0 lt y lt x_2$ et
    $Q lr((y)) eq 0$. De plus, puisque $Q lr((x_2)) lt 0$ et
    $Q lr((0)) gt 0$, la fonction $Q$ change de signe entre $y$ et
    $x_2$, ce qui garantit qu’il existe une racine distincte dans cet
    intervalle.

  + Puisque $y$ est une racine de $Q$, le triplet
    $lr((x_1 comma x_2 comma y))$ est une solution de l’équation (E) et
    est également un triplet d’entiers naturels différent de
    $lr((0 comma 0 comma 0))$.
  ]

+ En utilisant le raisonnement de la question 2 et en remplaçant le
  triplet solution $lr((x_1 comma x_2 comma x_3))$ par le triplet
  $lr((x_1 comma x_2 comma y))$ (où $y$ est la deuxième racine de $Q$),
  on peut conclure que si l’équation (E) admet une solution différente
  de $lr((0 comma 0 comma 0))$, alors elle admet une solution
  $lr((x_1 comma x_2 comma y))$ dans $bold(N)^3$ différente de
  $lr((0 comma 0 comma 0))$ et telle que $x_1 lt.eq x_2 lt.eq y$.

+ En poursuivant ce raisonnement, on peut répéter l’étape précédente et
  montrer qu’il existe une autre racine $z$ de $Q$ telle que
  $x_1 lt.eq x_2 lt.eq y lt.eq z$. On peut continuer ainsi pour obtenir
  une séquence infinie d’entiers naturels strictement croissante
  $x_1 comma x_2 comma y comma z comma dots.h$. Cela conduit à une
  contradiction car il ne peut exister une séquence infinie strictement
  croissante d’entiers naturels. Par conséquent, l’hypothèse initiale
  selon laquelle il existe un triplet d’entiers naturels différent de
  $lr((0 comma 0 comma 0))$ solution de l’équation (E) est fausse.

+ En conclusion, nous avons démontré que pour tout $n in bb(N)$ et
  $alpha in bb(N)$ avec $alpha gt n gt.eq 2$, l’équation
  $x_1^2 plus dots.h.c plus x_n^2 eq alpha x_1 dots.h x_n$ n’admet pas
  de $n$-uplet d’entiers relatifs solution autre que
  $lr((0 comma 0 comma dots.h comma 0))$.
