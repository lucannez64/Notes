#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Mécanique Quantique",
  authors: (
    "Lucas",
  ),
  date: "26 Mars, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

#set heading(numbering: "1.1.")

= Introduction<Introduction> 

La mécanique quantique est une théorie fondamentale de la physique qui décrit les propriétés physiques de la nature à l'échelle des atomes et des particules subatomiques. Elle est le fondement de toute la physique quantique, y compris la chimie quantique, la théorie quantique des champs, la technologie quantique et la science de l'information quantique.

La mécanique quantique diffère de la physique classique à bien des égards, notamment :

- La quantification : en mécanique quantique, l'énergie, la quantité de mouvement, le moment angulaire et d'autres quantités sont souvent limités à des valeurs discrètes.
- La dualité onde-particule : les objets ont des caractéristiques à la fois de particules et d'ondes.
- Le principe d'incertitude : étant donné un ensemble complet de conditions initiales, il existe des limites à la précision avec laquelle la valeur d'une quantité physique peut être prédite avant sa mesure.
- L'intrication quantique : des objets peuvent être liés entre eux de telle sorte qu'ils partagent le même destin, même s'ils sont séparés par une grande distance.

La mécanique quantique a joué un rôle important dans le développement de nombreuses technologies modernes, notamment les lasers, les transistors et les armes nucléaires. Elle est également essentielle pour comprendre de nombreux processus fondamentaux dans la nature, tels que le comportement des atomes et des molécules, la structure des matériaux et la nature de la lumière.
Ce cours propose une introduction aux concepts de base de la mécanique quantique. Nous discuterons de la fonction d'onde, de l'équation de Schrödinger et du principe d'incertitude. Nous aborderons aussi certaines applications de la mécanique quantique, telles que les lasers et les transistors.


= Cours associés <A>
- #link("lagrange.pdf", "Mécanique de Lagrange")
- #link("champs_quantiques.pdf", "La théorie des champs quantiques")

= Histoire

== Dualité onde-corpuscule
La dualité onde-particule est le concept de la mécanique quantique selon lequel toute particule ou entité quantique peut être décrite soit comme une onde, soit comme une particule. Elle exprime l'incapacité des concepts classiques de "particule" ou d'"onde" à décrire pleinement le comportement des objets à l'échelle quantique. Comme l'a écrit Albert Einstein : "Il semble que nous devions utiliser tantôt l'une, tantôt l'autre théorie, et tantôt l'une ou l'autre. Nous sommes confrontés à un nouveau type de difficulté. Nous avons deux images contradictoires de la réalité ; séparément, aucune d'entre elles n'explique totalement les phénomènes lumineux, mais ensemble, elles le font.

La dualité onde-particule a été découverte pour la première fois par le physicien français Louis de Broglie en 1924. De Broglie a proposé que toutes les particules aient une longueur d'onde, et que cette longueur d'onde soit inversement proportionnelle à l'élan de la particule. En d'autres termes, plus la longueur d'onde est courte, plus l'élan de la particule est important.

L'hypothèse de De Broglie a été confirmée par l'expérience de Davisson-Germer en 1927. Dans cette expérience, un faisceau d'électrons a été diffusé à partir d'un cristal. On a constaté que les électrons interféraient les uns avec les autres, comme le feraient des ondes. Cette expérience a confirmé que les électrons peuvent se comporter comme des ondes.

La dualité onde-particule est l'un des concepts les plus importants de la mécanique quantique. Elle est à la base de nombreux effets étranges observés dans le monde quantique, tels que l'effet tunnel quantique et l'intrication quantique.

#figure(
  image("twosource.gif", width: 80%),
  caption: [
    Image d'une onde dans l'expérience de la double fente
  ],
)
Cette image montre comment une onde peut interférer avec elle-même. Les ondes sont représentées par les lignes bleues. Les zones bleu clair représentent les zones où les ondes sont en phase, et les zones bleu foncé représentent les zones dans lesquelles les ondes sont déphasées. Comme vous pouvez le voir, les ondes peuvent interférer les unes avec les autres pour créer des motifs clairs et sombres.

C'est un bon exemple de la façon dont les ondes peuvent se comporter comme des particules. Les ondes de cette image sont en fait des électrons qui interfèrent les uns avec les autres pour créer un motif. Ce n'est qu'un exemple de la manière dont la dualité onde-particule se manifeste dans le monde quantique.

