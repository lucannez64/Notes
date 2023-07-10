1. 
a. Une autre exemple de liste de longueur 8 et de score 3 est $[1, 3, 5, 2, 4, 8, 7, 6]$.
b. Les listes de longueur 3 possibles sont:
- $[1, 2, 3]$ avec un score de 2
- $[1, 3, 2]$ avec un score de 1
- $[2, 1, 3]$ avec un score de 1
- $[2, 3, 1]$ avec un score de 1
- $[3, 1, 2]$ avec un score de 1
- $[3, 2, 1]$ avec un score de 0

2. Voici la syntaxe d'une fonction Python qui calcule le score d'une liste L de longueur n :

```python
def calcul_score(L, n):
    score = 0
    for i in range(1, n):
        if L[i] > L[i-1]:
            score += 1
    return score
```

3. 
- Pour une liste triée par ordre croissant, le score est 0. Par exemple, pour $n=5$, la liste $[1,2,3,4,5]$ a un score de 0.
- Pour une liste triée par ordre décroissant, le score est $n-1$. Par exemple, pour $n=5$, la liste $[5,4,3,2,1]$ a un score de 4.
On peut voir que dans le pire des cas, il y a au moins une inversion entre chaque paire de cartes, sauf pour la première et la dernière.

4. 
a. On peut construire une liste de score $k$ en commençant avec une liste triée, puis en échangeant les cartes $i$ et $i+1$ pour les $k$ premières paires de cartes (c'est-à-dire pour $i=0$ à $i=k-1$). Par exemple, pour $n=4$ et $k=2$, on peut construire la liste $[1,3,2,4]$ qui a un score de 2. On peut vérifier qu'il y a bien deux inversions dans cette liste : (1,3) et (3,2).
b. Il est possible de trouver deux listes de longueur $n$ et de score $k$ si et seulement si $k \neq n/2$. En effet, si $k=n/2$, alors pour chaque inversion, il y a exactement une autre inversion correspondante, c'est-à-dire que si on échange les positions de deux cartes pour enlever une inversion, on en rajoute une autre. Donc on ne peut pas atteindre un score différent. Pour tout autre $k$, on peut construire deux listes en appliquant l'algorithme de l'étape a. à deux listes triées différentes.

5. On a déjà trouvé que $L_n(0) = 1$ et $L_n(n-1) = 1$ dans les exemples de listes triées par ordre croissant et décroissant. 

6. 
a. On a vu dans la question 1.b. que $L_3(0)=1$, $L_3(1)=3$ et $L_3(2)=2$. Pour insérer la carte 4 dans la liste $[3,1,2]$ pour obtenir un score de 1, on peut la placer à la deuxième position pour obtenir la liste $[3,4,1,2]$.
b. Pour insérer la carte 4 dans la liste $[3,2,1]$ pour obtenir un score de 0, on doit la placer à la fin pour obtenir la liste $[3,2,1,4]$.
c. On peut construire une liste de score 1 pour $L_4$ en insérant la carte 4 dans une liste de score 1 pour $L_3$ de deux manières différentes :
- En insérant la carte 4 à la fin de la liste de score 1 pour $L_3$, par exemple $[3,2,4,1]$.
- En insérant la carte 4 entre les deux cartes de la liste de score 1 pour $L_3$, par exemple $[3,4,2,1]$.
On peut vérifier que ces deux listes ont un score de 1 pour $L_4$.
On peut aussi construire une liste de score 1 pour $L_4$ en insérantla carte 4 dans une liste de score 0 pour $L_3$ de trois manières différentes :
- En insérant la carte 4 à la fin de la liste de score 0 pour $L_3$, par exemple $[3,2,1,4]$.
- En insérant la carte 4 à la première position de la liste de score 0 pour $L_3$, par exemple $[4,3,2,1]$.
- En insérant la carte 4 entre les deux premières cartes de la liste de score 0 pour $L_3$, par exemple $[3,4,2,1]$.
On peut vérifier que ces trois listes ont un score de 1 pour $L_4$.
En utilisant ces observations, on peut écrire une relation de récurrence pour $L_n(1)$ :
$$
L_n(1) = 2L_{n-1}(1) + (n-1)L_{n-1}(0)
$$
d. Pour tout entier naturel $n \geq 3$, on peut construire une liste de score 1 pour $L_{n+1}$ en insérant la carte $n+1$ dans une liste de score 1 pour $L_n$ de deux manières différentes :
- En insérant la carte $n+1$ à la fin de la liste de score 1 pour $L_n$.
- En insérant la carte $n+1$ entre les deux cartes de la liste de score 1 pour $L_n$.
On peut vérifier que ces deux listes ont un score de 1 pour $L_{n+1}$. En utilisant ces observations, on peut écrire une relation de récurrence pour $L_{n+1}(1)$ :
$$
L_{n+1}(1) = 2L_n(1) + nL_n(0)
$$
e. Pour tout entier naturel $n \geq 3$ et pour tout entier naturel $k$ non nul, on peut construire une liste de score $k$ pour $L_{n+1}$ en insérant la carte $n+1$ dans une liste de score $k$ pour $L_n$ de deux manières différentes :
- En insérant la carte $n+1$ à la fin de la liste de score $k$ pour $L_n$.
- En insérant la carte $n+1$ entre deux cartes consécutives de la liste de score $k$ pour $L_n$.
On peut vérifier que ces deux listes ont un score de $k$ pour $L_{n+1}$. Donc on a la relation de récurrence suivante :
$$
L_{n+1}(k) = L_n(k) + kL_n(k-1) + (n-k)L_n(k)
$$
f. Voici le tableau des valeurs de $L_n(k)$ pour $n \in \{3,4,5\}$ et $k \in \{0,1,2,3,4\}$ :
$$
\begin{array}{c|ccccc}
& k=0 & k=1 & k=2 & k=3 & k=4 \\
\hline
n=3 & 1 & 3 & 2 & - & - \\
n=4 & 1 & 4 & 5 & 2 & - \\
n=5 & 1 & 5 & 9 & 9 & 2 \\
\end{array}
$$


Partie 1:

1. Pour un polynôme de la forme $P(x) = x^2 + bx + c$, où $b$ et $c$ sont des réels, les coefficients $b$ et $c$ peuvent être exprimés en fonction des racines $r_1$ et $r_2$ du polynôme. On a:

   $b = -(r_1 + r_2)$
   
   $c = r_1r_2$

2. Si $b \leq 0$ et $c \geq 0$, alors on peut dire que les racines $r_1$ et $r_2$ du polynôme sont de signes opposés. Cela est dû au fait que la somme des racines est donnée par $r_1 + r_2 = -b$, et puisque $b \leq 0$, cela implique que $r_1 + r_2 \geq 0$. De plus, le produit des racines est donné par $r_1r_2 = c$, et puisque $c \geq 0$, cela signifie que $r_1$ et $r_2$ ne peuvent pas être tous les deux négatifs ou tous les deux positifs. Par conséquent, $r_1$ et $r_2$ doivent être de signes opposés.

Partie 2:

1. 
   a. Si le triplet $\left(x_1, x_2, x_3\right) \in \mathbf{Z}^3$ est une solution de l'équation (E), alors en prenant les valeurs absolues des éléments du triplet, on obtient $\left(\left|x_1\right|,\left|x_2\right|,\left|x_3\right|\right)$. Puisque le carré d'un nombre réel est positif ou nul, la substitution de $x_1$, $x_2$ et $x_3$ par leurs valeurs absolues ne change pas l'équation. Donc, $\left(\left|x_1\right|,\left|x_2\right|,\left|x_3\right|\right)$ est également une solution de l'équation (E).

   b. En supposant l'existence d'un triplet d'entiers relatifs solution de l'équation (E), différent de $(0,0,0)$, alors il existe un triplet d'entiers naturels différent de $(0,0,0)$ qui est également une solution de l'équation (E). Cela découle du fait que prendre les valeurs absolues des éléments d'une solution ne change pas le fait que c'est une solution, et les valeurs absolues des entiers relatifs sont des entiers naturels.

2. Si le triplet $\left(x_1, x_2, x_3\right) \in \mathbf{Z}^3$ est une solution de l'équation (E), alors le triplet $\left(x_2, x_1, x_3\right)$ est également une solution de l'équation. Cela peut être démontré en remplaçant les variables dans l'équation (E) par leurs nouvelles valeurs:

   $x_2^2 + x_1^2 + x_3^2 = \alpha x_2 x_1 x_3$

   Donc, le triplet $\left(x_2, x_1, x_3\right)$ vérifie également l'équation (E).

3. Si l'équation (E) admet une solution dans $\mathbf{Z}^3$ différente du triplet $(0,0,0)$, alors elle admet une solution $\left(x_1, x_2, x_3\right)$ dans $\mathbf{N}^3$ différente du triplet $(0,0,0)$ et telle que $x_1 \leq x_2 \leq x_3$. Cette conclusion découle du fait que si une solution existe, on peut réarranger les éléments du triplet de manière croissante tout en restant une solution de l'équation (E).

Partie 3:

1. Pour le triplet $\left(x_1, x_2, x_3\right)$ qui est une solution de l'équation (E), si $x_1 \leq x_2 \leq x_3$, alors on peut montrer que $x_1 > 0$. Supposons par l'absurde que $x_1 \leq 0$. Alors, le terme $x_1^2$ serait soit nul, soit négatif. Cependant, puisque $x_2^2$ et $x_3^2$ sont tous deux positifs (car ce sont des carrés), l'équation $x_1^2 + x_2^2 + x_3^2 = \alpha x_1 x_2 x_3$ ne serait pas satisfaite. Par conséquent, nous devons avoir $x_1 > 0$.

2. On définit la fonction $Q$ de $\mathbf{R}$ dans $\mathbf{R}$ par $Q(x) = x^2 - \alpha x_1 x_2 x + x_1^2 + x_2^2$. Pour montrer que $\left(x_1, x_2, y\right)$ est un triplet d'entiers naturels solution de l'équation (E), il suffit de montrer que $y$ est une racine de $Q$.

   a. En remplaçant $x_3$ par $y$ dans l'équation (E), on obtient $x_1^2 + x_2^2 + y^2 = \alpha x_1 x_2 y$. Cela peut être réarrangé comme suit: $x_1^2 + x_2^2 + y^2 - \alpha x_1 x_2 y = 0$. En comparant avec la fonction $Q(x)$, nous voyons que si $y$ est une racine de $Q$, alors $\left(x_1, x_2, y\right)$ est une solution de l'équation (E).

   b. Une première racine de $Q$ peut être obtenue en substituant $x = x_2$ dans $Q(x)$. Nous obtenons alors $Q(x_2) = \left(3 - \alpha x_1\right) x_2^2 + \left(x_1^2 - x_2^2\right)$.

   c. Pour montrer que $Q(x_2) < 0$, nous devons montrer que le coefficient devant $x_2^2$ est négatif. Cela signifie que $3 - \alpha x_1 < 0$, ce qui est vrai puisque $\alpha > n \geq 2$ et $x_1 > 0$. De plus, puisque $x_1^2 - x_2^2$ est négatif (car $x_1 \leq x_2$), nous pouvons conclure que $Q(x_2) < 0$.

   d. Le signe de $Q(0)$ est donné par $Q(0) = x_1^2 + x_2^2$. Puisque $x_1$ et $x_2$ sont des entiers naturels non nuls, le terme $x_1^2 + x_2^2$ est strictement positif.

   e. Pour montrer que $Q$ a deux racines distinctes, nous devons montrer qu'il existe une autre racine $y$. Puisque $Q(0) > 0$ et $Q(x_2) < 0$, il existe un réel $y$ tel que $0 < y < x_2$ et $Q(y) = 0$. De plus, puisque $Q(x_2) < 0$ et $Q(0) > 0$, la fonction $Q$ change de signe entre $y$ et $x_2$, ce qui garantit qu'il existe une racine distincte dans cet intervalle.

   f. Puisque $y$ est une racine de $Q$, le triplet $\left(x_1, x_2, y\right)$ est une solution de l'équation (E) et est également un triplet d'entiers naturels différent de $(0,0,0)$.

3. En utilisant le raisonnement de la question 2 et en remplaçant le triplet solution $\left(x_1, x_2, x_3\right)$ par le triplet $\left(x_1, x_2, y\right)$ (où $y$ est la deuxième racine de $Q$), on peut conclure que si l'équation (E) admet une solution différente de $(0,0,0)$, alors elle admet une solution $\left(x_1, x_2, y\right)$ dans $\mathbf{N}^3$ différente de $(0,0,0)$ et telle que $x_1 \leq x_2 \leq y$.

4. En poursuivant ce raisonnement, on peut répéter l'étape précédente et montrer qu'il existe une autre racine $z$ de $Q$ telle que $x_1 \leq x_2 \leq y \leq z$. On peut continuer ainsi pour obtenir une séquence infinie d'entiers naturels strictement croissante $x_1, x_2, y, z, \ldots$. Cela conduit à une contradiction car il ne peut exister une séquence infinie strictement croissante d'entiers naturels. Par conséquent, l'hypothèse initiale selon laquelle il existe un triplet d'entiers naturels différent de $(0,0,0)$ solution de l'équation (E) est fausse.

5. En conclusion, nous avons démontré que pour tout $n \in \mathbb{N}$ et $\alpha \in \mathbb{N}$ avec $\alpha > n \geq 2$, l'équation $x_1^2 + \cdots + x_n^2 = \alpha x_1 \ldots x_n$ n'admet pas de $n$-uplet d'entiers relatifs solution autre que $(0,0, \ldots, 0)$.
