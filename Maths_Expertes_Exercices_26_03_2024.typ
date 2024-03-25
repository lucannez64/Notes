#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Expertes Exercices",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "26 Mars, 2024",
)

#set heading(numbering: "1.1.")

== Exercice 43 p 128

=== 1.

On a $5^3 = 25 times 5$

$5 equiv 5 [31]$
et $25 equiv minus 6 [31]$

donc $5^3 equiv 5 times minus 6 [31]$ 
$5^3 equiv -30 [31]$

Or $-30 equiv 1 [31]$ car $-30 -1 = 31$
donc $5^3 equiv 1 [31]$

=== 2.

$5^15 = (5^3)^5$
donc $ 5^15 equiv 1^5 [31] equiv 1 [31]$

$=> 7 times 5^15 -6 equiv 7-6 [31] equiv 1[31]$

Par conséquent le reste de la division eucliedienne de $7 times 5^15 -6$ par $31$ est $1$

== Exerice 44 p 128

$100-9 = 31 times 7$
donc $100 equiv 9 [31]$

$=> 100^1000 equiv 9^1000 [31]$

Or #table( 
    columns: (auto, auto, auto, auto, auto),
    inset: 10pt,
    align: horizon,
    table.header(
      [k], [1], [2], [3], [4],
    ),
    $9^k equiv ... [31]$,
    $9$,
    $3$,
    $1$,
    $9$,
  )
On trouve que $9^k equiv ... [31]$ forme un cycle contenant 3 éléments.

De plus $1000 equiv 1 [3]$
donc $ 100^1000 equiv 9^1000 [31] equiv 9 [31]$

== Exercice 50

=== 1.
$10 equiv 1 [9]$
donc $10^k equiv 1 [9]$

$forall n in NN, n= sum^y_(k=0)(a_k times 10^k), y$ étant le nombre de chiffre de n

Donc $n equiv (sum^y_(k=0)(a_k times 10^k)) [9]$
$=> n equiv (sum^y_(k=0)a_k )[9]$

Par conséquent tout entier est divisible par 9 si et seulement si la somme de ses chiffres et aussi divisble par 9

=== 2.

Pour que $27 a 8$ soit divisible par 9 on doit avoir
$2+7+8+a equiv 0 [9]$

$2 equiv 2 [9]$ $7 equiv 7 [9]$ $8 equiv 8 [9]$
donc $2+7+8 equiv 17 [9] equiv 8 [9]$
par conséquent $a equiv -8 [9] equiv 1 [9]$
Ainsi $a = 1+9k$ avec $k in ZZ$
Or a est un chiffre en base 10 donc $0 lt.eq.slant a <10$

pour $k=0$ $a=1$ ce qui est dans l'intervalle

pour $k=1$ $a=10$ ce qui n'est pas dans l'intervalle

pour $k=-1$ $a=-8$ ce qui n'est pas dans l'intervalle

En conclusion $a=1$ et $27 a 8 = 2718$ qui est divisible par $9$

== Exercice 51 p 128

=== 1. #table( 
    columns: (auto, auto, auto, auto, auto),
    inset: 10pt,
    align: horizon,
    table.header(
      [k], [1], [2], [3], [4],
    ),
    $10^k equiv ... [11]$,
    $-1$,
    $1$,
    $-1$,
    $1$,
  )
On remarque que $10^k equiv ... [11]$ forme un cycle de 2 éléments et dépend donc de la parité de $k$

=== 2.

$67485 = 6 times 10^4 + 7 times 10^3 + 4 times 10^2 + 8 times 10^1 + 5 times 10^0$

$=> 67485 equiv 6 times 10^4 + 7 times 10^3 + 4 times 10^2 + 8 times 10^1 + 5 times 10^0 [11]$

$67485 equiv 6-7+4-8+5 [11] equiv 0 [11] $

On en conclut que $67485$ est divisible par 11 et est donc un multiple de 11.

=== 3.

Il faut vérifier que la somme des chiffres correspondant à une puissance paire de 10 soustrait de la somme des chiffres correspondant à une puissance impaire de 10 est divisible par 11.
