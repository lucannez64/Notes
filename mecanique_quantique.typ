//#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
//#show: project.with(
  //title: "Mécanique Quantique",
  //authors: (
    //"Lucas",
  //),
  //date: "March 22, 2023",
//)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction

La _mécanique quantique_ est une théorie fondamentale qui décrit le comportement de la matière et de la lumière à l'échelle atomique et subatomique. Elle a des implications majeures dans de nombreux domaines, allant de la physique à la chimie, en passant par la biologie et la technologie. L'étude de la mécanique quantique est donc essentielle pour comprendre les phénomènes qui régissent notre univers à une échelle microscopique. Dans cette étude, nous allons explorer les principes fondamentaux de la mécanique quantique, ainsi que les fondements mathématiques qui la sous-tendent. Nous discuterons également des applications pratiques de cette théorie, telles que l'effet tunnel, la supraconductivité, les diodes et les transistors, ainsi que les ordinateurs quantiques. Enfin, nous examinerons les différentes interprétations de la mécanique quantique et leurs implications philosophiques et ontologiques.

= Cours associés


= Fondements mathématiques de la mécanique quantique

== Espaces de Hilbert et vecteurs d'état

La mécanique quantique est une théorie mathématique qui utilise des _espaces de Hilbert_ pour représenter les *états quantiques d'un système*. Un _espace de Hilbert_ est un *espace vectoriel complexe* avec une structure interne qui permet de définir une notion de distance et de convergence, nommé produit scalaire hermitien. Les _vecteurs d'état_ quantique sont des éléments de cet espace de Hilbert et représentent l'état quantique d'un système. Les vecteurs d'état sont généralement notés *|ψ⟩* et peuvent être exprimés comme une *combinaison linéaire de vecteurs de base appelés états propres*.

=== Produit Scalaire Hermitien
Le produit scalaire hermitien correspond pour deux vecteurs de taille n $accent(u,arrow) vec(x_1,x_2,..,x_n) x_i in CC$ et $accent(v,arrow) vec(y_1, x_2, .., y_n) y_i in CC space space.thin$
à $angle.l u bar.v v angle.r = sum_(i=1)^n x_i^* y_i in CC $ avec \* le conjugué

==== Linéarité et anti-linéarité
Le produit scalaire hermitien est linéaire à droite et anti-linéaire à gauche \
- $angle.l u bar.v v_1 +v_2 angle.r = angle.l u bar.v v_1 angle.r +angle.l u bar.v v_2 angle.r $
- $angle.l u_1+u_2 bar.v v angle.r = angle.l u_1 bar.v v angle.r+ angle.l u_2 bar.v v angle.r$
- $angle.l u bar.v lambda v angle.r= lambda angle.l u bar.v v angle.r$
- $angle.l u bar.v lambda v angle.r= lambda angle.l u bar.v v angle.r lambda in CC$
- $angle.l lambda u bar.v v angle.r= lambda^* angle.l u bar.v v angle.r lambda in CC$

Ex.
- $angle.l u bar.v (2+3i) v angle.r= (2+3i)  angle.l u bar.v v angle.r$
- $angle.l (2+3i) u bar.v v angle.r= (2-3i)  angle.l u bar.v v angle.r$

==== Norme
$accent(u,arrow) vec(x_1,x_2,..,x_n) bar.v.double accent(u,arrow) bar.v.double = sqrt(sum_(i=1)^n = bar.v x_i^2 bar.v) in RR_+$  avec |x| le module de x soit pour un nombre complexe $z = a+i b$ le module de z est  $ |z| = sqrt(a^2+b^2)$ par conséquent $ bar.v.double accent(u,arrow) bar.v.double ^2 = bar.v x_1 bar.v^2 +  bar.v x_2 bar.v^2 + .. +  bar.v x_n bar.v^2 $ puisque $bar.v z  space.thin bar.v^2 = a^2+b^2 = z^*dot.op z arrow. $ 
$ bar.v.double u bar.v.double = sqrt(angle.l u bar.v u angle.r)$

