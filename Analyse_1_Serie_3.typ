#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Série 3",
  subtitle: "16/10/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Exercice 1

== 

+ $A={n "impair", n <= 19}$
+ $V={n "pair", n in NN}union{n, n >= 41}$
+ $C=({n "pair"}sect{n <= 10})union({n "impair"}sect{n <= 53})$
+ $N=61$

==

+ $A'={1,2,8}$
+ $B'={5,8,12,14,16,17,20,21}$
+ 
+ $C'={6,9,13,15,19}union{n >= 22}$
+ $N=25$

= Exercice 2

$ x_(n+1) - x_n = (a n+a+b)/(c n+c+d) - (a n+b)/(c n+d) $
$ = (a c n^2+a c n+a n d +a d+b c n+b d-a c n^2 - a c n- a n d -b c n- b c-b d)/((c n+d)(c n+c+d)) $
$ =(a d - b c)/((c n+d)(c(n+1)+d)) $

Ansi $x_(n+1)-x_n >= 0 arrow.l.r.double.long a d-b c>=0$

= Exercice 3

== 

On sait que $a_(n+1) - a_n >= 0$ car $a d - b c = 1 - 0 = 1$

$ abs(n/n+1 -1) = 1/(n+1) $
$ 1/(n+1) <= epsilon $
$ 1/(n+1) <= 1/10 $
$ 9 <= n $
Si on pose $N = 9 space forall n >= N space abs(a_n-l) <= epsilon$

== 

$ abs(n/n+1 - 1) <= epsilon $
$ 1/(n+1) <= 1/100 $
$ 99 <= n $
Si on pose $N = 99 space forall n >= N space abs(a_n-l) <= epsilon$

==

$ abs((-1)^n/n - 0) <= epsilon $
$ 1/n <= epsilon $
$ 1/n <= 1/100 $
$ 100 <= n $
Si on pose $N = 100 space forall n >= N space abs(a_n-l) <= epsilon$

==

$ abs(n/(n^2 +1) - 0)  <= epsilon $
$ n/(n^2+1) <= 1/4 $
$ 4n <= n^2+1 $
$ 0 <= n^2+1 - 4n $

Dans $RR$
$ Delta = 16 - 4 = 12 = (2sqrt(3))^2 $
$ x_1 = (4 + 2sqrt(3))/2 = 2+sqrt(3) approx 3.73$
$ x_2 = 4-2sqrt(3)/2 = 2-sqrt(3) $

Soit $N = 4 space forall n >= N space abs(a_n-l)<=epsilon$

==

$ abs(2n/(n+1)-1) <= epsilon $
Pour $n >= 1$
$ (n - 1)/(n+1) <= epsilon $
$ n-1 <= n+1(3/4) $
$ 0 <= 3/4(n) + 3/4 + 1 - n $
$ 0 <= -1/4(n) + 7/4 $
$ -7/4 <= -1/4(n) $
$ 7 >= n $

$ {n in NN, n <= 7} $

= Exercice 4

$lim(a_2k) = L arrow.l.r.double.long exists N_1, forall epsilon>0 abs(a_2k-L) <= epsilon $
$lim(a_(2k+1)) = L arrow.l.r.double.long exists N_2, forall epsilon>0 abs(a_(2k+1)-L) <= epsilon $

Soit $N = max(N_1, N_2)$
Ainsi $forall n >= N$
Si $n "pair"$ on a $n = 2k, k in NN$ et $abs(a_n - L)=abs(a_(2k)-L) <= epsilon$
Si $n "impair"$ on a $n=2k +1, k in NN$ et $abs(a_n - L)=abs(a_(2k+1)-L) <= epsilon$

Ainsi $ abs(a_n -L )<=  epsilon, forall n >= N$

= Exercice 5

$ abs(x_n - l) = abs(x_n - 1) = 10^(-n) $

On pose $ epsilon >= 10^(-n) $
$ n >= -log(epsilon)$

Alors Si $N = round(-log(epsilon)) + 1$
$ forall n >= N, abs(x_n - 1) <= epsilon $

= Exercice 6

== 

$ abs((2n-3)/(3n+7) - 2/3) = abs(-23/3(3n+7)) = 23/3(3n+7) $
$ 23/3(3n+7) <= epsilon $
$ 23/(3 epsilon) <=3n+7 $
$ (23-21epsilon)/(9 epsilon) <= n $

