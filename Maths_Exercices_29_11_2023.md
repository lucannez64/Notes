### Exercice 18

1. $$ S(n) = a\dfrac{q^n-1}{q-1}=1\dfrac{5^n-1}{1-5} = \dfrac{5^n-1}{4}$$
2. D'après la question précédente $$5^n = 4S +1$$ donc $$5^n +15 = 4S +16 = 4(S+4) $$ Or $S+4 \in \mathbb{Z}$ donc $5^n+15$ est bien un multiple de 4

### Exercice 4

1. $PGCD(a,b)=PGCD(r, b)$
On sait que $1078 = 3\times 322 + 112$ et que $322 = 2\times 112+98$ et $112 = 98 + 14$ et $98 = 14\times 7 +0$ donc $PGCD(1078,322)=PGCD(14, 0)=14$

2. $PGCD(a,b) = PGCD(a-b, b)$
On sait que $544-268 = 276$, $276 - 268 = 8$ , $268 - 8 = 260$, $260-8 = 252$,$252 - 8 = 244$, $244-8=236$, $236-8=228$, ...\ 

| a | b | a-b |
|---|---|---|
| 544 | 268 | 276 |
| 276 | 268 | 8 |
| 268 | 8 | 260 |
| 260 | 8 | 252 |
| 252 | 8 | 244 |
| 244 | 8 | 236 |
| 236 | 8 | 228 |
| 228 | 8 | 220 |
| 220 | 8 | 212 |
| 212 | 8 | 204 |
| 204 | 8 | 196 |
| 196 | 8 | 188 |
| 188 | 8 | 180 |
| 180 | 8 | 172 |
| 172 | 8 | 164 |
| 164 | 8 | 156 |
| 156 | 8 | 148 |
| 148 | 8 | 140 |
| 140 | 8 | 132 |
| 132 | 8 | 124 |
| 124 | 8 | 116 |
| 116 | 8 | 108 |
| 108 | 8 | 100 |
| 100 | 8 | 92 |
| 92 | 8 | 84 |
| 84 | 8 | 76 |
| 76 | 8 | 68 |
| 68 | 8 | 60 |
| 60 | 8 | 52 |
| 52 | 8 | 44 |
| 44 | 8 | 36 |
| 36 | 8 | 28 |
| 28 | 8 | 20 |
| 20 | 8 | 12 |
| 12 | 8 | 4 |
| 8 | 4 | 4 |
3. On sait que 1024 peut s'écrire comme 
$1\times 1024$
$2\times 512$
$4\times 256$
$8\times 128$
$16\times 64$
$32\times 32$

et 652 peut s'écrire comme 
$1\times 652$
$2\times 326$
$4\times 163$

Donc le $PGCD(652,1024)=4$

4. $PGCD(a,b)=PGCD(r,b)$
$1248 = 1\times 640+608$
$640 = 1\times 608 + 32$
$608 = 32\times 19 +0$

Donc $PGCD(1248,640) = PGCD(32,0)= 32$

### Exercice 13

On note $s$ le nombre de sachets, $c$ dragées au chocolat, $a$ dragées aux amandes dans chaque sachet.
On a alors $760 = cs$ et $1045 = as$ soit $s$ un diviseur de 760 et 1045 car $c$ et $a$ sont des entiers.
On cherche le nombre maximal de sachets $s$ donc on cherche le $PGCD(760,1045)$ \
En utilisant l'algorithme d'Euclide on obtient :\
$1045 = 1\times 760 + 285$ \
$760 = 285\times 2 + 190$ \
$285 = 190\times 1 + 95$ \
$190 = 95\times 2 + 0$ \
$\Rightarrow PGCD(760,1045)=PGCD(95,0)=95$\
Parconséquent on peut faire au maximum 95 sachets dans lequel il y aura $\dfrac{1045}{95}=11$ dragées aux amandes par sachet et $\dfrac{760}{95}=8$ dragées au chocolat par sachet