== Le problème de la mesure

Le problème de la mesure est un problème fondamental de la mécanique quantique. Il s'agit de réconcilier la fonction d'onde d'un système quantique avec les résultats des mesures classiques. La fonction d'onde d'un système quantique est une fonction mathématique qui décrit l'état du système. Les résultats des mesures sont les valeurs que nous observons lorsque nous mesurons le système.

L'effondrement de la fonction d'onde est le processus par lequel la fonction d'onde d'un système quantique change lorsqu'elle est mesurée. La fonction d'onde s'effondre en un seul état, et on dit que le système est dans un état propre. L'état propre est l'état qui correspond au résultat de la mesure.

Le problème de la mesure a été proposé pour la première fois par Niels Bohr en 1928. Bohr a soutenu que l'effondrement de la fonction d'onde est une conséquence nécessaire de l'interaction du système quantique avec l'appareil de mesure. L'appareil de mesure est un système classique, et il ne peut pas interagir avec le système quantique sans le perturber.

Il existe de nombreuses interprétations différentes de la mécanique quantique et chaque interprétation a sa propre façon d'expliquer le problème de la mesure. L'interprétation la plus populaire de la mécanique quantique est l'interprétation de Copenhague. Selon cette interprétation, l'effondrement de la fonction d'onde est un événement réel, qui se produit lorsque le système quantique interagit avec l'appareil de mesure.


== Intrication quantique

L'intrication est un phénomène dans lequel deux ou plusieurs particules quantiques sont liées de telle sorte qu'elles partagent le même destin, même lorsqu'elles sont séparées par une grande distance. Par exemple, si deux électrons sont intriqués, ils auront toujours le même spin, même s'ils sont séparés par un continent.

L'intrication a été découverte pour la première fois par Albert Einstein, Boris Podolsky et Nathan Rosen en 1935. Ils ont proposé une expérience consistant à séparer une paire de particules intriquées et à mesurer leurs propriétés. Ils ont constaté que les propriétés des particules étaient toujours corrélées, même si elles étaient séparées par une grande distance. Cette expérience a montré que l'intrication est un phénomène réel, qui a depuis été confirmé par de nombreuses autres expériences.

Cependant, il est important de noter que l'intrication ne peut pas être utilisée pour communiquer des informations à une vitesse supérieure à celle de la lumière. En effet, l'information partagée entre les particules intriquées n'est pas réellement transmise entre elles. Au lieu de cela, les particules se trouvent simplement dans un état dans lequel elles partagent le même destin.

= Fondements mathématiques de la mécanique quantique <B>

== Fonction d'onde <BA>

La fonction d'onde est une fonction mathématique qui décrit l'état d'un système quantique. Il s'agit d'une fonction à valeurs complexes, dont le carré donne la probabilité de trouver la particule en un point particulier de l'espace. La fonction d'onde peut être utilisée pour calculer l'énergie de la particule, sa quantité de mouvement et d'autres propriétés.

Un exemple de fonction d'onde est la fonction d'onde d'une particule dans une boîte. Cette fonction d'onde est une onde sinusoïdale dont la longueur d'onde et l'amplitude varient en fonction de l'énergie de la particule. Le carré de la fonction d'onde d'une particule dans une boîte donne la probabilité de trouver la particule en un point particulier de la boîte.

Un autre exemple de fonction d'onde est la fonction d'onde d'un électron libre. Cette fonction d'onde est une onde sphérique dont la longueur d'onde et l'amplitude varient en fonction de l'énergie de l'électron. Le carré de la fonction d'onde d'un électron libre donne la probabilité de trouver l'électron en un point particulier de l'espace.

La fonction d'onde est un concept très important en mécanique quantique, et elle a de nombreuses applications dans la théorie des ondes et des particules. En comprenant la fonction d'onde, nous pouvons mieux comprendre le comportement des systèmes quantiques.

Voici un exemple de fonction d'onde pour une particule dans une boîte :

#align(center,$psi (x) = sqrt(frac(2,L)) sin (frac(pi n x,L))$)

où $n$ est un entier et $L$ la longueur de la boîte. La longueur d'onde de cette fonction d'onde est $lambda = 2L/n$, et l'amplitude est $A = sqrt(2/L)$. Le carré de cette fonction d'onde donne la probabilité de trouver la particule en un point particulier de la boîte.

