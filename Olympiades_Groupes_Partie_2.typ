#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Olympiades Groupes Partie 2",
  authors: (
    "Lucas",
  ),
  date: "12 Juillet, 2023",
)

#set heading(numbering: "1.1.")

== Exercices académique n°2
#label("exercices-académique-n2")
= Généalogie des fractions.
#label("généalogie-des-fractions.")
Dans cet exercice, on considère des fractions écrites sous la forme
$a / b$ où $a$ et $b$ sont des entiers naturels non nuls. On construit
un arbre généalogique de fractions en partant de la fraction $1 / 1$.
Chaque fraction $a / b$ donne naissance à deux fractions : - la fille
benjamine: $frac(a, a plus b)$, qu’on écrit à gauche ; - la fille aînée:
$frac(a plus b, b)$, qu’on écrit à droite.

$a / b$ ├── $frac(a, a plus b)$ └── $frac(a plus b, b)$

$1 / 1$ ├── $1 / 2$ │ ├── $1 / 3$ │ │ ├── $1 / 4$ │ │ │ └── … │ │ └──
$4 / 3$ │ │ └── … │ └── $3 / 2$ │ ├── $3 / 5$ │ │ └── … │ └── $5 / 2$ │
└── … └── $2 / 1$ ├── $2 / 3$ │ ├── $2 / 5$ │ │ └── … │ └── $5 / 3$ │
└── … └── $3 / 1$ ├── $3 / 4$ │ └── … └── $4 / 1$ └── …

En poursuivant le processus, on obtient un arbre généalogique infini.

=== Partie I: La famille proche.
#label("partie-i-la-famille-proche.")
+  Quelles sont les deux filles de la fraction $22 / 7$ ?
+  Quelle est la mère de la fraction $17 / 31$ ? Et sa grand-mère ?
+  Quelle est la mère de la fraction $i / j$ si $i lt j$ ? Et si
  $i gt j$ ?
+  Quelle est la petite sœur de la fraction $355 / 113$ ?
+  Démontrer que les fractions $13 / 31$ et $23 / 5$ sont cousines.
+  Que peut-on dire de la succession des filles aînées de $1 / 1$ ?

=== Partie II: Des fractions irrédutibles.
#label("partie-ii-des-fractions-irrédutibles.")
On considère une fraction strictement positive irrédutible $a / b$.

Cela signifie que le seul diviseur commun des entiers naturels non nuls
$a$ et $b$ est égal à $1$.

+  Soit $d$ un diviseur commun de $a$ et $a plus b$. \
  Montrer que $d$ est forcément égal à $1$. \
  Que peut-on en déduire pour la fille benjamine de $a / b$ ? \

+  Expliquer pourquoi toutes les fractions qui apparaissent dans l’arbre
  généalogique sont irréductibles.

=== Partie III: À chacun sa place.
#label("partie-iii-à-chacun-sa-place.")
Dans la partie II, on a établi que l’arbre étudié comporte uniquement
des fractions irrédutibles strictement positives. On admet que toutes
les fractions irréductibles strictement positives sont dans cet arbre
généalogique, sans aucune répétition.

On peut ainsi numéroter toutes les fractions irrédutibles strictement
positives en considérant les lignes successives de l’arbre généalogique
parcourues de haut en bas et de gauche à droite.

On peut représenter les chosees comme sur l’arbre ci-dessous. F\_1 ├──
F\_2 │ ├── F\_4 │ │ ├── F\_8 │ │ └── F\_9 │ └── F\_5 │ ├── F\_10 │ └──
F\_11 └── F\_3 ├── F\_6 │ ├── F\_12 │ └── F\_13 └── F\_7 ├── F\_14 └──
F\_15

On admet que dans cette situation, chaque fraction $F_n$ a pour fille
benjamine $F_2 n$ et pour fille aînée $F_(2 n plus 1)$ où $n$ est un
entier naturel non nul.

+  Calculer le produit de deux fractions soeurs. \
  En déduire la valeur du produit de toutes les fractions d’une même
  génération.
+  Combien vaut $F_2023$ ?
+  Déterminer l’entier $n$ tel que $F_n eq 31 / 43$
