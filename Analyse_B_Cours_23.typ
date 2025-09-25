#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 23",
  subtitle: "20/05/2025",
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

= Intégrations de fonctions rationnelles

#let dx = $dd(x)$
#let dt = $dd(t)$
Quelles sont les primitives de $P(x)/Q(x)$, $P,Q$ polynômes ?

Quelques cas simples:
- $ x in RR without {a}, integral 1/(x-a) dd(x) = ln(abs(x-a)) + C $
- $ x in RR without {a}, n >= 2, integral 1/(x-a)^n dx = (x-a)^(-n+1)/(-n+1) + C = -1/(n-1) 1/(x-a)^(n-1) + C $
- $ integral (a x + b)/(x^2+p x +q) dx, x^2+p x + q "irréductible" $
+ $ integral 1/(x^2+1) dx = arctan(x) + C $
+ $ integral 1/(x^2+4) dx = 1/4 integral 1/((x^2/4) + 1) dx = 1/2 arctan(x/2) + C $
+ $ integral 1/(x^2 + 2x +4)  dx = integral 1/((x^2+2x+1)+3) dx\ = integral 1/((x+1)^2 + 3) dx\ = 1/3 integral 1/((x+1)/sqrt(3))^2 + 1) dx\ = 1/sqrt(3) arctan((x+1)/sqrt(3)) + C $
+ $ integral (3x+1)/(x^2 + 2x+ 2) dx = 3/2 integral  (2x + 2/3)/(x^2+2x +2) dx = 3/2 integral (2x+2)/(x^2 +2x +2) - (4/3)/(x^2+2x+2) dx \ = 3/2 ln(x^2+2x+2) -2 integral(1/(x+1)^2 +1) dx\ = 3/2 ln(x^2+2x+2) -2 arctan(x+1) + C $
- si $x^2 + p x + q "n'est pas irréductible"$
+ $ integral 1/(x^2-1) dx$, $1/(x^2-1) = A/(x-1) + B/(x+1)$, $A=1/2$, $B=1/2$ $ = 1/2 ln(abs(x-1)) - 1/2 ln(abs(x+1)) = 1/2 ln(abs((x-1)/(x+1))) + C $

En général, on peut décomposer $P(x)/Q(x), deg(P)<deg(Q)$ comme somme d'éléments simples, comme suit:

+ Factoriser $Q(x)$ en facteurs irréductibles de degré $1$ ou $2$
+ Chaque facteur de la forme $(x-a)^n$ contribue $A_1/(x-a) + A_2/(x-a)^2 + ... + A_n/(x-a)^n $ à la somme
+ Chaque facteur de la forme $(x^2 + p x + q)^m$ contribue $(B_1x+C_1)/(x^2+p x + q) + ... + (B_m x + C_m)/(x^2+p x + q)^m $
+ Poser $P(x)/Q(x)$ = la somme de toutes fonctions rationnelles et résoudre pour trouver les $A_i, B_j,C_j$

#exemple[
  Décomposer $(x-1)/(x+1)^3$ en éléments simples
  $ (x-1)/(x+1)^3 = A_1/(x+1) + A_2/(x+1)^2 + A_3/(x+1)^3\
    = (A_1 (x^2 + 2x+ 1) + A_2 (x+1) + A_3)/(x+1)^3\
    <=> cases(A_1 = 0, 2A_1-A_2 =1, A_1+A_2+A_3 = -1) \
    (x-1)/(x+1)^3 = 1/(x+1)^2  -2/(x+1)^3
  $
]

#exemple[
  $ 1/(x(x^2+1)) = A/x + (B x+ C)/(x^2+1)\
   (x^2(A+B) + C x + A)/(x(x^2 +1 ))\
  <=> cases(A+B = 0, C = 0, A = 1)\
    1/x - x/(x^2+1)
  $
]

#exemple[
  
  $ 1/(x(x+1)^2)  = A/x + B/(x+1) + C/(x+1)^2\
    = 1/x - 1/(x+1) - 1/(x+1)^2
  $
]

Méthode générale pour intégrer $P(x)/Q(x)$:
+ si $deg(P)>= deg(Q)$, faire la division euclidienne de $P$ par $Q$ pour obtenir $q(x)+ r(x)/Q(x), deg(r)< deg(Q)$
+ Décomposer $r(x)/Q(x)$ en éléments siples
+ Intégrer

#exemple[
  $ integral (x-1)/(x+1)^3 dx  = integral 1/(x+1)^2 dx - integral 2/(x+1)^3 dx \
    = -1/(x+1) + 1/(x+1)^2 + C  $
]

#exemple[
  $ (x^2+x+2)/(x(x^2+1)) = A/x + (B x+ C)/(x^2 +1)\
    <=> cases(A+B = 1, C = 1, A = 2)\
    2/x + (1-x)/(x^2+1)
   $
  $ integral (x^2+x+2)/(x(x^2+1)) dx = integral 2/x dx + integral (-x+1)/(x^2 +1) dx\
   = 2ln(abs(x)) - 1/2 ln(x^2+1) + arctan(x) + C $
]

#exemple[
  $ (2x^3-4x^2-x-3)/(x^2-2x-3) = 2x+ (5x-3)/(x^2-2x-3) = 2x + (5x-3)/((x-3)(x+1))\
    = ((A+B)x+(A-3B))/((x-3)(x+1)) + 2x\
    = 3/(x-3) + 2/(x+1) + 2x\
    integral (2x^3-4x^2-x-3)/(x^2-2x-3) dx = (2x^3)/3 + 3 ln(abs(x-3)) + 2ln(abs(x+1))+ C
  $
]

#exemple[
  $ (x^3+3x^2+x+5)/(x^2+1) = x+3+ 2/(x^2+1) \
    integral (x^3+3x^2+x+5)/(x^2+1) dx = x^2/2 + 3x + 2 arctan(x) + C
  $
]

Pour trouver plus rapidement les coefficients de la décomposition, on peut utiliser la "méthode d'évaluation":

$ (5x-3)/((x-3)(x+1)) = A/(x-3) + B/(x+1) $
$ (5x-3)/(x+1) = A + B(x-3) "en 3" 12/4 = A = 3 $
$ (5x-3)/(x-3) = A (x+1) + B "en -1" 2 = B $

#exemple[
  $1/((x+1)(x-1)(x+2)(x-3)(x+5)) = A = -1/(16 dot 6) "en x=-1"$
  
]

#exemple[
  $ (x^2+x + 2)/(x(x^2+1)) = A/x + (B x + C)/(x^2+1) $
  $A =  2$
  $lim_(x arrow +oo ) (x^2+x+2)/(x^2+1) = lim_(x arrow +oo) A + (B x^2 + C x)/(x^2+1) <=> 1= A+B $
  $ "en 1"  2 = 2 + (-1+C)/(2) => C = 1 $
]
