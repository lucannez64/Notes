#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Mécanique Quantique",
  authors: (
    "Lucas",
  ),
  date: "22 Mars, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#set heading(numbering: "1.1.")

= Introduction<Introduction> 

La _mécanique quantique_ est une théorie fondamentale qui décrit le comportement de la matière et de la lumière à l'échelle atomique et subatomique. Elle a des implications majeures dans de nombreux domaines, allant de la physique à la chimie, en passant par la biologie et la technologie. L'étude de la mécanique quantique est donc essentielle pour comprendre les phénomènes qui régissent notre univers à une échelle microscopique. Dans cette étude, nous allons explorer les principes fondamentaux de la mécanique quantique, ainsi que les fondements mathématiques qui la sous-tendent. Nous discuterons également des applications pratiques de cette théorie, telles que l'effet tunnel, la supraconductivité, les diodes et les transistors, ainsi que les ordinateurs quantiques. Enfin, nous examinerons les différentes interprétations de la mécanique quantique et leurs implications philosophiques et ontologiques.


= Cours associés <A>


= Fondements mathématiques de la mécanique quantique <B>

== Fonction d'onde <BA>

La fonction d'onde est une fonction mathématique qui décrit l'état d'un système quantique. Il s'agit d'une fonction à valeurs complexes, dont le carré donne la probabilité de trouver la particule en un point particulier de l'espace. La fonction d'onde peut être utilisée pour calculer l'énergie de la particule, sa quantité de mouvement et d'autres propriétés.

Un exemple de fonction d'onde est la fonction d'onde d'une particule dans une boîte. Cette fonction d'onde est une onde sinusoïdale dont la longueur d'onde et l'amplitude varient en fonction de l'énergie de la particule. Le carré de la fonction d'onde d'une particule dans une boîte donne la probabilité de trouver la particule en un point particulier de la boîte.

Un autre exemple de fonction d'onde est la fonction d'onde d'un électron libre. Cette fonction d'onde est une onde sphérique dont la longueur d'onde et l'amplitude varient en fonction de l'énergie de l'électron. Le carré de la fonction d'onde d'un électron libre donne la probabilité de trouver l'électron en un point particulier de l'espace.

La fonction d'onde est un concept très important en mécanique quantique, et elle a de nombreuses applications dans la théorie des ondes et des particules. En comprenant la fonction d'onde, nous pouvons mieux comprendre le comportement des systèmes quantiques.

Voici un exemple de fonction d'onde pour une particule dans une boîte :

$psi (x) = sqrt(frac(2,L)) sin (frac(pi n x,L))$

où $n$ est un entier et $L$ la longueur de la boîte. La longueur d'onde de cette fonction d'onde est $lambda = 2L/n$, et l'amplitude est $A = sqrt(2/L)$. Le carré de cette fonction d'onde donne la probabilité de trouver la particule en un point particulier de la boîte.

== Espaces de Hilbert et vecteurs d'état <BB>

La mécanique quantique est une théorie mathématique qui utilise des _espaces de Hilbert_ pour représenter les *états quantiques d'un système*. Un _espace de Hilbert_ est un *espace vectoriel complexe* avec une structure interne qui permet de définir une notion de distance et de convergence, nommé produit interne. Les _vecteurs d'état_ quantique sont des éléments de cet espace de Hilbert et représentent l'état quantique d'un système. Les vecteurs d'état sont généralement notés *|ψ⟩* et peuvent être exprimés comme une *combinaison linéaire de vecteurs de base appelés états propres*.

=== Produit Scalaire (Produit interne) <BBA>
Le produit scalaire correspond pour deux vecteurs de taille n $accent(u,arrow) vec(x_1,x_2,..,x_n) x_i in CC$ et $accent(v,arrow) vec(y_1, x_2, .., y_n) y_i in CC space space.thin$
à $angle.l u bar.v v angle.r = sum_(i=1)^n x_i^* y_i in CC $ avec \* le conjugué

