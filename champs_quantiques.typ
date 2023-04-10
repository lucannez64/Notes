#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Champs Quantiques",
  authors: (
    "Lucas",
  ),
  date: "26 Mars, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#set heading(numbering: "1.1.")

= Introduction
La théorie quantique des champs est une branche de la physique théorique qui traite du comportement des particules subatomiques et de leurs interactions. Il s'agit d'une généralisation de la mécanique quantique, qui traite du comportement des atomes et des molécules. La théorie quantique des champs est nécessaire pour comprendre le comportement des particules élémentaires, telles que les électrons, les protons et les neutrons. Elle est également nécessaire pour comprendre le comportement de la lumière, ainsi que le comportement des forces, telles que la force forte et la force faible.

Ce cours est une introduction aux concepts de base de la théorie quantique des champs. Nous discuterons des champs, du lagrangien et des équations d'Euler-Lagrange. Nous discuterons ainsi des différents types de théories quantiques des champs, telles que la théorie du champ de Dirac et la théorie du champ de Klein-Gordon. Nous discuterons de plus des différents types d'équations des champs quantiques, telles que l'équation de Dirac et l'équation de Klein-Gordon.

Ce cours abordera aussi le modèle standard de la physique des particules. Le modèle standard est une théorie très réussie qui décrit le comportement de toutes les particules élémentaires connues. Il décrit pareillement le comportement des forces qui agissent sur ces particules.
= Cours associés
- #link("mecanique_quantique.pdf", "Mécanique Quantique")

Plan of the course:

Here is a possible course plan for a quantum field theory course that integrates things about field restraint relativity and how why made it to this model of the world:

Introduction
This section would provide an overview of the course, including its goals and objectives. It would also introduce the basic concepts of field theory, such as fields, Lagrangians, and Euler-Lagrange equations.

Field theory
This section would provide a more in-depth treatment of field theory. It would discuss the different types of fields, such as scalar fields, vector fields, and tensor fields. It would also discuss the different types of Lagrangians, such as the Klein-Gordon Lagrangian and the Maxwell Lagrangian.

Relativity
This section would introduce the basic concepts of relativity, such as spacetime, spacetime curvature, and general relativity. It would also discuss the different types of relativity, such as special relativity and general relativity.

Quantum field theory
This section would discuss the integration of field theory and relativity. It would discuss the different types of quantum field theories, such as the Dirac field theory and the Klein-Gordon field theory. It would also discuss the different types of quantum field equations, such as the Dirac equation and the Klein-Gordon equation.

The Standard Model
This section would discuss the Standard Model of particle physics. It would discuss the different types of particles in the Standard Model, such as the leptons, the quarks, the bosons, and the gravitons. It would also discuss the different types of interactions in the Standard Model, such as the weak interaction, the strong interaction, and the electromagnetic interaction.

Beyond the Standard Model
This section would discuss the possible extensions of the Standard Model. It would discuss the different types of theories that have been proposed, such as the supersymmetric theory and the grand unified theory. It would also discuss the different types of experiments that are being conducted to search for evidence of beyond-the-Standard-Model particles and interactions.

Conclusion
This section would provide a summary of the course. It would discuss the key concepts that were covered, and it would discuss the future directions of field theory research.


= Champs

Un champ est une grandeur physique qui a une valeur en tout point de l'espace. Par exemple, le champ électrique a une valeur en tout point de l'espace et peut être utilisé pour déterminer la force que subira une charge électrique.

Il existe trois principaux types de champs : les champs scalaires, les champs vectoriels et les champs tensoriels.

== Champs scalaires

Un champ scalaire est un champ qui a une seule valeur en chaque point de l'espace. Par exemple, le champ de température est un champ scalaire, car il a une seule valeur en chaque point de l'espace.

== Champs vectoriels

Un champ vectoriel est un champ qui a une valeur et une direction en chaque point de l'espace. Par exemple, le champ électrique est un champ vectoriel, car il a une valeur et une direction en chaque point de l'espace.

== Champ tensoriel

Un champ tensoriel est un champ qui a une valeur, une direction et une forme en chaque point de l'espace. Par exemple, le champ de contrainte est un champ tensoriel, car il possède une valeur, une direction et une forme en chaque point de l'espace.

== Des outils mathématiques essentiels

Les mathématiques nécessaires pour comprendre les champs sont le calcul des fonctions multivariables. Cela inclut des concepts tels que les gradients, la divergence et la courbure.

=== Gradient

Le gradient d'un champ scalaire est un champ vectoriel qui donne le taux de variation du champ scalaire dans toutes les directions.

Le gradient est défini comme suit :

$nabla f = ( frac(diff f,diff x) comma frac( diff f,diff y), frac(diff f, diff z))$

où $f$ est le champ scalaire et $(x, y, z)$ les coordonnées d'un point dans l'espace.

=== Divergence

La divergence d'un champ vectoriel est un champ scalaire qui donne le taux de variation du champ vectoriel dans toutes les directions.

La divergence est définie comme suit :

$nabla dot.op bold(F) = frac(diff F_x,diff x) + frac(diff F_y,diff y) + frac(diff F_z,diff Z)$

où $bold(F)$ est le champ de vecteurs et $(x, y, z)$ les coordonnées d'un point dans l'espace.

== Rotationnel

Le rotationnel d'un champ de vecteurs est un champ de vecteurs qui donne le taux de variation du champ de vecteurs dans une direction particulière.

#set math.mat(delim: "|");

Le rotationnel est défini comme suit :
$nabla times bold(F) = mat(
  accent(i, hat), accent(j, hat), accent(k, hat); 
  frac(diff F_x, diff y), frac(diff F_y, diff z), -frac(diff F_z, diff x);
  frac(diff F_z, diff x), -frac(diff F_x, diff y), frac(diff F_y, diff z);
)$

où $bold(F)$ est le champ de vecteurs et $(x, y, z)$ les coordonnées d'un point dans l'espace.

== Lagrangien 

Le lagrangien est une fonction qui décrit l'état d'un système physique. Il s'écrit généralement en fonction des positions et des vitesses des particules du système, ainsi que du temps. Le lagrangien est utilisé pour dériver les équations de mouvement du système, qui décrivent comment les positions et les vitesses des particules évoluent dans le temps.

Le lagrangien de Klein-Gordon est un lagrangien pour un champ scalaire. Il est donné par l'expression suivante :

$L = frac(1,2) diff_mu phi diff^mu phi - frac(1,2) m^2 phi^2$

où $phi$ est le champ scalaire, $m$ sa masse et $diff_mu$ est la dérivée partielle par rapport à la coordonnée spatiale $x^mu$. Le lagrangien de Klein-Gordon est utilisé pour dériver l'équation de Klein-Gordon, qui est l'équation du mouvement d'un champ scalaire.

Le lagrangien de Maxwell est un lagrangien pour un champ électromagnétique. Il est donné par l'expression suivante :

$L = -frac(1,4) F_(mu nu) F^(mu nu)$

où $F_(mu nu)$ est le tenseur du champ électromagnétique. Le lagrangien de Maxwell est utilisé pour dériver les équations de Maxwell, qui sont les équations du mouvement d'un champ électromagnétique.

