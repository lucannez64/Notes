## Exercice 1:

### 1.

$f_1\prime(x)=2x^2+x-6$
\
$f_{1}:\mathbb{R} \rightarrow \mathbb{R}$
\
$f_1\prime(x)=0$
\
$2x^2+x-6=0$
\
$\Delta = b^2-4ac$
\
$\Delta = 1-4*2*(-6)$
\
$\Delta = 49$
\
$x_1 = \dfrac{6}{4} = \dfrac{3}{2}$
\
\
$x_2 = \dfrac{-8}{4} = -2$

| Variation/Signe   | Intervalle    |
|--------------- | --------------- |
|positif | pour x < -2|
|zéro | à x = -2|
|négatif | pour -2<x<3/2|
|zéro | à x = 3/2|
|positif | pour x>3/2|
|croissante | de -inf à -2|
|décroissante | de -2 à 3/2|
|croissante | de 3/2 à +inf|

### 2.

$f_2\prime(x)=\dfrac{-11}{(4x-3)^2}$

Valeurs interdites : \
$4p-3 = 0$ \
$4p = 3$ \
$p = \dfrac{4}{3}$ \
\
$x \neq \dfrac{4}{3}$ \

Ensemble de définition:
\
$f_{2}:\mathbb{R} \backslash \left\{ \dfrac{4}{3}\right\} \rightarrow \mathbb{R}$

\

| Variation/Signe   | Intervalle    |
|--------------- | --------------- |
| négatif | de -inf à 3/4 |
| indéfini | à 3/4 |
| négatif | de 3/4 à +inf |
| décroissante | de -inf à 3/4 |
| indéfini | à 3/4 |
| décroissante | de 3/4 à +inf |


### 3. 

$f_3\prime(x)=e^{x}\sqrt{x}+\dfrac{e^x}{2\sqrt{x}} = \dfrac{e^x(2x+1)}{2\sqrt{x}}$
\
Ensemble de définition :\
$f_3:\mathbb{R}^{+} \rightarrow \mathbb{R}^{+}$

| Variation/Signe   | Intervalle    |
|--------------- | --------------- |
| positif | de 0<x à +inf|
| croissante | de 0<x à +inf|

## Exercice 2 

1. elle prend deux arguments f et x soit une fonction et un nombre

2.  Le résultat est 'positif'

3. elle donne le signe d'un nombre après avoir appliqué une fonction f

4.
a. L'instruction lambda sert à définir une fonction anonyme (sans nom)
b. 'positif'

5. 

```python
from math import * 
def racine(f, x):
  if (2*f(x)-1)>=0:
    return sqrt(2*f(x)-1)
  else:
    return 'non défini'

def f(x):
  return 5-2*x

print(racine(f, -5))
print(racine(f, 10))
```

6. $x = -5 \rightarrow y=5.385164807134504$  \
$x = 10 \rightarrow 'non \ défini'$

## Exercice 3 

Soit à démontrer:
\
$\left( P_{n}\right) :\sum ^{n}_{k=1}k^{2}=\dfrac{n\left( n+1\right) \left( 2n+1\right) }{6}$
\
\
Initialisation:
\
pour $n=1$ $$\begin{aligned}\sum ^{x}_{k=1}k^{2}=1 \\
\dfrac{n\left( n+1\right) \left( 2n+1\right) }{6}\\
=\dfrac{6}{6}=1\end{aligned}$$
donc la propriété $\left( P_n \right)$ est vraie au rang $n=1$ 
\
\
Hérédité:
\
On suppose que la propriété est vraie au rang $n=p$ 
\
On va montrer que :
\
$\sum ^{p+1}_{k=1}k^{2}=\dfrac{\left( p+1\right) \left( p+2\right) \left( 2\left( p+1\right) +1\right) }{6}$
$$\begin{aligned}\sum ^{p+1}_{k=1}k^{2}=\dfrac{p\left( p+1\right) \left( 2p+1\right) }{6}+p^{2}+2p+1\\
=\dfrac{2p^{3}+3p^{2}+p+6p^{2}+12p+6}{6}\\
=\dfrac{2p^{3}+9p^{2}+13p+6}{6}\end{aligned}$$

