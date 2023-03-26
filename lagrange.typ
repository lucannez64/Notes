#import "template.typ": *
#show: project.with(
  title: "Mécanique de Lagrange",
  authors: (
    "Lucas",
  ),
  date: "25 Mars, 2023",
)

= Cours <LAGRANGE>

Le cadre lagrangien est une façon de décrire le mouvement d'un système en utilisant une fonction lagrangienne. La fonction lagrangienne est une fonction des coordonnées généralisées et du temps, et elle contient des informations sur l'énergie cinétique et potentielle du système. Le cadre lagrangien peut être utilisé pour dériver les équations du mouvement du système et pour calculer l'énergie du système. L'énergie cinétique est une mesure de l'énergie de mouvement du système, et l'énergie potentielle est une mesure de l'énergie du système due à sa position. La fonction lagrangienne contient également des informations sur les coordonnées généralisées, qui sont les variables décrivant la position du système.

La fonction lagrangienne est définie comme suit :

$L(q comma accent(q, dot) comma t) = T(q comma accent(q, dot)) - V(q, t)$

où $T(q comma accent(q, dot))$ est l'énergie cinétique du système, $V(q comma t)$ est l'énergie potentielle du système, et $accent(q,dot)$ est la dérivée temporelle de la coordonnée généralisée $q$.

Les équations du mouvement du système peuvent être dérivées de la fonction lagrangienne en utilisant les équations d'Euler-Lagrange. Les équations d'Euler-Lagrange sont les suivantes :

$frac(diff L,diff q) - frac(d,d t) frac(diff L,diff accent(q,dot)) = 0$

L'énergie du système peut être calculée à partir de la fonction lagrangienne en utilisant la formule suivante :

$E = L - T$

Le principe de l'action stationnaire stipule que la trajectoire d'un système est celle qui minimise l'action. L'action est une fonction qui dépend de la trajectoire du système et qui est définie comme suit :

$S = integral_0^T d t space L$

où $L$ est le lagrangien du système. Le lagrangien est une fonction qui dépend de la position et de la vitesse du système.

Le principe de l'action stationnaire peut être dérivé des équations d'Euler-Lagrange. Les équations d'Euler-Lagrange sont les équations du mouvement d'un système et peuvent être dérivées du principe de l'action stationnaire à l'aide de la formule suivante :

$frac(delta S,delta q) = 0$

où $delta S$ est la variation de l'action.

Les générateurs sont les fonctions qui génèrent les transformations du système en utilisant le principe d'action stationnaire.