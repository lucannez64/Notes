#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "mecanique quantique 2",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "4 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Introduction
<introduction>
La mécanique quantique est une théorie fondamentale de la physique qui
décrit les propriétés physiques de la nature à l’échelle des atomes et
des particules subatomiques. Elle est le fondement de toute la physique
quantique, y compris la chimie quantique, la théorie quantique des
champs, la technologie quantique et la science de l’information
quantique.

La mécanique quantique diffère de la physique classique à bien des
égards, notamment :

- La quantification : en mécanique quantique, l’énergie, la quantité de
  mouvement, le moment angulaire et d’autres quantités sont souvent
  limités à des valeurs discrètes.

- La dualité onde-particule : les objets ont des caractéristiques à la
  fois de particules et d’ondes.

- Le principe d’incertitude : étant donné un ensemble complet de
  conditions initiales, il existe des limites à la précision avec
  laquelle la valeur d’une quantité physique peut être prédite avant sa
  mesure.

- L’intrication quantique : des objets peuvent être liés entre eux de
  telle sorte qu’ils partagent le même destin, même s’ils sont séparés
  par une grande distance.

La mécanique quantique a joué un rôle important dans le développement de
nombreuses technologies modernes, notamment les lasers, les transistors
et les armes nucléaires. Elle est également essentielle pour comprendre
de nombreux processus fondamentaux dans la nature, tels que le
comportement des atomes et des molécules, la structure des matériaux et
la nature de la lumière. Ce cours propose une introduction aux concepts
de base de la mécanique quantique. Nous discuterons de la fonction
d’onde, de l’équation de Schrödinger et du principe d’incertitude. Nous
aborderons aussi certaines applications de la mécanique quantique,
telles que les lasers et les transistors.

= Cours associés
<cours-associés>
- #link("lagrange.pdf")[Mécanique de Lagrange]

- #link("champs_quantiques.pdf")[La théorie des champs quantiques]

= Histoire
<histoire>
== Quanta
<quanta>
Un quanta est la plus petite unité d’énergie pouvant être absorbée ou
émise. C’est la particule fondamentale de la lumière, et c’est aussi
l’énergie transportée par d’autres particules, telles que les électrons
et les protons.

L’histoire de la découverte des quanta est longue et sinueuse. Le
premier soupçon d’existence d’un quanta est apparu au début des années
1900, lorsque les physiciens étudiaient le comportement de la lumière.
Ils ont découvert que la lumière pouvait être émise en unités discrètes
et que ces unités étaient proportionnelles à la fréquence de la lumière.
Cette découverte a conduit au développement de la théorie quantique, qui
est la branche de la physique qui traite du comportement de la matière
et de l’énergie au niveau atomique et subatomique.

La théorie quantique a révolutionné notre compréhension de l’univers et
a conduit au développement de nombreuses nouvelles technologies, telles
que les lasers et l’énergie nucléaire. Il s’agit toujours d’un domaine
de recherche actif, et les scientifiques apprennent constamment de
nouvelles choses sur le fonctionnement des quanta.

Le terme "quanta" a été utilisé pour la première fois en 1905 par Max
Planck, un physicien allemand. Planck essayait d’expliquer le spectre de
rayonnement du corps noir, c’est-à-dire la distribution de l’énergie
émise par un corps noir à différentes longueurs d’onde. Il a découvert
qu’il ne pouvait expliquer le spectre que s’il supposait que la lumière
était émise en unités discrètes, qu’il a appelées quanta.

== Dualité onde-corpuscule
<dualité-onde-corpuscule>
La dualité onde-particule est le concept de la mécanique quantique selon
lequel toute particule ou entité quantique peut être décrite soit comme
une onde, soit comme une particule. Elle exprime l’incapacité des
concepts classiques de "particule" ou d’"onde" à décrire pleinement le
comportement des objets à l’échelle quantique. Comme l’a écrit Albert
Einstein : “Il semble que nous devions utiliser tantôt l’une, tantôt
l’autre théorie, et tantôt l’une ou l’autre. Nous sommes confrontés à un
nouveau type de difficulté. Nous avons deux images contradictoires de la
réalité ; séparément, aucune d’entre elles n’explique totalement les
phénomènes lumineux, mais ensemble, elles le font.

La dualité onde-particule a été découverte pour la première fois par le
physicien français Louis de Broglie en 1924. De Broglie a proposé que
toutes les particules aient une longueur d’onde, et que cette longueur
d’onde soit inversement proportionnelle à l’élan de la particule. En
d’autres termes, plus la longueur d’onde est courte, plus l’élan de la
particule est important.

L’hypothèse de De Broglie a été confirmée par l’expérience de
Davisson-Germer en 1927. Dans cette expérience, un faisceau d’électrons
a été diffusé à partir d’un cristal. On a constaté que les électrons
interféraient les uns avec les autres, comme le feraient des ondes.
Cette expérience a confirmé que les électrons peuvent se comporter comme
des ondes.

La dualité onde-particule est l’un des concepts les plus importants de
la mécanique quantique. Elle est à la base de nombreux effets étranges
observés dans le monde quantique, tels que l’effet tunnel quantique et
l’intrication quantique.

Image d’une onde dans l’expérience de la double fente
Cette image montre comment une onde peut interférer avec elle-même. Les
ondes sont représentées par les lignes bleues. Les zones bleu clair
représentent les zones où les ondes sont en phase, et les zones bleu
foncé représentent les zones dans lesquelles les ondes sont déphasées.
Comme vous pouvez le voir, les ondes peuvent interférer les unes avec
les autres pour créer des motifs clairs et sombres.

C’est un bon exemple de la façon dont les ondes peuvent se comporter
comme des particules. Les ondes de cette image sont en fait des
électrons qui interfèrent les uns avec les autres pour créer un motif.
Ce n’est qu’un exemple de la manière dont la dualité onde-particule se
manifeste dans le monde quantique.

== Le problème de la mesure
<le-problème-de-la-mesure>
Le problème de la mesure est un problème fondamental de la mécanique
quantique. Il s’agit de réconcilier la fonction d’onde d’un système
quantique avec les résultats des mesures classiques. La fonction d’onde
d’un système quantique est une fonction mathématique qui décrit l’état
du système. Les résultats des mesures sont les valeurs que nous
observons lorsque nous mesurons le système.

