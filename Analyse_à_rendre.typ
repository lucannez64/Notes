#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Exercice 11
== Tendre vers $- infinity$
Les énoncés suivants sont équivalents 
$ (a_n) "tend vers " -infinity $
$ (a_n) arrow -infinity $ 
$ forall m < 0, exists N in NN : forall n >= N, a_n <= m $

== 


On cherche à définir un $N(m)$ tel que $forall n >= N, a_n <= m$
$ log((N+1)/N^2)<=m $
$ (N+1)/N²<=e^m $
$ N+1/N^2 <= e^m $
$ N+1/n^2 = e^m $
$ N+1 = N²*e^m $
$ N²*e^m - n-1 = 0 $
$ Delta = 1 + 4*e^m > 0 $

On choisit la valeur positive de $N$ car $ sqrt(1+4e^m) >= sqrt(1) = 1 $
$ N_2 = floor((1+sqrt(1+4e^m))/(2e^m)) +1 in NN $

Soit $ forall m < 0, forall n>= N_2 : (a_n) <= m  $ ainsi $(a_n) arrow -infinity$

= Exercice 12

Soit la propriété $cal(P)(n): sum_(j=1)^(n+1) j 2^j=n 2^(n+2) + 2$

*Initialisation *

Pour $n=0$
On a :
$ sum_(j=1)^1 j 2^j = 2 $
$ 0*2^(2) +2=2 $

La propriété est initialisée

*Hérédité*

On suppose qu'il existe un rang $k$ tel que $cal(P)(k)$ est vérifiée on cherche à démontrer que $cal(P)(k+1)$ est également vérifiée

$ sum_(j=1)^(n+2) j 2^j = sum_(j=1)^(n+1) j 2^j + (n+2)*2^(n+2) $
$ sum_(j=1)^(n+2) j 2^j = n*2^(n+2) + 2 + (n+2)*2^(n+2) $
$ sum_(j=1)^(n+2) j 2^j = 2 + 2^(n+2)(2n+2) $
$ sum_(j=1)^(n+2) j 2^j = 2 + 2^(n+3)(n+1) $

Ainsi la propriété est héréditaire

*Conclusion*


La propriété est initialisée et héréditaire, d'après le principe de récurrence la propriété est vraie pour tout $n>=0$. Ainsi $forall n in NN : sum_(j=1)^(n+1) j 2^j=n 2^(n+2) + 2$ 