Soit $N = round((23-21epsilon)/(9 epsilon)) +1$
$forall n>= N, abs(x_n -2/3) <= epsilon$

==

$ abs((a n+b)/(c n+d) - (a/c)) = abs((a c n + b c - a c n -d a)/c(c n+d)) = abs( b c - d a)/c(c n+d)) = abs(d a-b c)/(c(c n+d) $
$ abs(a d - b c)/c(c n+d) <= epsilon $
$ 1/c(abs(a d - b c)/(c epsilon) - d) <= n$

Soit $N = round(1/c(abs(a d - b c)/(c epsilon) - d))$
$ forall n >= N, abs(x_n - a/c) <= epsilon $

= Exercice 7

==

Equivalent

==

Equivalent

==
Equivalent

==

Equivalent

==

Equivalent

= Exercice 8

==

Faux

==

Faux

==

Faux

==

Vrai

==

Vrai

==

Faux

==

Vrai

==

Faux

==

Faux

==

Faux

= Exercice 9

==

$ 0 <= abs(cos(sqrt(n))/n) <= 1/n $

$ abs(1/n) <= epsilon $
$ 1/epsilon <= n $
Soit $N = round(1/epsilon) $
$ forall n >= N, abs(1/n - 0) <= epsilon $

Ainsi $limits("lim")_(n arrow +infinity) 0 = 0$ et $limits("lim")_(n arrow +infinity) 1/n = 0$
donc $limits("lim")_(n arrow +infinity) abs(cos(sqrt(n))/n) = 0 = limits("lim")_(n arrow +infinity) cos(sqrt(n))/n$ 

==

$ 0 <= n!/n^n $
$ 1(2)(3)(4)(5)(...)(n)/(n)(n)(n)(n)(...) = (1/n)(2/n)(3/n)(...) <= 1/n $

Ainsi $limits("lim")_(n arrow +infinity) 0 = 0$ et $limits("lim")_(n arrow +infinity) 1/n = 0$

$ limits("lim")_(n arrow +infinity) n!/n^n = 0 $

==

$ root(n, 1+2^n) >= root(n, 2^n) = 2 $
$ root(n, 1+2^n) <= root(n, 2^n+1) = 2^((n+1)/n) $

On sait que $limits("lim")_(n arrow +infinity) (n+1)/n = 1$
Ainsi $limits("lim")_(n arrow +infinity) 2^((n+1)/n) = 2$
D'après le théorème des gendarmes $ limits("lim")_(n arrow +infinity) root(n, 1+2^n) = 2 $


= Exercice 10
==

$ x >= 0 $
$ 1+x >= 1 $
$ sqrt(1+x) >= 1 $
$ sqrt(1+x) = sqrt(1+2x/2) <= sqrt(1+2x/2 + (x/2)^2) = sqrt((1+x/2)^2) = 1+x/2 $

==

$ sqrt(n^2+2)/2n = sqrt(n^2(1+2/n^2))/2n = sqrt(1+2/n^2)/2$

Soit $x = 2/n^2$
$limits("lim")_(n arrow +infinity) sqrt(1+2/n^2) = 1$
$limits("lim")_(n arrow +infinity) sqrt(n^2+2)/2n = 1/2$

= Exercice 11

$ limits("lim")_(n arrow +infinity) a_n = 3/1 = 3 $

==

$ limits("lim")_(n arrow +infinity) 1/a_n = 1/3 $

==

$ limits("lim")_(n arrow +infinity) (a_n/3+3/a_n) = 1+1=2 $

==

$ limits("lim")_(n arrow +infinity) (9n^2)/(n^2+4n+4) = limits("lim")_(n arrow +infinity) (a_n)(a_n) = 3^2 = 9 $

= Exercice 12

On sait que $forall x in A x <= s, forall epsilon > 0 exists x in A, s-epsilon < x <= s $
Soit $epsilon_n = 1/n, N = 1/epsilon_n$
$ forall n>= N, s-1/n < x_n <= s $

$ -1/n< x_n-s<= 0 $

On sait que $ limits("lim")_(n arrow +infinity) -1/n = 0$
Donc d'après le théorème des gendarmes $ limits("lim")_(n arrow +infinity) x_n-s = 0 arrow.l.r.double.long forall epsilon > 0 space exists N,forall n>= N, abs(x_n-s) <= epsilon $
Ainsi $ limits("lim")_(n arrow +infinity) x_n = s $