L’effondrement de la fonction d’onde est le processus par lequel la
fonction d’onde d’un système quantique change lorsqu’elle est mesurée.
La fonction d’onde s’effondre en un seul état, et on dit que le système
est dans un état propre. L’état propre est l’état qui correspond au
résultat de la mesure.

Le problème de la mesure a été proposé pour la première fois par Niels
Bohr en 1928. Bohr a soutenu que l’effondrement de la fonction d’onde
est une conséquence nécessaire de l’interaction du système quantique
avec l’appareil de mesure. L’appareil de mesure est un système
classique, et il ne peut pas interagir avec le système quantique sans le
perturber.

Il existe de nombreuses interprétations différentes de la mécanique
quantique et chaque interprétation a sa propre façon d’expliquer le
problème de la mesure. L’interprétation la plus populaire de la
mécanique quantique est l’interprétation de Copenhague. Selon cette
interprétation, l’effondrement de la fonction d’onde est un événement
réel, qui se produit lorsque le système quantique interagit avec
l’appareil de mesure.

== Intrication quantique
<intrication-quantique>
L’intrication est un phénomène dans lequel deux ou plusieurs particules
quantiques sont liées de telle sorte qu’elles partagent le même destin,
même lorsqu’elles sont séparées par une grande distance. Par exemple, si
deux électrons sont intriqués, ils auront toujours le même spin, même
s’ils sont séparés par un continent.

L’intrication a été découverte pour la première fois par Albert
Einstein, Boris Podolsky et Nathan Rosen en 1935. Ils ont proposé une
expérience consistant à séparer une paire de particules intriquées et à
mesurer leurs propriétés. Ils ont constaté que les propriétés des
particules étaient toujours corrélées, même si elles étaient séparées
par une grande distance. Cette expérience a montré que l’intrication est
un phénomène réel, qui a depuis été confirmé par de nombreuses autres
expériences.

Cependant, il est important de noter que l’intrication ne peut pas être
utilisée pour communiquer des informations à une vitesse supérieure à
celle de la lumière. En effet, l’information partagée entre les
particules intriquées n’est pas réellement transmise entre elles. Au
lieu de cela, les particules se trouvent simplement dans un état dans
lequel elles partagent le même destin.

= Fondements mathématiques de la mécanique quantique
<fondements-mathématiques-de-la-mécanique-quantique>
== Fonction d’onde
<fonction-donde>
La fonction d’onde est une fonction mathématique qui décrit l’état d’un
système quantique. Il s’agit d’une fonction à valeurs complexes, dont le
carré donne la probabilité de trouver la particule en un point
particulier de l’espace. La fonction d’onde peut être utilisée pour
calculer l’énergie de la particule, sa quantité de mouvement et d’autres
propriétés.

Un exemple de fonction d’onde est la fonction d’onde d’une particule
dans une boîte. Cette fonction d’onde est une onde sinusoïdale dont la
longueur d’onde et l’amplitude varient en fonction de l’énergie de la
particule. Le carré de la fonction d’onde d’une particule dans une boîte
donne la probabilité de trouver la particule en un point particulier de
la boîte.

Un autre exemple de fonction d’onde est la fonction d’onde d’un électron
libre. Cette fonction d’onde est une onde sphérique dont la longueur
d’onde et l’amplitude varient en fonction de l’énergie de l’électron. Le
carré de la fonction d’onde d’un électron libre donne la probabilité de
trouver l’électron en un point particulier de l’espace.

La fonction d’onde est un concept très important en mécanique quantique,
et elle a de nombreuses applications dans la théorie des ondes et des
particules. En comprenant la fonction d’onde, nous pouvons mieux
comprendre le comportement des systèmes quantiques.

Voici un exemple de fonction d’onde pour une particule dans une boîte :

#block[
$psi lr((x)) eq sqrt(2 / L) sin lr((frac(pi n x, L)))$

]
où $n$ est un entier et $L$ la longueur de la boîte. La longueur d’onde
de cette fonction d’onde est $lambda eq 2 L / n$, et l’amplitude est
$A eq sqrt(2 / L)$. Le carré de cette fonction d’onde donne la
probabilité de trouver la particule en un point particulier de la boîte.

Representation de fonction d’onde
== Espaces de Hilbert et vecteurs d’état
<espaces-de-hilbert-et-vecteurs-détat>
La mécanique quantique est une théorie mathématique qui utilise des
#emph[espaces de Hilbert] pour représenter les #strong[états quantiques
d’un système]. Un #emph[espace de Hilbert] est un #strong[espace
vectoriel complexe] avec une structure interne qui permet de définir une
notion de distance et de convergence, nommé produit interne. Les
#emph[vecteurs d’état] quantique sont des éléments de cet espace de
Hilbert et représentent l’état quantique d’un système. Les vecteurs
d’état sont généralement notés #strong[|ψ⟩] et peuvent être exprimés
comme une #strong[combinaison linéaire de vecteurs de base appelés états
propres].

=== Produit Scalaire (Produit interne)
<produit-scalaire-produit-interne>
Le produit scalaire correspond pour deux vecteurs de taille n
$u^arrow.r vec(x_1, x_2, dot.basic dot.basic, x_n) x_i in bb(C)$ et
$v^arrow.r vec(y_1, x_2, dot.basic dot.basic, y_n) y_i in bb(C) med thin$
à

#block[
$angle.l u bar.v v angle.r eq sum_(i eq 1)^n x_i^ast.basic y_i in bb(C)$

]
avec \* le conjugué

==== Linéarité et anti-linéarité
<linéarité-et-anti-linéarité>
Le produit scalaire est linéaire à droite et anti-linéaire à gauche

- $angle.l u lr(|v_1 plus v_2 angle.r eq angle.l u|) v_1 angle.r plus angle.l u bar.v v_2 angle.r$

- $angle.l u_1 plus u_2 lr(|v angle.r eq angle.l u_1|) v angle.r plus angle.l u_2 bar.v v angle.r$

- $angle.l u lr(|lambda v angle.r eq lambda angle.l u|) v angle.r$

- $angle.l u lr(|lambda v angle.r eq lambda angle.l u|) v angle.r lambda in bb(C)$

- $angle.l lambda u lr(|v angle.r eq lambda^ast.basic angle.l u|) v angle.r lambda in bb(C)$