#figure(
  image("280px-QuantumHarmonicOscillatorAnimation.gif", width: 60%),
  caption: [
    Representation de fonction d'onde
  ],
)

== Espaces de Hilbert et vecteurs d'état <BB>

La mécanique quantique est une théorie mathématique qui utilise des _espaces de Hilbert_ pour représenter les *états quantiques d'un système*. Un _espace de Hilbert_ est un *espace vectoriel complexe* avec une structure interne qui permet de définir une notion de distance et de convergence, nommé produit interne. Les _vecteurs d'état_ quantique sont des éléments de cet espace de Hilbert et représentent l'état quantique d'un système. Les vecteurs d'état sont généralement notés *|ψ⟩* et peuvent être exprimés comme une *combinaison linéaire de vecteurs de base appelés états propres*.

=== Produit Scalaire (Produit interne) <BBA>
Le produit scalaire correspond pour deux vecteurs de taille n $accent(u,arrow) vec(x_1,x_2,..,x_n) x_i in CC$ et $accent(v,arrow) vec(y_1, x_2, .., y_n) y_i in CC space space.thin$
à #align(center,$angle.l u bar.v v angle.r = sum_(i=1)^n x_i^* y_i in CC $) avec \* le conjugué

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

#align(center,$angle.l O angle.r = integral psi^* O psi d x$)

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

#align(center,$accent(V, hat) = -frac(planck.reduce^2,2 m) nabla^2$)

où $nabla^2$ est l'opérateur Laplacien.

L'opérateur d'énergie potentielle peut être utilisé pour trouver les valeurs propres et les états propres de l'atome d'hydrogène. Les valeurs propres de l'atome d'hydrogène sont données par

#align(center,$E_n = -frac(13.6 " eV",n^2)$)

où $n$ est un nombre entier. Les états propres de l'atome d'hydrogène sont donnés par les fonctions d'onde

#align(center,$psi_n(r, theta, phi) = frac(1,sqrt(4pi a_0^3)) ( frac(n^2,r) )^(3/2) e^(-n^2r/2a_0) e^(i m theta) e^(i n phi)$)

où $a_0$ est le rayon de Bohr.

Les états propres de l'atome d'hydrogène sont mutuellement orthogonaux et couvrent tout l'espace vectoriel.

== Le formalisme de Dirac <BD>
Le formalisme de Dirac est une notation mathématique pour la mécanique quantique qui utilise des notations spéciales pour les vecteurs d'état et les opérateurs. Dans cette notation, les vecteurs d'état sont représentés sous forme de ket *$bar.v psi angle.r$* et les vecteurs duale, qui sont les vecteurs adjoints, sont représentés sous forme de bra *$angle.l psi bar.v $*. Lorsque l'on prend le produit scalaire d'un ket avec un bra, on obtient une expression appelée le bra-ket, notée *$angle.l psi bar.v phi angle.r$*, qui représente la probabilité de transition entre les deux états quantiques. Le formalisme de Dirac permet également de représenter les opérateurs quantiques sous forme de notations spéciales, telles que l'opérateur identité, l'opérateur de projection et l'opérateur de translation. Cette notation simplifie considérablement les calculs en mécanique quantique et permet une compréhension plus intuitive de la théorie.

=== Bra-Ket notation <BDA>

La notation de Bra-ket est une notation pour l'algèbre linéaire et les opérateurs linéaires sur des espaces vectoriels complexes ainsi que leur espace dual, à la fois en dimension finie et en dimension infinie. Elle est spécifiquement conçue pour faciliter les types de calculs qui se présentent fréquemment en mécanique quantique. Son utilisation en mécanique quantique est très répandue. De nombreux phénomènes expliqués à l'aide de la mécanique quantique sont expliqués à l'aide de la notation bra-ket.

Dans la notation bra-ket, un bra est désigné par $angle.l psi bar.v$ et un ket est désigné par $bar.v phi angle.r$. Un bra est une fonction linéaire, ce qui signifie qu'il prend un vecteur en entrée et renvoie un nombre complexe. Un ket est un vecteur, ce qui signifie qu'il prend un nombre complexe en entrée et renvoie un vecteur.

