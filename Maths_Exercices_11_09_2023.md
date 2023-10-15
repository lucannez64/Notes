## Exercice 1

Soit à démontrer:
\
$\left( P_{n}\right) :\sum ^{n}_{k=1}\left( k\right) =\dfrac{n\left( n+1\right) }{2}$
\
\
Initialisation: 
\
pour n=1 $\sum ^{1}_{k=1}\left( k\right) =1$ et $\dfrac{n\left( n+1\right) }{2}=\dfrac{1\left( 1+1\right) }{2} =\dfrac{2}{2}=1$
donc $\left( P_{n}\right)$ est vraie pour n = 1.
\
\
Hérédité: 
\
On suppose que la propriété est vraie au rang $n=p$  \
$\sum ^{p}_{k=1}\left( k\right) =1+2+3+\ldots +p=\dfrac{p\left( p+1\right) }{2}$
\
On va montrer que: 
\
$\sum ^{p+1}_{k=1}\left( k\right) =1+2+3+\ldots +p+\left( p+1\right) =\dfrac{\left( p+1\right) \left( p+1+1\right) }{2}$

$\begin{aligned}\dfrac{\left( p+1\right) \left( p+2\right) }{2}=\dfrac{p^{2}+2p+p+2}{2}\\
=\dfrac{p^{2}+3p+2}{2}\end{aligned}$
\
ou
\
\
$\begin{aligned}\sum ^{\cdot p+1}_{k=1}\left( k\right) =\sum ^{p}_{k=1}\left( k\right) +p+1\\
=\dfrac{p\left( p+1\right) }{2}+p+1\\
=\dfrac{p^{2}+3p+2}{2}\end{aligned}$

donc $(P_n)$ est vraie au rang $p+1$
\
=> $(P_n)$ est héréditaire
\
\
Conclusion: 
\
D'après le principe de récurrence pour tout entier naturel $n\geq 1$ , $\sum ^{n}_{k=1}\left( k\right) =\dfrac{n\left( n+1\right) }{2}$

## Exercice 19 p 27

Soit à démontrer:
\
$\left( P_{n}\right) :u_{n}=\dfrac{n}{n+1}$
\
\
Initialisation: 
\
pour $n=0$, $u_{0}=0$ et $\dfrac{0}{0+1}=0$ donc la propriété $\left( P_{n}\right)$ est vraie.
\
\
Hérédité:
\
On suppose que la propriété est vraie au rang $n=k$
\
$u_{k}=\dfrac{k}{k+1}$
\
On va montrer que la propriété est vraie au rang $k+1$ :
\
$\left( P_{k+1}\right) :u_{k+1}=\dfrac{k+1}{k+2}$
\
$$
\begin{align}
u_{k+1}&=\dfrac{1}{2-u_k} \\
&=\dfrac{1}{2-\dfrac{k}{k+1}} \\
&=(\dfrac{2k+2-k}{k+1})^{-1} \\
&=(\dfrac{k+2}{k+1})^{-1} \\
&=\dfrac{k+1}{k+2} 
\end{align}
$$
\
donc $\left( P_n\right)$ est héréditaire
\
\
Conclusion:
\
D'après le principe de récurrence pour tout entier naturel $n$, $u_n=\dfrac{n}{n+1}$

[Maths Exercices](Maths_Exercices.md)