$$\begin{aligned}\dfrac{\left( p+1\right) \left( p+2\right) \left( 2p+3\right) }{6}\\
=\dfrac{\left( p^{2}+3p+2\right) \left( 2p+3\right) }{6}\\
=\dfrac{2^{3}+9p^{2}+13p+6}{6}\end{aligned}$$
\
donc la propriété $\left( P_n \right)$ est vraie au rang p+1 
\
\
Conclusion:
\
D'après le principe de récurrence pour àut entier naturel $n\geq 1$, $\sum ^{n}_{k=1}k^{2}=\dfrac{n\left( n+1\right) \left( 2n+1\right) }{6}$


## Exercice 4
\
On commence par calculer l'aire d'un cercle en posant $x$ comme le périmètre du cercle:
\
\
$A=\pi r^2$ et $P = 2\pi r$ \
soit $r = \dfrac{P}{2\pi}$ \
donc $A_c(x) = \dfrac{\pi x^2}{4\pi^2}$
\
On calcule l'aire du triangle équilatéral avec $(1-x)$ comme le périmètre du triangle \
\
$A_te=\dfrac{\sqrt{3}}{2}a^2$ 
avec $a=\dfrac{(1-x)}{3}$ donc comme un côté du triangle \
\
$\Rightarrow A_te(x)=\dfrac{\sqrt{3}}{2}(\frac{1-x}{3})^2$
\
\
On obtient l'aire totale
\
\
$A_t(x)=\dfrac{\pi x^2}{4\pi^2}+\dfrac{\sqrt{3}}{2}(\frac{1-x}{3})^2$\
\
$A_t(x)=\dfrac{x^2}{4\pi}+\dfrac{1}{18}\sqrt{3}(1-2x+x^2)$
\
\
Pour miniser $A_t$ on calcule sa dérivée \
\
$A_t\prime(x)=\dfrac{8x\pi}{(4\pi)^2}+\dfrac{1}{18}\sqrt{3}(2x-2)$ \
\
$A_t\prime(x)=\dfrac{8\pi}{(4\pi)^2}x+\dfrac{\sqrt{3}}{9}x-\dfrac{\sqrt{3}}{9}$
\
\
On calcule maitenant la racine de $A_t\prime$ 
\
\
$A_t\prime(x)=0$\
\
$\dfrac{8\pi}{(4\pi)^2}x+\dfrac{\sqrt{3}}{9}x-\dfrac{\sqrt{3}}{9}=0$\
\
$x(\dfrac{8\pi}{(4\pi)^2}+\dfrac{\sqrt{3}}{9})-\dfrac{\sqrt{3}}{9}=0$\
\
$x(\dfrac{1}{2\pi}+\dfrac{\sqrt{3}}{9}=\dfrac{\sqrt{3}}{9}$\
\
$x(\dfrac{2\sqrt{3}\pi+9}{18\pi})=\dfrac{\sqrt{3}}{9}$\
\
$x=\dfrac{\sqrt{3}}{9}*\dfrac{18\pi}{2\sqrt{3}\pi+9}$\
\
$x=\dfrac{18\sqrt{3}\pi}{18\sqrt{3}\pi+81}$\
\
$x=\dfrac{2\sqrt{3}\pi}{2\sqrt{3}\pi+9}$\
\
$x\approx 0.55m$\
Donc la longeur du morceaux formant le cercle est d'environ 0.55m \
et celle formant le triangle équilatéral : 
\ 
\
\
$(1-x)=\dfrac{2\sqrt{3}\pi+9-2\sqrt{3}\pi}{2\sqrt{3}\pi+9}$\
\
$(1-x)=\dfrac{9}{2\sqrt{3}\pi+9}$\
\
$(1-x)\approx 0.45$\

La longeur du deuxième morceaux est d'environ 0.45m


[Maths DM](Maths_DM.md)
