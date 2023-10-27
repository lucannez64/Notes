## Exercice 1

### Partie A

1. Il y a 6 faces sur un cube et il y a 2 faces noires sur le dé A donc la probabilité d'obtenir une fois une face noire et $P=\dfrac{2}{6}=\dfrac{1}{3}$. Comme les deux lancers sont indépendants la probabilité d'avoir une face noire au second lancer et aussi de $\dfrac{1}{3}$ donc la probabilité d'avoir deux faces noires successivement est $P=\dfrac{1}{3}\times\dfrac{1}{3}=\dfrac{1}{9}$
\
2. La probabilité de l'évènement C est égale à la somme des probabilités d'avoir deux faces d'une certaine même couleur, Soit : $P(C)=\sum_{n=0}^{2}P_n$ avec $n \in \{0,1,2\}$ et 0 correspondant à la couleur verte, 1 à la couleur noire, et 2 à la couleur rouge
On sait que $P_1=\dfrac{1}{9}$ d'après la question précédente de manière analogue on détermine que $P_0=\dfrac{1}{6}\times\dfrac{1}{6}=\dfrac{1}{36}$ et que $P_2=\dfrac{3}{6}\times\dfrac{3}{6}=\dfrac{1}{4}$ donc $P(C)=P_0+P_1+P_2=\dfrac{1}{36}+\dfrac{1}{9}+\dfrac{1}{4}=\dfrac{4+1+9}{36}=\dfrac{14}{36}=\dfrac{7}{18}$

3. La probabilité qu'à l'issue d'un jeu, les deux faces obtenues soient de couleurs différentes est $P(\overline{C})= 1- P(C)= 1-\dfrac{7}{18} = \dfrac{11}{18}$

4. Soit l'évènement B : à l'issue d'un jeu, les deux faces obtenues soient vertes avec $P(B)=P_0=\dfrac{1}{36}$ la probabilité de $P_C(B)=P(B \mid C)= \dfrac{P(B\cap C)}{P(C)}= \dfrac{1}{36}\dfrac{18}{7}=\dfrac{1}{14}$

### Partie B

1. b. Soit A l'évènement obtenir la face verte au premier lancer et B l'évènement obtenir la face verte au second lancer $P_A(B)=\dfrac{2}{3}$ d'après l'arbre des probabilités.

2. La probabilité d'obtenir deux faces vertes est $P(A \cap B)= P(A)\times P_A(B)=\dfrac{2}{3}\times\dfrac{2}{3}=\dfrac{4}{9}$

3. La probabilité d'obtenir une face verte au 2ème lancer est $P(B)=P_A(B)+P_{\overline{A}}(B)=\dfrac{4}{9}+\dfrac{1}{3}\times\dfrac{1}{6}=\dfrac{1}{2}$

## Exercice 2 

1. a. $u_1=\dfrac{u_0}{1+u_0}=\dfrac{1}{2}$ $u_2=\dfrac{u_1}{1+u_1}=\dfrac{1}{3}$ $u_3=\dfrac{u_2}{1+u_2}=\dfrac{1}{4}$

b. ```python
def liste(k):
  L=[]
  u=1
  for i in range(0, k+1):
    L.append(u)
    u=u/(1+u)
  return L 
```

2. Montrons par récurrence que la suite $(u_n)$ est strictement décroissante.
\
Initialisation:
\
pour le rang n=0.
$u_1=\dfrac{1}{2}$ et $u_0=1$ soit $u_0 > u_1$ donc la propriété est vraie au rang n=0.
\
Hérédité:
\
On suppose qu'il existe un entier naturel k tel que $u_{k+1}<u_k$.
Montrons que la propriété est vraie au rang $n=k+1$.
On pose la fonction f qui à x renvoie $\dfrac{x}{1+x}$ définie et dérivable sur $[0;+\infty[$ en dérivant f on obtient $f'(x)=\dfrac{1}{(1+x)^2}$ or $(1+x)^2 >0$ pour $x \geq 0$ donc $f'(x)>0$ sur $[0;+\infty[$ donc f est croissante sur ce même intervalle on peut donc composer par f.
$f(u_{k+1})<f(u_k)$
$u_{k+2}<u_{k+1}$
Donc la propriété est héréditaire.
\
Conclusion: \
$\forall n \in \mathbb{N}$, $u_{n+1}<u_{n}$, la suite $(u_n)$ est strictement décroissante.

3. Montrons que la suite $(u_n)$ converge:

La suite $(u_n)$ est strictement décroissante d'après la question précédente. De plus la suite $(u_n)$ est minorée par 0 puisque $\forall n \in \mathbb{N} \ u_n>0$ d'après l'énoncé.

Or, toute suite strictement décroissante et minorée converge vers un réel l d'après le théorème 4.2 du cours sur la convergence des suites monotones.

4. $\lim_{n \to +\infty} u_{n+1} = \lim_{n \to +\infty} u_n = l$ d'après la convergence de la suite. Donc $l = \dfrac{l}{1+l}$ 
$l-\dfrac{l}{1+l}=0$
\
$\dfrac{l+l^2-l}{1+l}=0$
\
\
$\dfrac{l^2}{1+l}=0$ \
\
$\Leftrightarrow$
systemequation $l^2=0$ $1+l\neq 0$ \
\
$\Leftrightarrow$
systemequation $l=0$ $l\neq -1$ \
Or $l>0$ d'après l'énoncé donc $l=0$ soit la $\lim_{n \to +\infty} u_{n+1} = \lim_{n \to +\infty} u_n = 0$

5. a. On conjecture à partir des premiers termes de la suite que $u_n = \dfrac{1}{n+1}$.

b. Soit la proposition $P_n : u_n=\dfrac{1}{n+1}$
\
Montrons que $P_n$ est vraie pour tout entier naturel n par récurrence:
\
Initialisation: 
\
pour $n=0$ on a $\dfrac{1}{n+1}={1}{1}=1$ et $u_n=u_0=1$ donc la propriété $P_0$ est vraie.
\
Hérédité:
\
On suppose qu'il existe un entier naturel k tel que $u_k=\dfrac{1}{k+1}$
Montrons que $P_k+1$ est vraie:
\
$u_{k+1}=\dfrac{u_k}{u_k +1}$ \
\
$u_{k+1}=\dfrac{1}{k+1}\dfrac{k+1}{k+2}$
\
\
$u_{k+1}=\dfrac{1}{k+2}$ \
Donc la propriété $P_n$ est héréditaire
\
Conclusion:
\
$\forall n \in \mathbb{N} \ u_n=\dfrac{1}{n+1}$ \
La conjecture est bien démontrée