==== Linéarité et anti-linéarité <BBAA>
Le produit scalaire est linéaire à droite et anti-linéaire à gauche \
- $angle.l u bar.v v_1 +v_2 angle.r = angle.l u bar.v v_1 angle.r +angle.l u bar.v v_2 angle.r $
- $angle.l u_1+u_2 bar.v v angle.r = angle.l u_1 bar.v v angle.r+ angle.l u_2 bar.v v angle.r$
- $angle.l u bar.v lambda v angle.r= lambda angle.l u bar.v v angle.r$
- $angle.l u bar.v lambda v angle.r= lambda angle.l u bar.v v angle.r lambda in CC$
- $angle.l lambda u bar.v v angle.r= lambda^* angle.l u bar.v v angle.r lambda in CC$

Ex.
- $angle.l u bar.v (2+3i) v angle.r= (2+3i)  angle.l u bar.v v angle.r$
- $angle.l (2+3i) u bar.v v angle.r= (2-3i)  angle.l u bar.v v angle.r$

==== Norme <BBAB>
$accent(u,arrow) vec(x_1,x_2,..,x_n) bar.v.double accent(u,arrow) bar.v.double = sqrt(sum_(i=1)^n = bar.v x_i^2 bar.v) in RR_+$  avec |x| le module de x soit pour un nombre complexe $z = a+i b$ le module de z est  $ |z| = sqrt(a^2+b^2)$ par conséquent $ bar.v.double accent(u,arrow) bar.v.double ^2 = bar.v x_1 bar.v^2 +  bar.v x_2 bar.v^2 + .. +  bar.v x_n bar.v^2 $ puisque $bar.v z  space.thin bar.v^2 = a^2+b^2 = z^*dot.op z arrow. $ 
$ bar.v.double u bar.v.double = sqrt(angle.l u bar.v u angle.r)$

==== Orthogonalité <BBAC>
Deux vecteurs sont orthogonaux si $angle.l u bar.v v angle.r = 0$

==== Symétrie <BBAD>
$ angle.l u bar.v v angle.r = (angle.l v bar.v u angle.r)^* $

== Opérateurs et observables <BC>

Les _opérateurs quantiques_ sont des *transformations linéaires* qui agissent sur les vecteurs d'état quantique pour produire de nouveaux vecteurs d'état. Les _observables_ sont des grandeurs physiques qui peuvent être mesurées expérimentalement, telles que la *position*, la *quantité de mouvement* et l'*énergie*. Les observables sont représentées par des _opérateurs hermitiens_. Les valeurs propres de ces opérateurs sont les valeurs possibles pour les mesures de l'observable correspondante.


=== Opérateurs linéaires <BCA>

Un opérateur linéaire est une fonction $L$ qui fait correspondre des vecteurs d'un espace vectoriel $V$ à des vecteurs d'un autre espace vectoriel $W$, de telle sorte que pour tout vecteur $x$ et $y$ dans $V$ et tout scalaire $c$,

$accent(L, hat)(|x angle.r + |y angle.r) = accent(L, hat)(|x angle.r) + accent(L, hat)(|y 
angle.r)$
$accent(L, hat)(c |x angle.r) = c accent(L, hat)(|x angle.r)$

La notation d'un opérateur linéaire est généralement un chapeau, $accent(L, hat)$. Par exemple, l'opérateur linéaire qui prend un vecteur $x$ à sa transposée est désigné par $accent(T, hat)$.

En mécanique quantique, les opérateurs linéaires sont utilisés pour représenter les observables. Par exemple, l'opérateur linéaire qui représente la position d'une particule est désigné par $accent(x, hat)$. La formule de la valeur espérée d'une observable $O$ est donnée par

$angle.l O angle.r = integral psi^* O psi d x$

où $psi$ est la fonction d'onde de la particule.