Ex.

- $angle.l u lr(|lr((2 plus 3 i)) v angle.r eq lr((2 plus 3 i)) angle.l u|) v angle.r$

- $angle.l lr((2 plus 3 i)) u lr(|v angle.r eq lr((2 minus 3 i)) angle.l u|) v angle.r$

==== Norme
<norme>
$u^arrow.r vec(x_1, x_2, dot.basic dot.basic, x_n) parallel u^arrow.r parallel eq sqrt(sum_(i eq 1)^n eq lr(|x_i^2|)) in bb(R)_plus$
avec |x| le module de x soit pour un nombre complexe $z eq a plus i b$
le module de z est $ lr(|z|) eq sqrt(a^2 plus b^2) $ par conséquent
$ parallel u^arrow.r parallel^2 eq lr(|x_1|)^2 plus lr(|x_2|)^2 plus dot.basic dot.basic plus lr(|x_n|)^2 $
puisque
$lr(|z thin|)^2 eq a^2 plus b^2 eq z^ast.basic dot.op z arrow.r dot.basic$
$ parallel u parallel eq sqrt(angle.l u bar.v u angle.r) $

==== Orthogonalité
<orthogonalité>
Deux vecteurs sont orthogonaux si $angle.l u bar.v v angle.r eq 0$

==== Symétrie
<symétrie>
$ angle.l u bar.v v angle.r eq lr((angle.l v bar.v u angle.r))^ast.basic $

== Opérateurs et observables
<opérateurs-et-observables>
Les #emph[opérateurs quantiques] sont des #strong[transformations
linéaires] qui agissent sur les vecteurs d’état quantique pour produire
de nouveaux vecteurs d’état. Les #emph[observables] sont des grandeurs
physiques qui peuvent être mesurées expérimentalement, telles que la
#strong[position], la #strong[quantité de mouvement] et
l’#strong[énergie]. Les observables sont représentées par des
#emph[opérateurs hermitiens]. Les valeurs propres de ces opérateurs sont
les valeurs possibles pour les mesures de l’observable correspondante.

=== Opérateurs linéaires
<opérateurs-linéaires>
Un opérateur linéaire est une fonction $L$ qui fait correspondre des
vecteurs d’un espace vectoriel $V$ à des vecteurs d’un autre espace
vectoriel $W$, de telle sorte que pour tout vecteur $x$ et $y$ dans $V$
et tout scalaire $c$,

$hat(L) lr((lr(|x angle.r plus|) y angle.r)) eq hat(L) lr((bar.v x angle.r)) plus hat(L) lr((bar.v y angle.r))$
$hat(L) lr((c bar.v x angle.r)) eq c hat(L) lr((bar.v x angle.r))$

La notation d’un opérateur linéaire est généralement un chapeau,
$hat(L)$. Par exemple, l’opérateur linéaire qui prend un vecteur $x$ à
sa transposée est désigné par $hat(T)$.

En mécanique quantique, les opérateurs linéaires sont utilisés pour
représenter les observables. Par exemple, l’opérateur linéaire qui
représente la position d’une particule est désigné par $hat(x)$. La
formule de la valeur espérée d’une observable $O$ est donnée par

#block[
$angle.l O angle.r eq integral psi^ast.basic O psi d x$

]
où $psi$ est la fonction d’onde de la particule.

=== États propres et valeurs propres
<états-propres-et-valeurs-propres>
Un observable est une quantité qui peut être mesurée dans un système
quantique. Les observables ont des valeurs propres, qui sont les valeurs
possibles que l’observable peut prendre. Les états propres sont les
états d’un système quantique qui correspondent aux valeurs propres d’un
observable.

Les trois règles concernant les états propres et les valeurs propres des
observables sont les suivantes :

+ Les observables ont des valeurs propres réelles.

+ Les états propres des observables doivent couvrir tout l’espace
  vectoriel.

+ Les états propres doivent être mutuellement orthogonaux.

#strong[Exemple]:

Énergie potentielle

L’énergie potentielle d’un système quantique est l’énergie que le
système possède en raison de sa position. L’opérateur d’énergie
potentielle est désigné par $hat(V)$.

La formule de l’énergie potentielle est donnée par

#block[
$hat(V) eq minus frac(planck.reduce^2, 2 m) nabla^2$

]
où $nabla^2$ est l’opérateur Laplacien.

L’opérateur d’énergie potentielle peut être utilisé pour trouver les
valeurs propres et les états propres de l’atome d’hydrogène. Les valeurs
propres de l’atome d’hydrogène sont données par

#block[
$E_n eq minus frac(13.6 upright(" eV"), n^2)$

]
où $n$ est un nombre entier. Les états propres de l’atome d’hydrogène
sont donnés par les fonctions d’onde

#block[
$psi_n lr((r comma theta comma phi)) eq 1 / sqrt(4 pi a_0^3) lr((n^2 / r))^(3 / 2) e^(minus n^2 r / 2 a_0) e^(i m theta) e^(i n phi)$

]
où $a_0$ est le rayon de Bohr.

Les états propres de l’atome d’hydrogène sont mutuellement orthogonaux
et couvrent tout l’espace vectoriel.

== Le formalisme de Dirac
<le-formalisme-de-dirac>
Le formalisme de Dirac est une notation mathématique pour la mécanique
quantique qui utilise des notations spéciales pour les vecteurs d’état
et les opérateurs. Dans cette notation, les vecteurs d’état sont
représentés sous forme de ket #strong[$bar.v psi angle.r$] et les
vecteurs duale, qui sont les vecteurs adjoints, sont représentés sous
forme de bra #strong[$angle.l psi bar.v$]. Lorsque l’on prend le produit
scalaire d’un ket avec un bra, on obtient une expression appelée le
bra-ket, notée #strong[$angle.l psi bar.v phi angle.r$], qui représente
la probabilité de transition entre les deux états quantiques. Le
formalisme de Dirac permet également de représenter les opérateurs
quantiques sous forme de notations spéciales, telles que l’opérateur
identité, l’opérateur de projection et l’opérateur de translation. Cette
notation simplifie considérablement les calculs en mécanique quantique
et permet une compréhension plus intuitive de la théorie.

