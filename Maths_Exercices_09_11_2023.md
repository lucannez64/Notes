## Exercice 48

1. Soit $u_n = 5n^2 - 2(-1)^n$. On sait que $-1 \leq (-1)^n \leq 1$ pour tout $n$. Cela signifie que $-2(-1)^n \geq -2$ pour tout $n$.
Par conséquent, $5n^2 - 2(-1)^n \geq 5n^2 - 2$ pour tout $n$.
On sait également que $\lim_{n\to +\infty} (5n^2 - 2) = +\infty$. En appliquant le théorème de comparaison, on obtient que $\lim_{n\to +\infty} (5n^2 - 2(-1)^n) = +\infty$.

2. Soit $u_n=n^2-2n+(-1)^{n+1}$. On sait que $-1 \leq (-1)^{n} \leq 1$ pour tout $n$. Cela signifie que pour n=n+1$-1 \leq (-1)^{n+1} \leq 1$ par conséquent $n^2-2n-1 \leq (-1)^{n+1}\leq n^2-2n+1$ pour tout $n$
On sait que $\lim_{n\to +\infty} (n^2-2n-1)=\lim_{n\to +\infty} (n^2(1-\dfrac{2}{n}-\dfrac{1}{n^2}))= +\infty$ car $\lim_{n\to +\infty} \dfrac{1}{n^k} = 0$ pour $k \in \mathbb{N}^*$.
En appliquant le théorème de comparaison, on obtient que $\lim_{n\to +\infty} (n^2-2n+(-1)^{n+1})=+\infty$

3. Soit $(-1)^n\times \dfrac{\sqrt{n}}{n}$. On sait que $-1 \leq (-1)^n \leq 1$ pour tout $n\in \mathbb{N}$. Donc $-\dfrac{\sqrt{n}}{n}\leq (-1)^n\times \dfrac{\sqrt{n}}{n} \leq \dfrac{\sqrt{n}}{n}$.
On sait également que $\lim_{n\to +\infty} -\dfrac{\sqrt{n}}{n}=-\dfrac{n^{1/2}}{n}=-\dfrac{1}{\sqrt{n}}=0$
et de manière analogue $\lim_{n\to +\infty} \dfrac{\sqrt{n}}{n}=0$
En appliquant le théorème dit des gendarmes, on obtient que $\lim_{n\to +\infty} (-1)^n\times \dfrac{\sqrt{n}}{n}=0$
