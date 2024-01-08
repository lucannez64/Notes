## Exercice 1

#### Question 1
b.

#### Question 2
a.

#### Question 3
c.

#### Question 4
b.

#### Question 5
b.

#### Question 6
b.

## Exercice 2

### Partie A

1. 
    a. $$ lim_{x \to -\infty} x = -\infty$$ 
    $$ lim_{x \to -\infty} 0.5x-2= -\infty$$
    $$ lim_{x \to -\infty} e^{0.5x-2}= lim_{X to -\infty} e^X = 0$$
    $$ lim_{x \to -\infty} 1+x-e^{0.5x-2}=-\infty$$
    b.  
    $$f(x)= 1+x+e^{0.5x-2}=1+0.5x(2-2e^{0.5x-2})=1+0.5x(2-\frac{e^{0.5x}}{0.5x}\times e^{-2})$$ 
    \
    \
    \
    \
    \
    \
    \
    \
    \
    \
2. a. 

$$f(x)=1+x-e^{X}$$
$$f'(x)=1-X'(x)e^{X}$$
$$X(x)=0.5x-2$$
$$X'(x)=0.5$$
$$f'(x)=1-0.5(e^{0.5x-2})$$
b.$$1-0.5(e^{0.5x-2})<0$$
$$-0.5(e^{0.5x-2})<-1$$
$$e^{0.5x-2}>2$$
$$0.5x-2>ln(2)$$
$$x>2(ln(2)+2)$$
$$x>4+2ln(2)$$

Donc $f'(x)<0$ quand $x\in ]4+2ln(2); +\infty[$

3.![Tableau de variation](DM5_1.png)

4.
On montre que la fonction $f(x)=1+x-e^{0.5x-2}$ est continue sur l'intervalle $[-1;0]$.

La fonction $x\mapsto 1+x$ est continue sur $\mathbb{R}$. La fonction $x\mapsto e^{0.5x-2}$ est continue sur $\mathbb{R}$ car c'est une fonction exponentielle. La somme, la composition et la multiplication de fonctions continues sont continues, donc $f(x)=1+x-e^{0.5x-2}$ est continue sur $\mathbb{R}$.

En particulier, $f(x)$ est continue sur $[-1;0]$.

D'après le tableau de variation $f(x)$ est croissante sur $[-1;0]$ car $0<4+2ln(2)\approx 5.4$
Finalement $f(0)=1-e^{-2}\approx 0.9$ et $f(1)=2-e^{-1.5}\approx -0.08$
Donc $0\in [1-e^{-2};2-e^{-1.5}]$

Selon le théorème des valeurs intermédiaires l'équation $f(x)=0$ a une unique solution sur l'intervalle $[-1;0]$

### Partie B

1. a. 

Soit à démontrer:
P(n): "$u_n\leq u_{n+1}\leq 4$"

Initialisation:
au rang $n=0$
$u_0=0$
$u_1=f(0)=1+0-e^{-2}=1-e^{-2}>0$

$4\geq1-e^{-2}\geq0$
Donc la propriété est initialisée.

Hérédité:
On suppose qu'il existe un entier k naturel tel que $u_k\leq u_{k+1}\leq 4$
On cherche à démontrer que la propriété est vraie au rang suivant.

On sait que sur $[0;4]$ f est croissante.
Donc $f(u_k)\leq f(u_{k+1})\leq f(4)$
$u_{k+1}\leq u_{k+2}\leq 1+4-e^{0.5\times 4 -2}=4$

Par conséquent la propriété est héréditaire.

Conclusion: 
La propriété est initialisée et héréditaire selon le principe de récurrence, $\forall n\in \mathbb{N}$, on a: $u_n\leq u_{n+1}\leq 4$

b. On sait que f est un fonction continue sur $[0; 4]$ et que pour tout entier appartenant à $[0;4]$
$(u_n)$ est une suite à valeurs dans $[0;4]$;
De plus $(u_n)$ est croissante et majorée par 4 donc elle converge vers un réel l appartenant à $[0;4]$
et l est l'une des solutions de l'équation $f(x)=x$

$1+x-e^{0.5x-2}=x$
$1+x-x=e^{0.5x-2}$
$ln(1)=0.5x-2$
$4+2ln(1)=x$
$4=x$
Donc $l=4$

2. On en déduit que pour que $u_n \geq 3.99$, $n\geq 12$ 