=== Bra-Ket notation
<bra-ket-notation>
La notation de Bra-ket est une notation pour l’algèbre linéaire et les
opérateurs linéaires sur des espaces vectoriels complexes ainsi que leur
espace dual, à la fois en dimension finie et en dimension infinie. Elle
est spécifiquement conçue pour faciliter les types de calculs qui se
présentent fréquemment en mécanique quantique. Son utilisation en
mécanique quantique est très répandue. De nombreux phénomènes expliqués
à l’aide de la mécanique quantique sont expliqués à l’aide de la
notation bra-ket.

Dans la notation bra-ket, un bra est désigné par $angle.l psi bar.v$ et
un ket est désigné par $bar.v phi angle.r$. Un bra est une fonction
linéaire, ce qui signifie qu’il prend un vecteur en entrée et renvoie un
nombre complexe. Un ket est un vecteur, ce qui signifie qu’il prend un
nombre complexe en entrée et renvoie un vecteur.

La représentation matricielle d’un bra est un vecteur ligne et la
représentation matricielle d’un ket est un vecteur colonne. Le produit
intérieur d’un bra et d’un ket est un nombre complexe.

La notation bra-ket est liée au produit intérieur de la manière suivante
:

#block[
$angle.l psi bar.v phi angle.r eq integral_(minus oo)^oo psi^ast.basic lr((x)) phi lr((x)) d x$

]
où $psi^ast.basic lr((x))$ est le conjugué complexe de $psi lr((x))$. Le
produit intérieur est une mesure du chevauchement entre deux fonctions.

La notation bra-ket est un outil très utile en mécanique quantique, et
elle a de nombreuses applications dans la théorie des ondes et des
particules. En comprenant la notation bra-ket, nous pouvons mieux
comprendre le comportement des systèmes quantiques.

== Distribution de Dirac
<distribution-de-dirac>
La fonction delta de Dirac est une fonction définie comme nulle partout
sauf au point x\=0, où elle est infinie. Elle est souvent désignée par
la lettre grecque delta, $delta lr((x))$. La fonction delta de Dirac a
de nombreuses applications en mécanique quantique, où elle est utilisée
pour représenter des particules ponctuelles et d’autres objets ayant une
très petite étendue spatiale.

Un exemple d’utilisation de la fonction delta de Dirac en mécanique
quantique est l’intégrale de la fonction d’onde. L’intégrale de la
fonction d’onde est un moyen de calculer la probabilité qu’une particule
se trouve à un endroit donné. L’intégrale de la fonction d’onde est
définie comme suit :

#block[
$integral_(minus oo)^oo psi lr((x)) delta lr((x minus x_0)) d x$

]
où $psi lr((x))$ est la fonction d’onde de la particule et $x_0$ est
l’endroit où la particule est trouvée. La fonction delta de Dirac dans
cette intégrale nous indique que nous sommes uniquement intéressés à
trouver la particule à l’endroit $x_0$, et que la probabilité de trouver
la particule n’importe où ailleurs est nulle.

La fonction delta de Dirac est également utilisée dans la définition de
l’opérateur de quantité de mouvement. L’opérateur de quantité de
mouvement est un opérateur mathématique qui représente la quantité de
mouvement d’une particule. L’opérateur de quantité de mouvement est
défini comme suit

#block[
$hat(p) eq minus i planck.reduce frac(d, d x)$

]
où $i$ est l’unité imaginaire et $planck.reduce$ est la constante de
Planck réduite. La fonction delta de Dirac dans cette définition nous
indique que nous ne nous intéressons qu’à la dérivée de la fonction
d’onde à l’endroit $x eq 0$, et que la valeur de la dérivée partout
ailleurs est nulle.

La fonction delta de Dirac est un outil très utile en mécanique
quantique, et elle a de nombreuses applications dans la théorie des
ondes et des particules.

Representation de la fonction delta de Dirac
== Probalités : La loi de Born
<probalités-la-loi-de-born>
La probabilité de trouver le système dans l’état propre
$bar.v E_i angle.r$ est donnée par :

#block[
$P lr((E eq E_i)) eq lr(|angle.l E_i med bar.v med psi angle.r|)^2$

]
où $bar.v E_i angle.r$ est l’état propre de l’observable $E$ avec la
valeur propre $E_i$ et $psi$ est la fonction d’onde du système.

La fonction d’onde $psi$ peut être écrite comme une somme des états
propres de l’observable $E$, comme suit :

#block[
$psi eq sum_i c_i bar.v E_i angle.r$

]
où $c_i$ sont les coefficients des états propres.

En substituant ceci à la formule de la probabilité, nous obtenons :

#block[
$P lr((E eq E_i)) eq lr(|angle.l E_i lr(|sum_i c_i|) E_i angle.r|)^2 eq sum_i lr(|c_i|)^2$

]
Ceci montre que la probabilité de trouver le système dans l’état propre
$bar.v E_i angle.r$ est égale à la somme des carrés des coefficients des
états propres.

=== Matrice densité et Espérance mathématique
<matrice-densité-et-espérance-mathématique>
Une matrice densité est une matrice qui décrit l’état quantique d’un
système physique. Elle permet de calculer les probabilités des résultats
de toute mesure effectuée sur ce système, en utilisant la règle de Born.
Il s’agit d’une généralisation des vecteurs d’état ou des fonctions
d’onde plus habituels : alors que ceux-ci ne peuvent représenter que des
états purs, les matrices de densité peuvent également représenter des
états mixtes.

L’espérance mathématique d’un opérateur $hat(A)$ dans un système
quantique décrit par une matrice densité $rho$ est donnée par la formule
suivante :

#block[
$angle.l hat(A) angle.r eq upright(" Tr") lr((rho hat(A)))$

]
où $upright("Tr")$ est la fonction trace. La fonction trace d’une
matrice est la somme de ses éléments diagonaux.

La fonction trace possède les propriétés suivantes :

- C’est une fonction linéaire.

- Elle est invariante sous les transformations unitaires.

- Elle est définie positive.

La fonction trace peut être utilisée pour calculer la valeur d’espérance
de tout opérateur dans un système quantique.

La matrice densité peut être utilisée pour calculer les probabilités des
résultats de toute mesure effectuée sur un système quantique. La règle
de Born stipule que la probabilité d’obtenir un résultat $a$ lors de la
mesure d’une observable $hat(A)$ est donnée par la formule suivante :

