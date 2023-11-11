## Exercice 1
1. L'équation az+b=0 à une seule solution $-\dfrac{b}{a}$ avec $a \neq 0$ ou aucune solution si $a=0$ donc L'équation a bien au plus une solution. Or l'équation est de degré 1 donc l'équation a au plus n solutions.
2. Si $P$ n'a pas de solution l'équatio $P(z)=0$ n'a pas de solution donc elle a bien moins de $(n+1)$ solutions.
3. On sait que $P(z)$ est un polynôme de degré $n+1$ et peut être écris sous la forme $(z-a)Q(z)$, le polynôme $(z-a)$ est de degré 1 car z est à la première puissance Or deux polynôme multiplié on pour degré leur puissance respective additionnée soit pour trouver $P(z)$ avec un degré $n+1$ le polynôme $Q(z)$ a un degré $n$.
4. $P(z)=0 \rightarrow (z-a)Q(z)=0$ donc $z=a$ ou $Q(z)=0$ or d'après l'hypothèse de récurrence un polynôme de degré n a au plus n solutions donc $P(z)=0$ a au plus $(n+1)$ solutions
5. Car les racines d'un polynôme $P$ sont les solutions de $P(z)=0$

## Exercice 2
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
