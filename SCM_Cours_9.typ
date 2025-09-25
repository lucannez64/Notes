#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "SCM Cours 9",
  subtitle: "28/04/2025",
  author: "Lucas Duchet-Annez",
  accent: latte.blue
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)
#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1)")
#let definition-style = builder-thmline(color: latte.sapphire)
#let example-style = builder-thmline(color: latte.flamingo)
#let theorem-style = builder-thmbox(color: latte.blue, shadow: (offset: (x: 3pt, y: 3pt), color: luma(70%)))
#let remark-style = builder-thmline(color: latte.yellow)
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = remark-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
#let problem = problem-style("problem", "Problème")
#let proof(body, name: none) = {
  thmtitle[Preuve]
  if name != none {
    [ #thmname[#name]]
  }
  thmtitle[.]
  body
  h(1fr)
  $square$
}

#outline()

= Outils d'analyse
On va utiliser tout résultat de Analyse B

== Polynômes de Taylor

Essayons de calculer la valeur de $pi$

Géométriquement:

#figure[
  #image("cetz_test.svg")
]

Paramétrisons un point $P$ sur le cercle $Gamma$\
Chaque point $P(x,y) in Gamma(0,1)$ est l'intersion de $Gamma(0,1)$ avec $y=t x$ avec $t in [0,1]$ et réciproquement.\
On sait que $x^2 + y^2 = 1$
Aussio $y/x = t$
Donc $y^2/x^2 = x^2$ et $y^2 = t^2 x^2$
$ => x^2+ t^2 x^2 = 1 \
  <=> x^2(1+t^2) = 1\
  <=> x^2 = 1/(1+t^2)\
  "Puisque" P(x,y) "est dans le 1er cadran," x>0\
  <=> x = 1/sqrt(1+t^2), y = t/sqrt(1+t^2)
$

$
  dot(x) = -t/(1+t^2)^(3/2) \
  dot(y) = 1/sqrt(1+t^2) - t^2/(1+t^2)^(3/2)\
  = 1/(1+t^2)^(3/2) 
$

La longeur de $(dot(x)(t), dot(y)(t))$ est $1/(1+t^2)$\
Un accroissement d'arc de $P(x,y)$ est donc $dd(t)/(1+t^2)$. On obtient\
$ pi/4  = integral_0^ 1 dd(t)/(1+t^2) = integral_0^1 dd(t)/(1-(-t^2))\
  = integral_0^1 (sum_(k=0)^oo (-1)^k t^k) dd(t)\
  = 1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 + dots.h
$

Mais a-t-on le droit d'échanger une $sum$ infinie et l'intégrale ?


Etudions $1/(1-r), abs(r)<1$
Si $ sum_(k=0)^10 r^k = (1-r^11)/(1-r), sum_(k=0)^n r^k = (1-r^(n+1))/(1-r)\
  sum_(k=0)^oo  r^k = 1/(1-r)i "si" abs(r)<1
$

Si on remplace $r$ par $(-t^2)$
$ pi/4 = integral_0^1 dd(t)/(1-(-t^2)) = integral_0^1 ((sum_(k=0)^n (-t^2)^k )+ (-t^2)^(n+1)/(1+t^2)) dd(t)\
  = sum_(k=0)^n integral_0^1 (-t^2)^k dd(t) + integral_0^1 (-t^2)^(n+1)/(1+t^2) \
  = sum_(0<= 2k+1 <= 2n+1) (-1)^k/(2k +1) + integral_0^1 (-t^2)^(n+1)/(1+t^2)
$
Mais

$
  abs(integral_0^1 (-t^2)^(n+1)/(1+t^2) dd(t)) <= integral_0^1 t^(2n+2)/(1+t^2) dd(t) <= integral_0^1 t^(2n+2) dd(t) = 1/(2n+3) arrow.long_(n arrow oo) 0  
$

Donc $ pi/4 = sum_(0<= 2k+1 <= 2n+1) (-1)^k/(2k +1) $

On a écrit

$ 1/(1+t^2) = sum_(k=0)^n (-t^2)^n + (-t^2)^(n+1)/(1+t^2) $

On l'appelle le développement limité de $f(t) = 1/(1+t^2)$
$sum_(k=0)^n (-t^2)^n$ est le polynôme de Taylor de $f(t)$ et $(-t^2)^(n+1)/(1+t^2)$ est le terme de correction 

#definition[
  Soit $f: I arrow RR$ une fonction $n$ fois dérivable en $x_0 in D_(d é f)$\
  Le polynôme de Taylor de $f(x), $ autour de $x_0$, à l'ordre $n$ est donné par\
  $ P_(f,x_0,n(x)) = sum_(k=0)^n (f^(k)(x_0))/(k!) (x-x_0)^k  $
]

#theorem[
  Soit $f: I arrow RR$, une fonction $n$ fois dérivable en $x_0 in D_(d é f)$ \
  Alors
  $ lim_(x arrow x_0) (f(x)-P_(f,x_0,n(x)))/(x-x_0)^k = 0, forall k in bracket.double 0, n bracket.double.r $
]

#proof[
  Fixons $k in bracket.double 0, n bracket.double.r$\
  Si $k =  0$. Par convention, $(x-x_0)^k = 1$
  $ lim_(x arrow x_0) f(x)-P_(f,x_0,n(x))\
    = lim_(x arrow x_0) (f(x) - sum^n_(k=0) f^((k))(x_0)/(k!)  (x-x_0)^k\
    = lim_(x arrow x_0) (f(x) - f(x_0)) = f(x_0)-f(x_0) = 0
  $

  Si $k != 0$,
  $ lim_(x arrow x_0) (f(x)- sum^n_(l=0) (f^((l))(x_0))/(l!)  (x-x_0)^l)/(x-x_0)^k\
     = lim_(x arrow x_0) (f'(x) - sum^n_(l=1) (f^((l))(x_0))/l! l(x-x_0)^(l-1))/(k(x-x_0)^(k-1))\
    =  lim_(x arrow x_0) (f^((k))(x) - sum_(l=k)^n (f^((l))(x_0))/l! l(l-1)dots.h(l-k)(x-x_0)^(l-k))/(k!(x-x_0)^0)\
    = lim_(x arrow x_0) (f^((k))(x_0)-f^((k))(x_0))/k! = 0
  $
]
