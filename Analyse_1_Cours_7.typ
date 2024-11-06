#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 7",
  subtitle: "01/11/2024",
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

= Convexité
$ "Soit " f "convexe", forall x_1 < x_2 $
$ phi : t arrow (1-t)x_1+t x_2 $
$ gamma : [0,1] arrow RR $
$ gamma : t arrow (1-t)f(x_1)+t f(x_2) $
$ gamma([0,1]) >= f(phi([0,1])) $

= Concave
$ "Soit " f "concave", forall x_1 < x_2 $
$ phi : t arrow (1-t)x_1+t x_2 $
$ gamma : [0,1] arrow RR $
$ gamma : t arrow (1-t)f(x_1)+t f(x_2) $
$ gamma([0,1]) <= f(phi([0,1])) $

== Exemple

$ f(x)=abs(x) $
$ forall x_1<x_2, t in [0,1] $
$ abs((1-t)x_1+t x_2) <= (1-t)abs(x_1)+t abs(x_2) $

= Limite en un point
*Voisinage épointé de $x_0$*
$delta > 0 ,V = ]x_0-delta, x_0[union]x_0,x_0+delta[$

Les énoncés suivants sont équivalents
$ f "tend vers" L "lorsque" x "tend vers" x_0 space (i) $
$ forall epsilon>0, exists delta > 0 : 0 < abs(x-x_0) <= delta space (i i) $
$ lim_(x arrow x_0) f(x) = L space (i i i) $

== Exemple

$ f(x) = cases(
  (x-1)/2 "si" x!= 2,
  sqrt(2)/pi "si" x= 2,
) $

Montrons que $lim_(x arrow 2)  f(x) = 1/2$

$ abs(f(x)-1/2) = abs((x-1)/2 - 1/2) = 1/2abs(x-2) $

$ "Soit" epsilon > 0, abs(f(x)-1/2) <= epsilon $
$ abs(x-2) <= 2epsilon $
$ "Soit" delta = 2epsilon, abs(x-2)<= delta arrow.double.long abs(f(x)-1/2) <= epsilon $

2. 

$ f(x) = cases(
  3/(2x+5) "si" x!=2,
  sqrt(2)^pi "si" x=2
) $

$ abs(f(x)-1/3) = 2/3(abs(x-2)/abs(2x+5)) <= 2/21 abs(x-2) $

$epsilon > 0. x!=2, abs(x-2)<= 1 arrow.double.long abs(f(x)-1/3) <= 2/21 abs(x-2)$
$ abs(x-2) <= 21/2 epsilon $

Posons $ delta := min(1, 21/2 epsilon ) arrow.double.long abs(f(x)-1/3)<= 2/21 abs(x-2) <= 2/21 delta <= epsilon $ 

= Théorème des deux gendarmes 
Soit $f,g,h$ définie sur un voisinage épointé $V$ de $x_0$ telles que
$ g(x)<= f(x)<= h(x) $
$ lim_(x arrow x_0) g(x) = lim_(x arrow x_0) h(x) = L $
$ arrow.long.double lim_(x arrow x_0) f(x) = L $

== Preuve

$ exists delta > 0 : abs(g(x)- L)<= epsilon, abs(h(x)-L) <= epsilon, forall x: abs(x-x_0) <= delta $
$ f(x)-L >= g(x)-L >= -abs(g(x)-L) >= -epsilon $
$ abs(f(x)-L) <= epsilon $

== Exemple

$ f(x) = abs(x)sin(1/(sqrt(5abs(x)))) $

$ -1 <= sin(X) <= 1 $
$ - abs(x) <= f(x) <= abs(x) $

$ lim_(x arrow 0) -abs(x) = -abs(0) = 0 $
$ lim_(x arrow 0) abs(x) = abs(0) = 0 $

Ainsi $ lim_(x arrow 0) f(x) = 0 $

2.

$f(x)=x floor(1/x)$

$  (1-x)/x  <= floor(1/x)<= 1/x  $
$ 1-x <= x floor(1/x) <= 1 $

$ lim(x arrow 0) 1-x = 1 $
$ lim(x arrow 0) 1 = 1 $

$ lim(x arrow 0) x floor(1/x) = 1 $

Si $x > 0$
$ 1-x <= f(x) <= 1 $

Si $x < 0$
$ 1-x >= f(x) >= 1 $

$ g(x) = cases(
  1-x "si" x >0,
  1 "si" x < 0  
) $
$ h(x) = g(-x) $

$ lim_(x arrow 0^(+)) 1-x = 1 $
$ lim_(x arrow 0^(-)) 1 = 1 $
$ lim_(x arrow 0) g(x) = 1 $
$ lim_(x arrow 0^(+)) h(x) = lim_(x arrow 0^(-)) g(x) =  1 $
$ lim_(x arrow 0^(-)) h(x) = lim_(x arrow 0^(+)) g(x) =  1 $
$ lim_(x arrow 0) h(x) = 1 $

= Limite latérale

Soit $f$ définie sur $]x_0; x_0+delta[$

$ lim_(x arrow x_0^+) f(x) = L arrow.double.long.l.r $
$ forall epsilon > 0 , exists delta > 0 : x_0 < x <= x_0 + delta arrow.l.r.double.long abs(f(x)-L) <= epsilon $


Soit $f$ définie sur $]x_0-delta; x_0[$

$ lim_(x arrow x_0^-) f(x) = L arrow.double.long.l.r $
$ forall epsilon > 0 , exists delta > 0 :  x_0 - delta <= x < x_0  arrow.l.r.double.long abs(f(x)-L) <= epsilon $


== Exemple
Sur $RR^*_+, 1-x <= f(x) <= 1$

$ lim_(x arrow 0^+) tilde(g)(x) = lim_(x arrow 0^+) tilde(h)(x) = 1 $
On a $ lim_(x arrow 0^+) f(x) = 1 $

Sur $RR^*_-, 1 <= f(x) <= 1-x $

$ lim_(x arrow 0^-) tilde(g)(x) = lim_(x arrow 0^-) tilde(h)(x) = 1 $
On a $ lim_(x arrow 0^-) f(x) = 1 $

Les deux affirmations sont équivalentes 
$ lim_(x arrow x_0) f(x) = L $
$ lim_(x arrow x_0^+) f(x) = lim_(x arrow x_0^-) f(x) = L $