#block[
$P lr((a)) eq frac(angle.l a lr(|rho|) a angle.r, sum_i angle.l i lr(|rho|) i angle.r)$

]
où $bar.v a angle.r$ est l’état propre de $hat(A)$ correspondant au
résultat $a$.

La matrice densité est un outil très important en mécanique quantique.
Elle peut être utilisée pour calculer les valeurs d’espérance des
opérateurs, les probabilités des résultats des mesures et la fonction
d’onde d’un système quantique.

== Opérateurs Hermitien
<opérateurs-hermitien>
=== L’adjoint Hermitien
<ladjoint-hermitien>
L’adjoint hermitien d’un ket est un bra. Il est noté $A^dagger$.
L’adjoint hermitien d’un ket est défini comme suit :

$angle.l A^dagger psi lr(|phi angle.r eq angle.l psi|) A phi angle.r$

pour tous les vecteurs $psi$ et $phi$ dans l’espace vectoriel.

L’adjoint hermitien possède plusieurs propriétés. L’une d’entre elles
est qu’il est linéaire. Cela signifie que si $A$ et $B$ sont deux
opérateurs, alors

$lr((A B))^dagger eq B^dagger A^dagger$

Une autre propriété est qu’elle est anti-linéaire. Cela signifie que si
$A$ est un opérateur et $c$ un nombre complexe, alors

$lr((c A))^dagger eq c_macron A^dagger$

Enfin, l’adjoint hermitien satisfait la relation suivante :

$lr((A^dagger))^dagger eq A$

L’adjoint hermitien est un outil très important en mécanique quantique.
Il est utilisé pour définir le produit intérieur, qui est une mesure du
chevauchement entre deux vecteurs. Le produit intérieur est utilisé pour
calculer la valeur d’espérance d’une observable, qui est la valeur
moyenne de l’observable sur tous les états possibles du système.

==== L’adjoint d’un Ket et d’un Bra
<ladjoint-dun-ket-et-dun-bra>
L’adjoint d’un Ket et d’un bra correspond à
$angle.l phi lr(|psi angle.r^dagger eq angle.l phi|) psi angle.r^star.op eq angle.l psi med bar.v med phi angle.r$
ou
$lr((angle.l phi med bar.v med psi angle.r))^dagger eq lr(|psi angle.r^dagger angle.l phi|)^dagger$

D’où $lr(|psi angle.r^dagger eq angle.l psi|)$ et
$angle.l phi lr(|""^dagger eq|) phi angle.r$

=== Opérateur Hermitien
<opérateur-hermitien>
Un opérateur hermitien est un opérateur qui satisfait cette condition
$hat(E)^dagger eq hat(E)$

C’est le cas des observables par conséquent
$angle.l psi lr(|hat(E) phi angle.r eq angle.l hat(E) psi|) phi angle.r$

== Opérateur Unitaire
<opérateur-unitaire>
Un opérateur unitaire est un opérateur linéaire $U$ sur un espace de
Hilbert $H$ qui satisfait les conditions suivantes :

+ $U$ est inversible.

+ $U^(minus 1) eq U^dagger$, où $U^dagger$ est l’adjoint de $U$.

+ $U$ préserve le produit intérieur de $H$, c’est-à-dire que pour tous
  les vecteurs $x$ et $y$ dans $H$, on a
  $angle.l U x comma U y angle.r eq angle.l x comma y angle.r$.

Les opérateurs unitaires sont importants en mécanique quantique, car ils
représentent des transformations physiques qui préservent le produit
intérieur et la probabilité. Par exemple, l’opérateur d’évolution
temporelle $U lr((t))$ pour un système quantique est unitaire et
représente l’évolution du système dans le temps.

Les propriétés des opérateurs unitaires peuvent être déduites de leur
définition. Par exemple, les valeurs propres d’un opérateur unitaire
sont toujours des nombres complexes de module unitaire, et les vecteurs
propres d’un opérateur unitaire forment une base orthonormée pour $H$.

Les opérateurs unitaires conservent les probabilités parce qu’ils
préservent le produit intérieur. Le produit intérieur est une mesure du
chevauchement entre deux vecteurs, et il est égal à la probabilité que
deux vecteurs se retrouvent dans le même état après une mesure. Si un
opérateur unitaire préserve le produit intérieur, il préserve également
la probabilité.

Voici quelques exemples d’opérateurs unitaires :

- L’opérateur de rotation $R lr((theta))$, qui fait pivoter un vecteur
  d’un angle $theta$ autour de l’origine.

- L’opérateur de réflexion $S$, qui réfléchit un vecteur à travers
  l’origine.

- La transformée d’Hadamard $H$, qui transforme un vecteur en une
  superposition égale de tous les états de base possibles.

- Les matrices de Pauli $sigma_x$, $sigma_y$, et $sigma_z$, qui sont
  utilisées pour décrire le spin en mécanique quantique.

== Principe d’incertitude et Commutation
<principe-dincertitude-et-commutation>
En mécanique quantique, le commutateur de deux opérateurs est une mesure
de la manière dont les deux opérateurs peuvent être mesurés
simultanément. Le commutateur de deux opérateurs est défini comme
$bracket.l hat(A) comma hat(B) bracket.r eq hat(A) hat(B) minus hat(B) hat(A)$,
où $hat(A)$ et $hat(B)$ sont les deux opérateurs. Si le commutateur de
deux opérateurs est nul, on dit que les opérateurs sont commutatifs. Les
opérateurs commutatifs peuvent être mesurés simultanément, ce qui
signifie que les résultats de la mesure d’un opérateur n’affecteront pas
les résultats de la mesure de l’autre opérateur.

Si deux observables commutent, ils ont alors une base propre simultanée.
Une base propre est un ensemble de vecteurs qui sont des vecteurs
propres d’un opérateur donné. Un vecteur propre est un vecteur qui,
lorsqu’il est influencé par un opérateur, a une valeur fixe. La base
propre simultanée de deux observables commutatives est un ensemble de
vecteurs qui sont des vecteurs propres des deux observables.