==== Orthogonalité
Deux vecteurs sont orthogonaux si $angle.l u bar.v v angle.r = 0$

==== Symétrie
$ angle.l u bar.v v angle.r = (angle.l v bar.v u angle.r)^* $

== Opérateurs et observables

Les _opérateurs quantiques_ sont des *transformations linéaires* qui agissent sur les vecteurs d'état quantique pour produire de nouveaux vecteurs d'état. Les _observables_ sont des grandeurs physiques qui peuvent être mesurées expérimentalement, telles que la *position*, la *quantité de mouvement* et l'*énergie*. Les observables sont représentées par des _opérateurs hermitiens_. Les valeurs propres de ces opérateurs sont les valeurs possibles pour les mesures de l'observable correspondante.

== Le formalisme de Dirac
Le formalisme de Dirac est une notation mathématique pour la mécanique quantique qui utilise des notations spéciales pour les vecteurs d'état et les opérateurs. Dans cette notation, les vecteurs d'état sont représentés sous forme de ket *$bar.v psi angle.r$* et les vecteurs duale, qui sont les vecteurs adjoints, sont représentés sous forme de bra *$angle.l psi bar.v $*. Lorsque l'on prend le produit scalaire d'un ket avec un bra, on obtient une expression appelée le bra-ket, notée *$angle.l psi bar.v phi angle.r$*, qui représente la probabilité de transition entre les deux états quantiques. Le formalisme de Dirac permet également de représenter les opérateurs quantiques sous forme de notations spéciales, telles que l'opérateur identité, l'opérateur de projection et l'opérateur de translation. Cette notation simplifie considérablement les calculs en mécanique quantique et permet une compréhension plus intuitive de la théorie.


= Postulats de la mécanique quantique

1. L’état d’un système quantique est entièrement défini par un vecteur d’état dans un espace de Hilbert. Un vecteur d’état est généralement noté $bar.v psi angle.r$ et appartient à un espace de Hilbert H. Les états quantiques sont des vecteurs unitaires dans H, c’est-à-dire que $angle.l psi bar.v psi angle.r = 1$.

2. Les observables quantiques sont représentées par des opérateurs hermitiens. Un opérateur hermitien A est un opérateur qui est égal à sa propre adjointe $A^(dagger)$ (c’est-à-dire que $A = A^dagger "avec "dagger "le conjugué soit "star.op$). Les valeurs propres de l’opérateur hermitien A correspondent aux résultats possibles de la mesure de l’observable associée à A.

3. Les résultats de la mesure d’une observable quantique sont des valeurs propres de l’opérateur associé à cette observable. Si l’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $bar.v psi angle.r$, la probabilité d’obtenir une valeur propre a est donnée par la formule $P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2 " où "bar.v a angle.r$ est le vecteur propre correspondant à la valeur propre a.
 
4. La probabilité de mesurer une valeur propre donnée est donnée par le carré du module de l’amplitude de probabilité correspondante. L’amplitude de probabilité pour obtenir une valeur propre a lorsqu’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $ bar.v psi angle.r $ est donnée par $angle.l a bar.v psi angle.r$. La probabilité P(a) d’obtenir la valeur propre a est alors donnée par $P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2$.

5. L’évolution temporelle d’un système quantique est décrite par l’équation de Schrödinger. L’évolution temporelle d’un état quantique $bar.v psi(t) angle.r$ est décrite par l’équation de Schrödinger $i planck.reduce frac(diff, diff t)bar.v psi(t) angle.r = H bar.v psi(t) angle.r $  où H est l’hamiltonien du système donc l'énergie totale du système et $planck.reduce " est " = frac(planck, 2pi) $.

6. Les états quantiques peuvent être intriqués, ce qui signifie que les propriétés de chaque particule ne peuvent pas être décrites indépendamment des autres particules avec lesquelles elle est intriquée. Par exemple, si deux particules sont intriquées, alors la mesure de l’une des particules affectera instantanément l’état de l’autre particule, peu importe la distance qui les sépare.