La représentation matricielle d'un bra est un vecteur ligne et la représentation matricielle d'un ket est un vecteur colonne. Le produit intérieur d'un bra et d'un ket est un nombre complexe.

La notation bra-ket est liée au produit intérieur de la manière suivante :

#align(center,$angle.l psi bar.v phi angle.r = integral_(-infinity)^(infinity) psi^*(x) phi (x) d x$)

où $psi^*(x)$ est le conjugué complexe de $psi(x)$. Le produit intérieur est une mesure du chevauchement entre deux fonctions.

La notation bra-ket est un outil très utile en mécanique quantique, et elle a de nombreuses applications dans la théorie des ondes et des particules. En comprenant la notation bra-ket, nous pouvons mieux comprendre le comportement des systèmes quantiques.

== Distribution de Dirac <BE>

La fonction delta de Dirac est une fonction définie comme nulle partout sauf au point x=0, où elle est infinie. Elle est souvent désignée par la lettre grecque delta, $delta (x)$. La fonction delta de Dirac a de nombreuses applications en mécanique quantique, où elle est utilisée pour représenter des particules ponctuelles et d'autres objets ayant une très petite étendue spatiale.

Un exemple d'utilisation de la fonction delta de Dirac en mécanique quantique est l'intégrale de la fonction d'onde. L'intégrale de la fonction d'onde est un moyen de calculer la probabilité qu'une particule se trouve à un endroit donné. L'intégrale de la fonction d'onde est définie comme suit :

#align(center,$integral_(-infinity)^(infinity) psi (x) delta (x-x_0) d x$)

où $psi (x)$ est la fonction d'onde de la particule et $x_0$ est l'endroit où la particule est trouvée. La fonction delta de Dirac dans cette intégrale nous indique que nous sommes uniquement intéressés à trouver la particule à l'endroit $x_0$, et que la probabilité de trouver la particule n'importe où ailleurs est nulle.

La fonction delta de Dirac est également utilisée dans la définition de l'opérateur de quantité de mouvement. L'opérateur de quantité de mouvement est un opérateur mathématique qui représente la quantité de mouvement d'une particule. L'opérateur de quantité de mouvement est défini comme suit

#align(center,$accent(p, hat) = -i planck.reduce frac(d,d x)$)

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

#align(center,$P(E = E_i) = abs( angle.l E_i | psi angle.r )^2$)

où $|E_i angle.r$ est l'état propre de l'observable $E$ avec la valeur propre $E_i$ et $psi$ est la fonction d'onde du système.

La fonction d'onde $psi$ peut être écrite comme une somme des états propres de l'observable $E$, comme suit :

#align(center,$psi = sum_i c_i |E_i angle.r$)

où $c_i$ sont les coefficients des états propres.

En substituant ceci à la formule de la probabilité, nous obtenons :

#align(center,$P(E = E_i) =  abs(angle.l E_i | sum_i c_i |E_i angle.r )^2 = sum_i |c_i|^2$)

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

== Opérateur Unitaire <BH>


Un opérateur unitaire est un opérateur linéaire $U$ sur un espace de Hilbert $H$ qui satisfait les conditions suivantes :

1. $U$ est inversible.
2. $U^(-1) = U^dagger$, où $U^dagger$ est l'adjoint de $U$.
3. $U$ préserve le produit intérieur de $H$, c'est-à-dire que pour tous les vecteurs $x$ et $y$ dans $H$, on a $angle.l U x, U y angle.r = angle.l x comma y angle.r$.

Les opérateurs unitaires sont importants en mécanique quantique, car ils représentent des transformations physiques qui préservent le produit intérieur et la probabilité. Par exemple, l'opérateur d'évolution temporelle $U(t)$ pour un système quantique est unitaire et représente l'évolution du système dans le temps.

Les propriétés des opérateurs unitaires peuvent être déduites de leur définition. Par exemple, les valeurs propres d'un opérateur unitaire sont toujours des nombres complexes de module unitaire, et les vecteurs propres d'un opérateur unitaire forment une base orthonormée pour $H$.

Les opérateurs unitaires conservent les probabilités parce qu'ils préservent le produit intérieur. Le produit intérieur est une mesure du chevauchement entre deux vecteurs, et il est égal à la probabilité que deux vecteurs se retrouvent dans le même état après une mesure. Si un opérateur unitaire préserve le produit intérieur, il préserve également la probabilité.

