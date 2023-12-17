### Exercice 37p150
1.
    a.  $16\times(-17)+21\times 13=1$
        Donc le couple $(-17 ; 13)$ est solution de $16x+21y=1$
    b. On peut écrire $(E)$ comme $797(16x+21y)=1(797)$ Donc en multipliant le couple solution de la première équation on obtient une solution particulière de $(E)$
    soit le couple $(-13549;10361)$ est solution de $(E)$

    a.  $16\times 4+21\times (-3)=1$
        Donc le couple $(4; -3)$ est solution de $16x+21y=1$
    b. On peut écrire $(E)$ comme $797(16x+21y)=1(797)$ Donc en multipliant le couple solution de la première équation on obtient une solution particulière de $(E)$
    soit le couple $(3188;-2391)$ est solution de $(E)$


2. Soit $(x;y)$ solution. Alors $16(x-3188)+21(y+2391)=0$ donc $16(3188-x)=21(y+2391)$, or en utilisant l'algorithme d'Euclide $PGCD(16;21)=1$ car $21=16\times 1 + 5$ , $16 = 5\times 3 +1$ , $5= 5\times 1 + 0$ donc $16$ et $21$ sont premiers entre eux, selon le théorème de Gauss, $21|3188-x$ donc il existe un entier relatif $k$ tel que $3188-x= 21k$ $x=3188-21k$. On a donc $16(3188-3188+21k)=21(y+2391)$ $16k=y+2391$ $y=16k-2391$ 
Donc le couple $(3188-21k;16k-2391)$ est solution avec $k\in mathbb{Z}$

$S=\{(3188-21k;16k-2391), k\in mathbb{Z}\}$

2. Tant que $3188-21k>0$ et $16k-2391>0$ car il ne peut pas perdre de l'argent sur un plat il existe un couple solution.
Or quand $k=150$, $(38;9)$ est un couple solution et en prenant $k=151$, $(17;25)$ Donc pour tout $k>149$ il existe un couple solution dans $\mathbb{N}^2$, on ne peut donc pas déterminer le nombre de repas de chaque sorte que le restaurateur a servi.

### Exercice 39p150

1. Vrai le couple $(-1;1)$ est solution
2. Faux. En divisant par 3 on obtient $10x-4y=1$ soit selon le théoème de Bézout $4$ et $10$ premiers entre eux or $4$ et $10$ ont $2$ comme diviseur commun donc $PGCD\neq 1$
3. Faux. $(1;1)$ sont solution et $(4;-1)$ donc il existe au moins deux solution à cette équation
4. Vrai. Cette équation a des équations si et seulement si $5$ et $12$ sont premiers entre eux d'après le théorème de Bézout. En utilisant l'algorithme d'Euclide on obtient $12=2\times 5 +2$ $5=2\times 2 +1$ $2=1\times 2 +0$ soit $PGCD(12;5)=1$ donc $5$ et $12$ sont bien premiers entre eux.