=== États propres et valeurs propres <BCB>

 Un observable est une quantité qui peut être mesurée dans un système quantique. Les observables ont des valeurs propres, qui sont les valeurs possibles que l'observable peut prendre. Les états propres sont les états d'un système quantique qui correspondent aux valeurs propres d'un observable.

Les trois règles concernant les états propres et les valeurs propres des observables sont les suivantes :

1. Les observables ont des valeurs propres réelles.
2. Les états propres des observables doivent couvrir tout l'espace vectoriel.
3. Les états propres doivent être mutuellement orthogonaux.

*Exemple*:

Énergie potentielle

L'énergie potentielle d'un système quantique est l'énergie que le système possède en raison de sa position. L'opérateur d'énergie potentielle est désigné par $accent(V, hat)$.

La formule de l'énergie potentielle est donnée par

$accent(V, hat) = -frac(planck.reduce^2,2 m) nabla^2$

où $nabla^2$ est l'opérateur Laplacien.

L'opérateur d'énergie potentielle peut être utilisé pour trouver les valeurs propres et les états propres de l'atome d'hydrogène. Les valeurs propres de l'atome d'hydrogène sont données par

$$E_n = -\frac{13.6\text{ eV}}{n^2}$$

où $n$ est un nombre entier. Les états propres de l'atome d'hydrogène sont donnés par les fonctions d'onde

$$\psi_n(r, \theta, \phi) = \frac{1}{\sqrt{4\pi a_0^3}} \left( \frac{n^2}{r} \right)^{3/2} e^{-n^2r/2a_0} e^{im\theta} e^{in\phi}$$.

où $a_0$ est le rayon de Bohr.

Les états propres de l'atome d'hydrogène sont mutuellement orthogonaux et couvrent tout l'espace vectoriel.

== Le formalisme de Dirac <BD>
Le formalisme de Dirac est une notation mathématique pour la mécanique quantique qui utilise des notations spéciales pour les vecteurs d'état et les opérateurs. Dans cette notation, les vecteurs d'état sont représentés sous forme de ket *$bar.v psi angle.r$* et les vecteurs duale, qui sont les vecteurs adjoints, sont représentés sous forme de bra *$angle.l psi bar.v $*. Lorsque l'on prend le produit scalaire d'un ket avec un bra, on obtient une expression appelée le bra-ket, notée *$angle.l psi bar.v phi angle.r$*, qui représente la probabilité de transition entre les deux états quantiques. Le formalisme de Dirac permet également de représenter les opérateurs quantiques sous forme de notations spéciales, telles que l'opérateur identité, l'opérateur de projection et l'opérateur de translation. Cette notation simplifie considérablement les calculs en mécanique quantique et permet une compréhension plus intuitive de la théorie.

=== Bra-Ket notation <BDA>

La notation de Bra-ket est une notation pour l'algèbre linéaire et les opérateurs linéaires sur des espaces vectoriels complexes ainsi que leur espace dual, à la fois en dimension finie et en dimension infinie. Elle est spécifiquement conçue pour faciliter les types de calculs qui se présentent fréquemment en mécanique quantique. Son utilisation en mécanique quantique est très répandue. De nombreux phénomènes expliqués à l'aide de la mécanique quantique sont expliqués à l'aide de la notation bra-ket.

Dans la notation bra-ket, un bra est désigné par $angle.l psi bar.v$ et un ket est désigné par $bar.v phi angle.r$. Un bra est une fonction linéaire, ce qui signifie qu'il prend un vecteur en entrée et renvoie un nombre complexe. Un ket est un vecteur, ce qui signifie qu'il prend un nombre complexe en entrée et renvoie un vecteur.

La représentation matricielle d'un bra est un vecteur ligne et la représentation matricielle d'un ket est un vecteur colonne. Le produit intérieur d'un bra et d'un ket est un nombre complexe.

La notation bra-ket est liée au produit intérieur de la manière suivante :

$angle.l psi bar.v phi angle.r = integral_(-infinity)^(infinity) psi^*(x) phi (x) d x$