Voici quelques exemples d'opérateurs unitaires :

- L'opérateur de rotation $R(theta)$, qui fait pivoter un vecteur d'un angle $theta$ autour de l'origine.
- L'opérateur de réflexion $S$, qui réfléchit un vecteur à travers l'origine.
- La transformée d'Hadamard $H$, qui transforme un vecteur en une superposition égale de tous les états de base possibles.
- Les matrices de Pauli $sigma_x$, $sigma_y$, et $sigma_z$, qui sont utilisées pour décrire le spin en mécanique quantique.

== Principe d'incertitude et Commutation <BI>

En mécanique quantique, le commutateur de deux opérateurs est une mesure de la manière dont les deux opérateurs peuvent être mesurés simultanément. Le commutateur de deux opérateurs est défini comme $bracket.l accent(A, hat) comma accent(B, hat) bracket.r = accent(A, hat) accent(B, hat) - accent(B, hat) accent(A, hat)$, où $accent(A, hat)$ et $accent(B, hat)$ sont les deux opérateurs. Si le commutateur de deux opérateurs est nul, on dit que les opérateurs sont commutatifs. Les opérateurs commutatifs peuvent être mesurés simultanément, ce qui signifie que les résultats de la mesure d'un opérateur n'affecteront pas les résultats de la mesure de l'autre opérateur.

Si deux observables commutent, ils ont alors une base propre simultanée. Une base propre est un ensemble de vecteurs qui sont des vecteurs propres d'un opérateur donné. Un vecteur propre est un vecteur qui, lorsqu'il est influencé par un opérateur, a une valeur fixe. La base propre simultanée de deux observables commutatives est un ensemble de vecteurs qui sont des vecteurs propres des deux observables.

Le principe d'incertitude stipule qu'il est impossible de connaître à la fois la position et la quantité de mouvement d'une particule avec une précision parfaite. Le principe d'incertitude peut être dérivé du commutateur des opérateurs de position et de quantité de mouvement. Le commutateur des opérateurs de position et de quantité de mouvement est $[x,p] = i planck.reduce$, où $planck.reduce$ est la constante de Planck réduite. Cela signifie qu'il est impossible de mesurer simultanément la position et la quantité de mouvement d'une particule avec une précision parfaite.

Le principe d'incertitude peut être exprimé mathématiquement comme suit pour la position et la quantité de mouvement:

#align(center,$sigma_x sigma_p gt.eq frac(planck.reduce,2)$)

où $sigma_x$ est l'incertitude sur la position et $sigma_p$ est l'incertitude sur la quantité de mouvement.

Il existe une forme généralisée du principe d'incertitude nommé relations d'incertitude Robertson-Schrödinger:

#align(center,$sigma_A sigma_B gt.eq abs(1/(2i) angle.l bracket.l accent(A, hat) comma accent(B, hat) bracket.r angle.r)$)

Le principe d'incertitude est un principe fondamental de la mécanique quantique. Il a des implications importantes pour l'interprétation de la mécanique quantique et pour la compréhension du monde physique.

= Postulats de la mécanique quantique <C>

1. L’état d’un système quantique est entièrement défini par un vecteur d’état dans un espace de Hilbert. Un vecteur d’état est généralement noté $bar.v psi angle.r$ et appartient à un espace de Hilbert H. Les états quantiques sont des vecteurs unitaires dans H, c’est-à-dire que $angle.l psi bar.v psi angle.r = 1$.

2. Les observables quantiques sont représentées par des opérateurs hermitiens. Un opérateur hermitien A est un opérateur qui est égal à sa propre adjointe $A^(dagger)$ (c’est-à-dire que $A = A^dagger "avec "dagger "le conjugué soit "star.op$). Les valeurs propres de l’opérateur hermitien A correspondent aux résultats possibles de la mesure de l’observable associée à A.

3. Les résultats de la mesure d’une observable quantique sont des valeurs propres de l’opérateur associé à cette observable. Si l’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $bar.v psi angle.r$, la probabilité d’obtenir une valeur propre a est donnée par la formule $P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2 " où "bar.v a angle.r$ est le vecteur propre correspondant à la valeur propre a.
 
