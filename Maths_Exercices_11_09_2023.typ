#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Exercices 11 09 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "24 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 1
<exercice-1>
Soit à démontrer: \
$lr((P_n)) colon sum_(k eq 1)^n lr((k)) eq frac(n lr((n plus 1)), 2)$ \
\
Initialisation: \
pour n\=1 $sum_(k eq 1)^1 lr((k)) eq 1$ et
$frac(n lr((n plus 1)), 2) eq frac(1 lr((1 plus 1)), 2) eq 2 / 2 eq 1$
donc $lr((P_n))$ est vraie pour n \= 1. \
\
Hérédité: \
On suppose que la propriété est vraie au rang $n eq p$ \
$sum_(k eq 1)^p lr((k)) eq 1 plus 2 plus 3 plus dots.h plus p eq frac(p lr((p plus 1)), 2)$
\
On va montrer que: \
$sum_(k eq 1)^(p plus 1) lr((k)) eq 1 plus 2 plus 3 plus dots.h plus p plus lr((p plus 1)) eq frac(lr((p plus 1)) lr((p plus 1 plus 1)), 2)$

$frac(lr((p plus 1)) lr((p plus 2)), 2) eq frac(p^2 plus 2 p plus p plus 2, 2)\
eq frac(p^2 plus 3 p plus 2, 2)$ \
ou \
\
$sum_(k eq 1)^(dot.op p plus 1) lr((k)) eq sum_(k eq 1)^p lr((k)) plus p plus 1\
eq frac(p lr((p plus 1)), 2) plus p plus 1\
eq frac(p^2 plus 3 p plus 2, 2)$

donc $lr((P_n))$ est vraie au rang $p plus 1$ \
\=\> $lr((P_n))$ est héréditaire \
\
Conclusion: \
D’après le principe de récurrence pour tout entier naturel $n gt.eq 1$ ,
$sum_(k eq 1)^n lr((k)) eq frac(n lr((n plus 1)), 2)$

== Exercice 19 p 27
<exercice-19-p-27>
Soit à démontrer: \
$lr((P_n)) colon u_n eq frac(n, n plus 1)$ \
\
Initialisation: \
pour $n eq 0$, $u_0 eq 0$ et $frac(0, 0 plus 1) eq 0$ donc la propriété
$lr((P_n))$ est vraie. \
\
Hérédité: \
On suppose que la propriété est vraie au rang $n eq k$ \
$u_k eq frac(k, k plus 1)$ \
On va montrer que la propriété est vraie au rang $k plus 1$ : \
$lr((P_(k plus 1))) colon u_(k plus 1) eq frac(k plus 1, k plus 2)$ \
$ u_(k plus 1) & eq frac(1, 2 minus u_k)\
 & eq frac(1, 2 minus frac(k, k plus 1))\
 & eq lr((frac(2 k plus 2 minus k, k plus 1)))^(minus 1)\
 & eq lr((frac(k plus 2, k plus 1)))^(minus 1)\
 & eq frac(k plus 1, k plus 2) $ \
donc $lr((P_n))$ est héréditaire \
\
Conclusion: \
D’après le principe de récurrence pour tout entier naturel $n$,
$u_n eq frac(n, n plus 1)$

#link("Maths_Exercices.pdf")[Maths Exercices]