où $psi^*(x)$ est le conjugué complexe de $psi(x)$. Le produit intérieur est une mesure du chevauchement entre deux fonctions.

La notation bra-ket est un outil très utile en mécanique quantique, et elle a de nombreuses applications dans la théorie des ondes et des particules. En comprenant la notation bra-ket, nous pouvons mieux comprendre le comportement des systèmes quantiques.

== Distribution de Dirac <BE>

La fonction delta de Dirac est une fonction définie comme nulle partout sauf au point x=0, où elle est infinie. Elle est souvent désignée par la lettre grecque delta, $delta (x)$. La fonction delta de Dirac a de nombreuses applications en mécanique quantique, où elle est utilisée pour représenter des particules ponctuelles et d'autres objets ayant une très petite étendue spatiale.

Un exemple d'utilisation de la fonction delta de Dirac en mécanique quantique est l'intégrale de la fonction d'onde. L'intégrale de la fonction d'onde est un moyen de calculer la probabilité qu'une particule se trouve à un endroit donné. L'intégrale de la fonction d'onde est définie comme suit :

$integral_(-infinity)^(infinity) psi (x) delta (x-x_0) d x$

où $psi (x)$ est la fonction d'onde de la particule et $x_0$ est l'endroit où la particule est trouvée. La fonction delta de Dirac dans cette intégrale nous indique que nous sommes uniquement intéressés à trouver la particule à l'endroit $x_0$, et que la probabilité de trouver la particule n'importe où ailleurs est nulle.

La fonction delta de Dirac est également utilisée dans la définition de l'opérateur de quantité de mouvement. L'opérateur de quantité de mouvement est un opérateur mathématique qui représente la quantité de mouvement d'une particule. L'opérateur de quantité de mouvement est défini comme suit

$accent(p, hat) = -i planck.reduce frac(d,d x)$

où $i$ est l'unité imaginaire et $planck.reduce$ est la constante de Planck réduite. La fonction delta de Dirac dans cette définition nous indique que nous ne nous intéressons qu'à la dérivée de la fonction d'onde à l'endroit $x=0$, et que la valeur de la dérivée partout ailleurs est nulle.

La fonction delta de Dirac est un outil très utile en mécanique quantique, et elle a de nombreuses applications dans la théorie des ondes et des particules.

#figure(
  image("Dirac_distribution_PDF.svg", width: 80%),
  caption: [
    Representation de la fonction delta de Dirac
  ],
)


== Probalités : La loi de Born <BF>

La probabilité de trouver le système dans l'état propre $|E_i angle.r$ est donnée par :

$P(E = E_i) = abs( angle.l E_i | psi angle.r )^2$

où $|E_i angle.r$ est l'état propre de l'observable $E$ avec la valeur propre $E_i$ et $psi$ est la fonction d'onde du système.

La fonction d'onde $psi$ peut être écrite comme une somme des états propres de l'observable $E$, comme suit :

$psi = sum_i c_i |E_i angle.r$

où $c_i$ sont les coefficients des états propres.

En substituant ceci à la formule de la probabilité, nous obtenons :

$P(E = E_i) =  abs(angle.l E_i | sum_i c_i |E_i angle.r )^2 = sum_i |c_i|^2$.

Ceci montre que la probabilité de trouver le système dans l'état propre $|E_i angle.r$ est égale à la somme des carrés des coefficients des états propres.

== Opérateurs Hermitien <BG>

=== L'adjoint Hermitien <BGA>

L'adjoint hermitien d'un ket est un bra. Il est noté $A^dagger$. L'adjoint hermitien d'un ket est défini comme suit :

$angle.l A^dagger psi | phi angle.r = angle.l psi | A phi angle.r$

pour tous les vecteurs $psi$ et $phi$ dans l'espace vectoriel.

L'adjoint hermitien possède plusieurs propriétés. L'une d'entre elles est qu'il est linéaire. Cela signifie que si $A$ et $B$ sont deux opérateurs, alors