Le principe d’incertitude stipule qu’il est impossible de connaître à la
fois la position et la quantité de mouvement d’une particule avec une
précision parfaite. Le principe d’incertitude peut être dérivé du
commutateur des opérateurs de position et de quantité de mouvement. Le
commutateur des opérateurs de position et de quantité de mouvement est
$bracket.l x comma p bracket.r eq i planck.reduce$, où $planck.reduce$
est la constante de Planck réduite. Cela signifie qu’il est impossible
de mesurer simultanément la position et la quantité de mouvement d’une
particule avec une précision parfaite.

Le principe d’incertitude peut être exprimé mathématiquement comme suit
pour la position et la quantité de mouvement:

#block[
$sigma_x sigma_p gt.eq planck.reduce / 2$

]
où $sigma_x$ est l’incertitude sur la position et $sigma_p$ est
l’incertitude sur la quantité de mouvement.

Il existe une forme généralisée du principe d’incertitude nommé
relations d’incertitude Robertson-Schrödinger:

#block[
$sigma_A sigma_B gt.eq lr(|frac(1, 2 i) angle.l bracket.l hat(A) comma hat(B) bracket.r angle.r|)$

]
Le principe d’incertitude est un principe fondamental de la mécanique
quantique. Il a des implications importantes pour l’interprétation de la
mécanique quantique et pour la compréhension du monde physique.

= Postulats de la mécanique quantique
<postulats-de-la-mécanique-quantique>
+ L’état d’un système quantique est entièrement défini par un vecteur
  d’état dans un espace de Hilbert. Un vecteur d’état est généralement
  noté $bar.v psi angle.r$ et appartient à un espace de Hilbert H. Les
  états quantiques sont des vecteurs unitaires dans H, c’est-à-dire que
  $angle.l psi bar.v psi angle.r eq 1$.

+ Les observables quantiques sont représentées par des opérateurs
  hermitiens. Un opérateur hermitien A est un opérateur qui est égal à
  sa propre adjointe $A^dagger$ (c’est-à-dire que
  $A eq A^dagger upright(" avec ") dagger upright(" le conjugué soit ") star.op$).
  Les valeurs propres de l’opérateur hermitien A correspondent aux
  résultats possibles de la mesure de l’observable associée à A.

+ Les résultats de la mesure d’une observable quantique sont des valeurs
  propres de l’opérateur associé à cette observable. Si l’on mesure une
  observable quantique représentée par l’opérateur hermitien A sur un
  état quantique $bar.v psi angle.r$, la probabilité d’obtenir une
  valeur propre a est donnée par la formule
  $P lr((a)) eq lr(|angle.l a|) psi angle.r lr(|""^2 upright(" où ")|) a angle.r$
  est le vecteur propre correspondant à la valeur propre a.

+ La probabilité de mesurer une valeur propre donnée est donnée par le
  carré du module de l’amplitude de probabilité correspondante.
  L’amplitude de probabilité pour obtenir une valeur propre a lorsqu’on
  mesure une observable quantique représentée par l’opérateur hermitien
  A sur un état quantique $bar.v psi angle.r$ est donnée par
  $angle.l a bar.v psi angle.r$. La probabilité P(a) d’obtenir la valeur
  propre a est alors donnée par

  #block[
  $P lr((a)) eq lr(|angle.l a|) psi angle.r bar.v^2$

  ]
  .

+ L’évolution temporelle d’un système quantique est décrite par
  l’équation de Schrödinger. L’évolution temporelle d’un état quantique
  $bar.v psi lr((t)) angle.r$ est décrite par l’équation de Schrödinger

  #block[
  $i planck.reduce frac(diff, diff t) lr(|psi lr((t)) angle.r eq hat(H)|) psi lr((t)) angle.r$

  ]
  où $hat(H)$ est l’hamiltonien du système donc l’énergie totale du
  système et $planck.reduce upright(" est ") eq frac(h, 2 pi)$.

+ Les états quantiques peuvent être intriqués, ce qui signifie que les
  propriétés de chaque particule ne peuvent pas être décrites
  indépendamment des autres particules avec lesquelles elle est
  intriquée. Par exemple, si deux particules sont intriquées, alors la
  mesure de l’une des particules affectera instantanément l’état de
  l’autre particule, peu importe la distance qui les sépare.

== Equation de Schrödinger
<equation-de-schrödinger>
L’équation de Schrödinger dépendante du temps peut être obtenue à partir
de l’équation de Schrödinger indépendante en suivant les étapes
suivantes :

+ Supposons que la fonction d’onde $Psi lr((t comma r))$ puisse être
  écrite comme un produit d’un facteur dépendant du temps et d’un
  facteur dépendant de l’espace :

#block[
$Psi lr((t comma r)) eq psi lr((t)) phi lr((r))$

]
+ Substituer ceci dans l’équation de Schrödinger indépendante et
  multiplier les deux côtés par $psi lr((t))^ast.basic$ :

#block[
$minus frac(i planck.reduce, 2 m) psi prime lr((t)) eq lr((minus frac(planck.reduce^2, 2 m))) Delta phi lr((r)) plus V lr((r)) phi lr((r)) paren.r psi lr((t))^ast.basic$

]
+ Simplifier le côté gauche en combinant les termes :

#block[
$minus frac(i planck.reduce, 2 m) psi prime lr((t)) eq minus frac(planck.reduce^2, 2 m) Delta psi lr((t)) plus V lr((r)) psi lr((t))^ast.basic$

]
+ Intégrer les deux côtés par rapport au temps :

#block[
$psi lr((t)) eq psi lr((0)) plus frac(i planck.reduce, 2 m) integral_0^t Delta psi lr((s)) d s minus frac(i planck.reduce, 2 m) integral_0^t V lr((r)) psi lr((s))^ast.basic d s$

]
+ Le premier terme du côté droit est la fonction d’onde initiale, que
  l’on suppose connue. Le second terme du côté droit est une fonction de
  l’espace et du temps, et il peut être trouvé en résolvant l’équation
  de Schrödinger indépendante du temps :

#block[
$Delta psi lr((s)) plus V lr((r)) psi lr((s)) eq 0$

]
L’équation de Schrödinger dépendante du temps peut alors être écrite
comme suit :

#block[
$i planck.reduce frac(diff psi lr((t)), diff t) eq H psi lr((t))$

]
où $H$ est l’opérateur hamiltonien.

L’équation de Schrödinger dépendante du temps est une équation linéaire
qui peut être résolue en utilisant le principe de superposition. Le
principe de superposition stipule que toute solution à l’équation de
Schrödinger indépendante du temps peut être additionnée pour former une
autre solution à l’équation de Schrödinger dépendante du temps.

