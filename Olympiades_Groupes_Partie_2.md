## Exercices académique n°2

# Généalogie des fractions.

Dans cet exercice, on considère des fractions écrites sous la forme $\frac{a}{b}$ où $a$ et $b$ sont des entiers naturels non nuls. On construit un arbre généalogique de fractions en partant de la fraction $\frac{1}{1}$. Chaque fraction $\frac{a}{b}$ donne naissance à deux fractions :
- la fille benjamine: $\frac{a}{a+b}$, qu'on écrit à gauche ;
- la fille aînée: $\frac{a+b}{b}$, qu'on écrit à droite.

$\frac{a}{b}$
├── $\frac{a}{a+b}$
└── $\frac{a+b}{b}$

$\frac{1}{1}$
├── $\frac{1}{2}$
│   ├── $\frac{1}{3}$
│   │   ├── $\frac{1}{4}$
│   │   │   └── ...
│   │   └── $\frac{4}{3}$
│   │       └── ...
│   └── $\frac{3}{2}$
│       ├── $\frac{3}{5}$
│       │   └── ...
│       └── $\frac{5}{2}$
│           └── ...
└── $\frac{2}{1}$
    ├── $\frac{2}{3}$
    │   ├── $\frac{2}{5}$
    │   │   └── ...
    │   └── $\frac{5}{3}$
    │       └── ...
    └── $\frac{3}{1}$
        ├── $\frac{3}{4}$
        │   └── ...
        └── $\frac{4}{1}$
            └── ...

En poursuivant le processus, on obtient un arbre généalogique infini.

### Partie I: La famille proche.

1. Quelles sont les deux filles de la fraction $\frac{22}{7}$ ?
2. Quelle est la mère de la fraction $\frac{17}{31}$ ? Et sa grand-mère ?
3. Quelle est la mère de la fraction $\frac{i}{j}$ si $i<j$ ? Et si $i>j$ ?
4. Quelle est la petite sœur de la fraction $\frac{355}{113}$ ?
5. Démontrer que les fractions $\frac{13}{31}$ et $\frac{23}{5}$ sont cousines.
6. Que peut-on dire de la succession des filles aînées de $\frac{1}{1}$ ?

### Partie II: Des fractions irrédutibles.

On considère une fraction strictement positive irrédutible $\frac{a}{b}$.

Cela signifie que le seul diviseur commun des entiers naturels non nuls $a$ et $b$ est égal à $1$. 

1. Soit $d$ un diviseur commun de $a$ et $a+b$. \
Montrer que $d$ est forcément égal à $1$. \
Que peut-on en déduire pour la fille benjamine de $\frac{a}{b}$ ? \

2. Expliquer pourquoi toutes les fractions qui apparaissent dans l'arbre généalogique sont irréductibles.

### Partie III: À chacun sa place.

Dans la partie II, on a établi que l'arbre  étudié comporte uniquement des fractions irrédutibles strictement positives. On admet que toutes les fractions irréductibles strictement positives sont dans cet arbre généalogique, sans aucune répétition.

On peut ainsi numéroter toutes les fractions irrédutibles strictement positives en considérant les lignes successives de l'arbre généalogique parcourues de haut en bas et de gauche à droite.

On peut représenter les chosees comme sur l'arbre ci-dessous.
F_1
├── F_2
│   ├── F_4
│   │   ├── F_8
│   │   └── F_9
│   └── F_5
│       ├── F_10
│       └── F_11
└── F_3
    ├── F_6
    │   ├── F_12
    │   └── F_13
    └── F_7
        ├── F_14
        └── F_15

On admet que dans cette situation, chaque fraction $F_n$ a pour fille benjamine $F_2n$ et pour fille aînée $F_{2n+1}$ où $n$ est un entier naturel non nul.

1. Calculer le produit de deux fractions soeurs. \
En déduire la valeur du produit de toutes les fractions d'une même génération.
2. Combien vaut $F_2023$ ?
3. Déterminer l'entier $n$ tel que $F_n = \frac{31}{43}$
4. Ecris un programme qui calcule $F_n$ pour un entier $n$ donné.
5. Ecris un programme qui calcule $n$ pour une fraction donnée.