4. La probabilité de mesurer une valeur propre donnée est donnée par le carré du module de l’amplitude de probabilité correspondante. L’amplitude de probabilité pour obtenir une valeur propre a lorsqu’on mesure une observable quantique représentée par l’opérateur hermitien A sur un état quantique $bar.v psi angle.r$ est donnée par $angle.l a bar.v psi angle.r$. La probabilité P(a) d’obtenir la valeur propre a est alors donnée par #align(center,$P(a) = bar.v angle.l a bar.v psi angle.r bar.v^2$).

5. L’évolution temporelle d’un système quantique est décrite par l’équation de Schrödinger. L’évolution temporelle d’un état quantique $bar.v psi(t) angle.r$ est décrite par l’équation de Schrödinger #align(center,$i planck.reduce frac(diff, diff t)bar.v psi(t) angle.r = accent(H,hat) bar.v psi(t) angle.r $)  où $accent(H,hat)$ est l’hamiltonien du système donc l'énergie totale du système et $planck.reduce " est " = frac(planck, 2pi) $.

6. Les états quantiques peuvent être intriqués, ce qui signifie que les propriétés de chaque particule ne peuvent pas être décrites indépendamment des autres particules avec lesquelles elle est intriquée. Par exemple, si deux particules sont intriquées, alors la mesure de l’une des particules affectera instantanément l’état de l’autre particule, peu importe la distance qui les sépare.

== Equation de Schrödinger

L'équation de Schrödinger dépendante du temps peut être obtenue à partir de l'équation de Schrödinger indépendante en suivant les étapes suivantes :

1. Supposons que la fonction d'onde $Psi (t comma r)$ puisse être écrite comme un produit d'un facteur dépendant du temps et d'un facteur dépendant de l'espace :

#align(center,$Psi (t comma r) = psi (t) phi (r)$)

2. Substituer ceci dans l'équation de Schrödinger indépendante et multiplier les deux côtés par $psi (t)^*$ :

#align(center,$-frac(i planck.reduce,2m) psi'(t) = ( -frac(planck.reduce^2,2m)) Delta phi (r) + V(r) phi (r)) psi (t)^*$)

3. Simplifier le côté gauche en combinant les termes :

#align(center,$-frac(i planck.reduce,2m) psi'(t) = -frac(planck.reduce^2,2m) Delta psi (t) + V(r) psi (t)^*$)

4. Intégrer les deux côtés par rapport au temps :

#align(center,$psi (t) = psi (0) + frac(i planck.reduce,2m) integral_0^t Delta psi (s) d s - frac(i planck.reduce,2m) integral_0^t V(r) psi (s)^* d s$)

5. Le premier terme du côté droit est la fonction d'onde initiale, que l'on suppose connue. Le second terme du côté droit est une fonction de l'espace et du temps, et il peut être trouvé en résolvant l'équation de Schrödinger indépendante du temps :

#align(center,$Delta psi (s) + V(r) psi (s) = 0$)

L'équation de Schrödinger dépendante du temps peut alors être écrite comme suit :

#align(center,$i planck.reduce frac(diff psi (t),diff t) = H psi (t)$)

où $H$ est l'opérateur hamiltonien.

L'équation de Schrödinger dépendante du temps est une équation linéaire qui peut être résolue en utilisant le principe de superposition. Le principe de superposition stipule que toute solution à l'équation de Schrödinger indépendante du temps peut être additionnée pour former une autre solution à l'équation de Schrödinger dépendante du temps.

La densité de probabilité est définie comme $|psi|^2$, et c'est une mesure de la probabilité de trouver la particule en un point donné de l'espace. La probabilité totale doit toujours être égale à 1, ce qui signifie que la fonction d'onde doit être normalisée.

La constante de Planck donne les unités de l'opérateur hamiltonien. L'opérateur hamiltonien est le générateur de translations temporelles, et l'énergie est la quantité conservée sous l'effet des translations temporelles.


=== Exemple d'un puits de potentiel fini 

L'équation de Schrödinger pour une particule dans un puits de potentiel fini est la suivante :
#align(center, $-frac(planck.reduce^2,2m)nabla^2 psi (x) + V(x)psi (x) = E psi (x)$)


où $V(x)$ est l'énergie potentielle de la particule, $E$ est l'énergie de la particule, $psi (x)$ est la fonction d'onde de la particule, et $planck.reduce$ est la constante de Planck réduite.

