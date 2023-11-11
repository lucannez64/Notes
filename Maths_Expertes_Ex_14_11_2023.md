## Démonstration 1
1. L'équation az+b=0 à une seule solution $-\dfrac{b}{a}$ avec $a \neq 0$ ou aucune solution si $a=0$ donc L'équation a bien au plus une solution. Or l'équation est de degré 1 donc l'équation a au plus n solutions.
2. Si $P$ n'a pas de solution l'équatio $P(z)=0$ n'a pas de solution donc elle a bien moins de $(n+1)$ solutions.
3. On sait que $P(z)$ est un polynôme de degré $n+1$ et peut être écris sous la forme $(z-a)Q(z)$, le polynôme $(z-a)$ est de degré 1 car z est à la première puissance Or deux polynôme multiplié on pour degré leur puissance respective additionnée soit pour trouver $P(z)$ avec un degré $n+1$ le polynôme $Q(z)$ a un degré $n$.
4. $P(z)=0 \Rightarrow (z-a)Q(z)=0$ donc $z=a$ ou $Q(z)=0$ or d'après l'hypothèse de récurrence un polynôme de degré n a au plus n solutions donc $P(z)=0$ a au plus $(n+1)$ solutions
5. Car les racines d'un polynôme $P$ sont les solutions de $P(z)=0$

## Démonstration 2
1. Lorsque $q \neq 1$ on a $1+q+...+q^{n-2}+q^{n-1}=\dfrac{q^n-1}{q-1}$ donc par produit en croix des fractions on obtient $q^n-1=(q-1)(1+q+...+q^{n-2}+q^{n-1})$ et pour $q=1$ on a $q^n-1=0$ et $q-1=0$.
Quand $a=0$ on a $z^n=z^{n-1}z$ donc la propriété est vraie.
Quand $a \neq 0$ $\frac{z^n}{a^n}-1=(\frac{z}{a}-1)(1+\frac{z}{a}+...+\frac{z^{n-2}}{a^{n-2}}+\frac{z^{n-1}}{a^{n-1}})$
$z^n-a^n=(z-a)(z^{n-1}+az^{n-2}+...+a^{n-2}z+a^{n-2})$
2. Soit $P$ un polynôme de degré n $$P(z)=a_nz^n+a_{n-1}z^{n-1}+...+a_1z+a_0$$
$$P(a)=a_na^n+a_{n-1}a^{n-1}+...+a_1a+a_0=0$$
$$P(z)-P(a)=a_n(z^n-a^n)+a_{n-1}(z^{n-1}-a^{n-1})+...+a_1(z-a)$$
$$P(z)-P(a)=a_n(z-a)(\sum_{k=0}^{n-1}z^{n-1-k}a^k)+a_{n-1}(z-a)(\sum_{k=0}^{n-2}z^{n-1-k}a^k)+...+a_1(z-a)$$
$$P(z)=P(z)-P(a)=(z-a)(a_n\sum_{k=0}^{n-1}z^{n-1-k}a^k+a_{n-1}\sum_{k=0}^{n-2}z^{n-1-k}a^k+...+a_1)$$
Donc il existe bien un polynôme $Q$ tel que $P(z)=(z-a)Q(z)$ avec $Q(z)=a_n\sum_{k=0}^{n-1}z^{n-1-k}a^k+a_{n-1}\sum_{k=0}^{n-2}z^{n-1-k}a^k+...+a_1$

## Exercice 38
$$R(z)=8z^3-1$$
$$R(z)=(\sqrt[3]{8}z)^3-1^3=(\sqrt[3]{8}z-1)((\sqrt[3]{8}z)^2+\sqrt[3]{8}z+1)$$
$$R(z)=(2z)^3-1^3=(2z-1)(4z^2+2z+1)$$
$R(z)=0 \Rightarrow$ systemequation $2z-1=0$ $4z^2+2z+1=0$ \
$\Rightarrow$ systemequation $z_0=\dfrac{1}{2}$ $\Delta=-12=(2\sqrt{3}i)^2<0\text{Donc il existe deux solutions complexes conjuguées} z_1=-\dfrac{1}{4}+\dfrac{\sqrt{3}}{4}i\quad z_2=\overline{z_1}=-\dfrac{1}{4}-\dfrac{\sqrt{3}}{4}i$ \
$S_{\mathbb{C}}=\{\dfrac{1}{2};-\dfrac{1}{4}+\dfrac{\sqrt{3}}{4}i;-\dfrac{1}{4}-\dfrac{\sqrt{3}}{4}\}i$

## Exercice 39
1. Il existe un racine réelle évidente de $R$ $R(1)=(1)^3-1=0$ donc 1 est racine de $R$
2. Donc $R(z)$ peut s'écrire sous la forme $R(z)=(z-1)(z^2+z+1)$ et les racines de $(z^2+z+1)$ sont $\Delta=-3=(\sqrt{3}i)^2<0$ donc il y a deux solutions complexes conjuguées $z_1=-\dfrac{1}{2}+\dfrac{\sqrt{3}}{2}i \quad z_2=-\dfrac{1}{2}-\dfrac{\sqrt{3}}{2}i$ donc $z^2+z+1$ peut s'écrire sous la forme $(z+\dfrac{1}{2}+\dfrac{\sqrt{3}}{2}i)(z+\dfrac{1}{2}-\dfrac{\sqrt{3}}{2}i)$ donc on $R(z)=(z-1)(z+\dfrac{1}{2}+\dfrac{\sqrt{3}}{2}i)(z+\dfrac{1}{2}-\dfrac{\sqrt{3}}{2}i)$

## Exercice 48
1. Il existe une racine entière évidente de $P$ $P(3)=3^3-9(3)^2+31(3)-39=27-81+93-39=0$
2. On peut donc écrire $P$ sous la forme $P(z)=(z-3)(az^2+bz+c)=az^3+(b-3a)z^2+(c-3b)z-3c$ avec $a=1,b=-6,c=13$
soit $P(z)=(z-3)(z^2-6z+13)$
Les racines de $z^2-6z+13$ peut s'obtenir en calculant le discriminant $\Delta=-16=(4i)^2<0$ donc il existe deux solutions complexes conjuguées $z_1=3+2i\quad z_2=3-2i$. On remarque que toutes les racines de $P(z)$ on $Re(a)=3$ donc les points correspondant aux affixes des racines sont alignés sur la droite vertical passant par le point d'affixe 3 sur le plan complexe et d'équation cartésienne $x=3$.
