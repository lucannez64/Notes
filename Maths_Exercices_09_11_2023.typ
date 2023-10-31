#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Exercices 09 11 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "31 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 48
<exercice-48>
+ Soit $u_n eq 5 n^2 minus 2 lr((minus 1))^n$. On sait que
  $minus 1 lt.eq lr((minus 1))^n lt.eq 1$ pour tout $n$. Cela signifie
  que $minus 2 lr((minus 1))^n gt.eq minus 2$ pour tout $n$. Par
  conséquent, $5 n^2 minus 2 lr((minus 1))^n gt.eq 5 n^2 minus 2$ pour
  tout $n$. On sait également que
  $lim_(n arrow.r plus oo) lr((5 n^2 minus 2)) eq plus oo$. En
  appliquant le théorème de comparaison, on obtient que
  $lim_(n arrow.r plus oo) lr((5 n^2 minus 2 lr((minus 1))^n)) eq plus oo$.

+ Soit $u_n eq n^2 minus 2 n plus lr((minus 1))^(n plus 1)$. On sait que
  $minus 1 lt.eq lr((minus 1))^n lt.eq 1$ pour tout $n$. Cela signifie
  que pour n\=n+1$minus 1 lt.eq lr((minus 1))^(n plus 1) lt.eq 1$ par
  conséquent
  $n^2 minus 2 n minus 1 lt.eq lr((minus 1))^(n plus 1) lt.eq n^2 minus 2 n plus 1$
  pour tout $n$ On sait que
  $lim_(n arrow.r plus oo) lr((n^2 minus 2 n minus 1)) eq lim_(n arrow.r plus oo) lr((n^2 lr((1 minus 2 / n minus 1 / n^2)))) eq plus oo$
  car $lim_(n arrow.r plus oo) 1 / n^k eq 0$ pour
  $k in bb(N)^ast.basic$. En appliquant le théorème de comparaison, on
  obtient que
  $lim_(n arrow.r plus oo) lr((n^2 minus 2 n plus lr((minus 1))^(n plus 1))) eq plus oo$

+ Soit $lr((minus 1))^n times sqrt(n) / n$. On sait que
  $minus 1 lt.eq lr((minus 1))^n lt.eq 1$ pour tout $n in bb(N)$. Donc
  $minus sqrt(n) / n lt.eq lr((minus 1))^n times sqrt(n) / n lt.eq sqrt(n) / n$.
  On sait également que
  $lim_(n arrow.r plus oo) minus sqrt(n) / n eq minus n^(1 slash 2) / n eq minus 1 / sqrt(n) eq 0$
  et de manière analogue $lim_(n arrow.r plus oo) sqrt(n) / n eq 0$ En
  appliquant le théorème dit des gendarmes, on obtient que
  $lim_(n arrow.r plus oo) lr((minus 1))^n times sqrt(n) / n eq 0$