La densité de probabilité est définie comme $lr(|psi|)^2$, et c’est une
mesure de la probabilité de trouver la particule en un point donné de
l’espace. La probabilité totale doit toujours être égale à 1, ce qui
signifie que la fonction d’onde doit être normalisée.

La constante de Planck donne les unités de l’opérateur hamiltonien.
L’opérateur hamiltonien est le générateur de translations temporelles,
et l’énergie est la quantité conservée sous l’effet des translations
temporelles.

=== Exemple d’un puits de potentiel fini
<exemple-dun-puits-de-potentiel-fini>
L’équation de Schrödinger pour une particule dans un puits de potentiel
fini est la suivante :

#block[
$minus frac(planck.reduce^2, 2 m) nabla^2 psi lr((x)) plus V lr((x)) psi lr((x)) eq E psi lr((x))$

]
où $V lr((x))$ est l’énergie potentielle de la particule, $E$ est
l’énergie de la particule, $psi lr((x))$ est la fonction d’onde de la
particule, et $planck.reduce$ est la constante de Planck réduite.

Pour résoudre l’équation de Schrödinger, on peut utiliser la méthode de
séparation des variables. Cette méthode consiste à supposer que la
fonction d’onde peut être séparée en deux parties :

#block[
$psi lr((x)) eq X lr((x)) Y lr((y)) Z lr((z))$

]
où $X lr((x))$ est une fonction de $x$, $Y lr((y))$ est une fonction de
$y$, et $Z lr((z))$ est une fonction de $z$. En substituant ceci à
l’équation de Schrödinger, nous obtenons :

#block[
$minus frac(planck.reduce^2, 2 m) nabla^2 X lr((x)) plus V lr((x)) X lr((x)) eq E X lr((x))$

]
#block[
$minus frac(planck.reduce^2, 2 m) nabla^2 Y lr((y)) plus E Y lr((y))$

]
#block[
$minus frac(planck.reduce^2, 2 m) nabla^2 Z lr((z)) plus E Z lr((z))$

]
La première équation peut être résolue pour $X lr((x))$, la deuxième
pour $Y lr((y))$ et la troisième pour $Z lr((z))$. Les solutions de ces
équations sont appelées fonctions propres, et les valeurs propres
correspondantes sont les niveaux d’énergie de la particule.

Dans le cas d’une particule dans un puits de potentiel fini, l’énergie
potentielle est nulle à l’intérieur du puits et infinie à l’extérieur.
Cela signifie que les fonctions propres doivent être nulles à
l’extérieur du puits. Les solutions de l’équation de Schrödinger dans ce
cas sont appelées ondes stationnaires et sont données par :

#block[
$psi_n lr((x)) eq sqrt(2 / a sin lr((frac(n pi x, a))))$

]
où $a$ est la largeur du puits et $n$ est un entier. Les niveaux
d’énergie de la particule sont donnés par :

#block[
$E_n eq frac(n^2 pi^2 planck.reduce^2, 2 m a^2)$

]
Les ondes stationnaires représentent les états possibles de la particule
dans le puits. La particule ne peut exister que dans ces états, et elle
ne peut avoir d’autre énergie que les niveaux d’énergie donnés par
l’équation de Schrödinger.

=== Exemple sur un oscillateur harmonique
<exemple-sur-un-oscillateur-harmonique>
L’équation de Schrödinger pour l’oscillateur harmonique est la suivante
:

#block[
$minus frac(planck.reduce^2, 2 m) nabla^2 psi lr((x)) plus 1 / 2 m omega^2 x^2 psi lr((x)) eq E psi lr((x))$

]
où $m$ est la masse de l’oscillateur, $omega$ est la fréquence
angulaire, et $E$ est l’énergie de l’oscillateur.

Pour résoudre cette équation, on peut utiliser la méthode de séparation
des variables. Cette méthode consiste à supposer que la fonction d’onde
peut être séparée en deux parties :

#block[
$psi lr((x)) eq X lr((x)) Y lr((y)) Z lr((z))$

]
où $X lr((x))$ est une fonction de $x$, $Y lr((y))$ est une fonction de
$y$, et $Z lr((z))$ est une fonction de $z$. En substituant ceci à
l’équation de Schrödinger, nous obtenons :

#block[
$minus frac(planck.reduce^2, 2 m) frac(d^2 X lr((x)), d x^2) plus 1 / 2 m omega^2 x^2 X lr((x)) eq E X lr((x))$

]
#block[
$minus frac(planck.reduce^2, 2 m) frac(d^2 Y lr((y)), d y^2)$

]
#block[
$minus frac(planck.reduce^2, 2 m) frac(d^2 Z lr((z)), d z^2) plus 0 eq E Z lr((z))$

]
La première équation peut être résolue pour $X lr((x))$, la deuxième
pour $Y lr((y))$ et la troisième pour $Z lr((z))$. Les solutions de ces
équations sont appelées fonctions propres, et les valeurs propres
correspondantes sont les niveaux d’énergie de l’oscillateur.

Les fonctions propres de l’oscillateur harmonique sont appelées
polynômes d’Hermite et sont données par :

#block[
$psi_n lr((x)) eq 1 / sqrt(n excl) sqrt(frac(2 omega, p i)) H_n lr((sqrt(omega / 2) x))$

]
où $H_n$ est le $n$ème polynôme d’Hermite. Les niveaux d’énergie de
l’oscillateur sont donnés par :

#block[
$E_n eq planck.reduce omega lr((n plus 1 / 2))$

]
Les polynômes d’Hermite représentent les états possibles de
l’oscillateur. L’oscillateur ne peut exister que dans ces états, et il
ne peut avoir d’autre énergie que les niveaux d’énergie donnés par
l’équation de Schrödinger.

== Moment quantique
<moment-quantique>
L’opérateur de quantité de mouvement est noté $hat(P)$, et la fonction
d’onde d’une particule est notée $psi$. L’opérateur de quantité de
mouvement agit sur la fonction d’onde comme suit :

#block[
$hat(P) psi lr((x)) eq minus i planck.reduce frac(d psi lr((x)), d x)$

]
où $planck.reduce$ est la constante de Planck réduite.