$(A B)^dagger = B^dagger A^dagger$

Une autre propriété est qu'elle est anti-linéaire. Cela signifie que si $A$ est un opérateur et $c$ un nombre complexe, alors

$(c A)^dagger = overline(c) A^dagger$

Enfin, l'adjoint hermitien satisfait la relation suivante :

$(A^dagger)^dagger = A$

L'adjoint hermitien est un outil très important en mécanique quantique. Il est utilisé pour définir le produit intérieur, qui est une mesure du chevauchement entre deux vecteurs. Le produit intérieur est utilisé pour calculer la valeur d'espérance d'une observable, qui est la valeur moyenne de l'observable sur tous les états possibles du système.


==== L'adjoint d'un Ket et d'un Bra <BGAA>

L'adjoint d'un Ket et d'un bra correspond à
$angle.l phi | psi angle.r ^dagger = angle.l phi | psi angle.r^star.op = angle.l psi | phi angle.r$
ou 
$(angle.l phi | psi angle.r)^dagger = bar.v psi angle.r^dagger angle.l phi bar.v^dagger $

D'où $bar.v psi angle.r^dagger = angle.l psi bar.v$ et $angle.l phi bar.v^dagger = bar.v phi angle.r$

=== Opérateur Hermitien <BGB>

Un opérateur hermitien est un opérateur qui satisfait cette condition $accent(E,hat)^dagger = accent(E, hat)$

C'est le cas des observables par conséquent $angle.l psi | accent(E, hat)phi angle.r = angle.l accent(E, hat)psi | phi angle.r$

= Postulats de la mécanique quantique <C>

1. L’état d’un système quantique est entièrement défini par un vecteur d’état dans un espace de Hilbert. Un vecteur d’état est généralement noté $bar.v psi angle.r$ et appartient à un espace de Hilbert H. Les états quantiques sont des vecteurs unitaires dans H, c’est-à-dire que $angle.l psi bar.v psi angle.r = 1$.

2. Les observables quantiques sont représentées par des opérateurs hermitiens. Un opérateur hermitien A est un opérateur qui est égal à sa propre adjointe $A^(dagger)$ (c’est-à-dire que $A = A^dagger "avec "dagger "le conjugué soit "star.op$). Les valeurs propres de l’opérateur hermitien A correspondent aux résultats possibles de la mesure de l’observable associée à A.

3. Les résultats de la mesure d’une observable quantique sont des valeurs propres de l’opérateur associé à cette observable. Si l’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $bar.v psi angle.r$, la probabilité d’obtenir une valeur propre a est donnée par la formule $P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2 " où "bar.v a angle.r$ est le vecteur propre correspondant à la valeur propre a.
 
4. La probabilité de mesurer une valeur propre donnée est donnée par le carré du module de l’amplitude de probabilité correspondante. L’amplitude de probabilité pour obtenir une valeur propre a lorsqu’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $ bar.v psi angle.r $ est donnée par $angle.l a bar.v psi angle.r$. La probabilité P(a) d’obtenir la valeur propre a est alors donnée par $P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2$.

5. L’évolution temporelle d’un système quantique est décrite par l’équation de Schrödinger. L’évolution temporelle d’un état quantique $bar.v psi(t) angle.r$ est décrite par l’équation de Schrödinger $i planck.reduce frac(diff, diff t)bar.v psi(t) angle.r = H bar.v psi(t) angle.r $  où H est l’hamiltonien du système donc l'énergie totale du système et $planck.reduce " est " = frac(planck, 2pi) $.

6. Les états quantiques peuvent être intriqués, ce qui signifie que les propriétés de chaque particule ne peuvent pas être décrites indépendamment des autres particules avec lesquelles elle est intriquée. Par exemple, si deux particules sont intriquées, alors la mesure de l’une des particules affectera instantanément l’état de l’autre particule, peu importe la distance qui les sépare.