Pour résoudre l'équation de Schrödinger, on peut utiliser la méthode de séparation des variables. Cette méthode consiste à supposer que la fonction d'onde peut être séparée en deux parties :

#align(center,$psi (x) = X(x)Y(y)Z(z)$)

où $X(x)$ est une fonction de $x$, $Y(y)$ est une fonction de $y$, et $Z(z)$ est une fonction de $z$. En substituant ceci à l'équation de Schrödinger, nous obtenons :

#align(center,$-frac(planck.reduce^2,2m)nabla^2X(x) + V(x)X(x) = E X(x)$)

#align(center,$-frac(planck.reduce^2,2m)nabla^2Y(y) + E Y(y)$)

#align(center,$-frac(planck.reduce^2,2m)nabla^2Z(z) + E Z(z)$)

La première équation peut être résolue pour $X(x)$, la deuxième pour $Y(y)$ et la troisième pour $Z(z)$. Les solutions de ces équations sont appelées fonctions propres, et les valeurs propres correspondantes sont les niveaux d'énergie de la particule.

Dans le cas d'une particule dans un puits de potentiel fini, l'énergie potentielle est nulle à l'intérieur du puits et infinie à l'extérieur. Cela signifie que les fonctions propres doivent être nulles à l'extérieur du puits. Les solutions de l'équation de Schrödinger dans ce cas sont appelées ondes stationnaires et sont données par :

#align(center,$psi_n(x) = sqrt(frac(2,a) sin ( frac(n pi x,a)))$)

où $a$ est la largeur du puits et $n$ est un entier. Les niveaux d'énergie de la particule sont donnés par :

#align(center,$E_n = frac(n^2pi^2planck.reduce^2,2m a^2)$)

Les ondes stationnaires représentent les états possibles de la particule dans le puits. La particule ne peut exister que dans ces états, et elle ne peut avoir d'autre énergie que les niveaux d'énergie donnés par l'équation de Schrödinger.

=== Exemple sur un oscillateur harmonique

L'équation de Schrödinger pour l'oscillateur harmonique est la suivante :

#align(center,$-frac(planck.reduce^2,2m)nabla^2 psi (x) + frac(1,2)m omega^2x^2psi (x) = E psi (x)$)

où $m$ est la masse de l'oscillateur, $omega$ est la fréquence angulaire, et $E$ est l'énergie de l'oscillateur.

Pour résoudre cette équation, on peut utiliser la méthode de séparation des variables. Cette méthode consiste à supposer que la fonction d'onde peut être séparée en deux parties :

#align(center,$psi (x) = X(x)Y(y)Z(z)$)

où $X(x)$ est une fonction de $x$, $Y(y)$ est une fonction de $y$, et $Z(z)$ est une fonction de $z$. En substituant ceci à l'équation de Schrödinger, nous obtenons :

#align(center,$-frac(planck.reduce^2,2m)frac(d^2X(x),d x^2) + frac(1,2)m omega^2x^2X(x) = E X(x)$)

#align(center,$-frac(planck.reduce^2,2m)frac(d^2Y(y),d y^2)$)

#align(center,$-frac(planck.reduce^2,2m)frac(d^2Z(z),d z^2) + 0 = E Z(z)$)

La première équation peut être résolue pour $X(x)$, la deuxième pour $Y(y)$ et la troisième pour $Z(z)$. Les solutions de ces équations sont appelées fonctions propres, et les valeurs propres correspondantes sont les niveaux d'énergie de l'oscillateur.

Les fonctions propres de l'oscillateur harmonique sont appelées polynômes d'Hermite et sont données par :

#align(center,$psi_n(x) = frac(1,sqrt(n!)) sqrt(frac(2omega,\pi)) H_n ( sqrt(frac(omega,2)) x)$)

où $H_n$ est le $n$ème polynôme d'Hermite. Les niveaux d'énergie de l'oscillateur sont donnés par :

#align(center,$E_n = planck.reduce omega (n + frac(1,2))$)

Les polynômes d'Hermite représentent les états possibles de l'oscillateur. L'oscillateur ne peut exister que dans ces états, et il ne peut avoir d'autre énergie que les niveaux d'énergie donnés par l'équation de Schrödinger.