L’opérateur de quantité de mouvement peut être utilisé pour calculer la
quantité de mouvement d’une particule. La quantité de mouvement d’une
particule est donnée par la formule suivante :

#block[
$p eq angle.l psi med bar.v med hat(P) psi angle.r$

]
où $angle.l psi med bar.v med hat(P) psi angle.r$ est la valeur
d’espérance de l’opérateur de quantité de mouvement.

= Effet Tunnel
<effet-tunnel>
L’effet tunnel quantique est un phénomène dans lequel un objet tel qu’un
électron ou un atome traverse une barrière d’énergie potentielle que,
selon la mécanique classique, l’objet n’a pas suffisamment d’énergie
pour franchir.

L’effet tunnel est une conséquence de la nature ondulatoire de la
matière, où la fonction d’onde quantique décrit l’état d’une particule
ou d’un autre système physique, et où les équations d’onde telles que
l’équation de Schrödinger décrivent leur comportement.

L’équation de Schrödinger peut être résolue pour trouver la fonction
d’onde d’une particule dans une barrière d’énergie potentielle. La
fonction d’onde pourra avoir une valeur non nulle de l’autre côté de la
barrière, même si la particule n’a pas assez d’énergie pour atteindre ce
côté selon la mécanique classique.

La probabilité d’un effet tunnel est proportionnelle au carré de la
fonction d’onde. Cela signifie que les particules ayant une fonction
d’onde plus grande auront plus de chances de traverser une barrière que
les particules ayant une fonction d’onde plus petite.
#link("tunnel.html")[Tunnel Effect Video]

= Spin
<spin>
Le spin est une forme intrinsèque de moment angulaire porté par les
particules élémentaires. Il s’agit d’une propriété quantifiée exprimée
par un nombre quantique de spin, noté "s". Par exemple, les électrons
ont un spin 1/2, ce qui signifie qu’ils ont deux états de spin
possibles. Le spin d’une particule détermine un grand nombre de ses
propriétés, comme son moment magnétique et son comportement statistique.
Le spin est une propriété fondamentale des particules, comme la masse et
la charge, et il ne peut pas être expliqué par d’autres propriétés.

Une conséquence importante du spin des particules est le couplage
spin-orbite, qui résulte de l’interaction entre le spin d’une particule
et son mouvement dans un champ magnétique. Le couplage spin-orbite peut
provoquer la division des niveaux d’énergie dans les atomes, ce qui
affecte les propriétés des électrons et peut conduire à des phénomènes
tels que la structure fine des lignes spectrales.

Le spin d’une particule la fait agir comme un petit aimant. Cela
signifie que les particules peuvent interagir par l’intermédiaire de la
force magnétique et que l’interaction du moment magnétique de spin
entraîne également l’alignement des particules dans les champs
magnétiques. Les propriétés magnétiques d’une particule sont déterminées
par son spin, qui détermine l’intensité et la direction de son moment
magnétique. Le moment magnétique μ d’une particule est proportionnel à
son moment angulaire de spin :

#block[
$mu eq g ast.basic lr((e / 2 m)) ast.basic S$

]
où g est le facteur g, e est la charge élémentaire et m est la masse de
la particule.

La direction du spin d’une particule peut être décrite par son vecteur
spin, qui est une quantité vectorielle pointant dans la direction du
moment angulaire de spin de la particule. L’ampleur du moment angulaire
de spin peut être calculée à l’aide de la formule suivante :

#block[
$lr(|S|) eq sqrt(s lr((s plus 1))) ast.basic ħ$

]
où ħ (h-bar) est la constante de Planck réduite.

Le moment angulaire du spin a des composantes quantifiées le long d’un
axe donné (généralement l’axe z). La composante le long de l’axe z,
notée Sz, peut prendre des valeurs discrètes données par :

#block[
$S z eq m_s ast.basic ħ$

]
où $m_s$ est le nombre quantique magnétique, qui varie de -s à s par pas
entiers. Par exemple, un électron, qui est un fermion de spin 1/2, peut
avoir deux valeurs possibles pour $S z$ : $plus ħ / 2$ et $minus ħ / 2$,
correspondant respectivement à $m_s eq plus 1 / 2$ et
$m_s eq minus 1 / 2$.

La rotation du vecteur spin sous l’effet des rotations de la particule
est décrite par l’opérateur de moment angulaire de spin, noté S.
L’algèbre de spin régit les relations de commutation entre les
composantes du vecteur spin :

#block[
$bracket.l S x comma S y bracket.r eq i ħ S z comma bracket.l S y comma S z bracket.r eq i ħ S x comma bracket.l S z comma S x bracket.r eq i ħ S y$

]
Les valeurs propres de $S z$ sont
$m_s eq s comma s minus 1 comma dots.h comma minus s$, ce qui signifie
que la projection du spin est quantifiée le long de l’axe z. Cette
quantification a des implications pour le comportement des particules
dans les champs magnétiques, ainsi que pour la distribution des
particules dans les systèmes. Cette quantification a des implications
sur le comportement des particules dans les champs magnétiques, ainsi
que sur la distribution des particules dans les systèmes.

La force du couplage spin-orbite est proportionnelle au numéro atomique
du noyau et au spin électronique, et joue un rôle important dans des
phénomènes tels que la division de la structure fine dans les spectres
atomiques et l’effet Hall de spin dans les systèmes à l’état solide.

La direction du moment angulaire du spin est déterminée par la direction
du moment magnétique. Le moment magnétique d’une particule est une
quantité vectorielle qui pointe dans la direction du moment angulaire de
spin. L’orientation du moment magnétique est affectée par les champs
magnétiques externes et peut entraîner la précession du moment angulaire
du spin autour de la direction du champ magnétique, un phénomène connu
sous le nom de précession de Larmor.

Le comportement du spin sous l’effet des rotations est régi par les
transformations de Lorentz, qui relient les coordonnées d’un événement
mesurées par des observateurs situés dans des cadres de référence
inertiels différents. Sous l’effet d’une transformation de Lorentz, les
composantes du spin le long de différentes directions se mélangent, ce
qui conduit au phénomène de couplage spin-orbite.

Le principe d’exclusion de Pauli stipule que deux fermions ne peuvent
pas occuper simultanément le même état quantique, ce qui inclut l’état
de spin.
