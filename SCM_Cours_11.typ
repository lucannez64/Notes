#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "SCM Cours 11",
  subtitle: "12/05/2025",
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

= Introduction aux équations différentielles

Une équation différentielle est une équation dont l'inconnue est une fonction.

Par exemple $ m dot.double(arrow(x)) = (-G M m)/(norm(arrow(x))^3) arrow(x) $
$ m dot.double(arrow(x)) = -k arrow(x) $

Ce sont des équations différentielles ordinaires (EDO) car la fonction inconnue ne dépend que d'une variable.

Il existe d'autres équations différentielles comme celle de Navier-Stokes, Yang-Mills, qui dépendent de plusieurs variables.

== EDO Linéaires de premier ordre

#definition[
  Une EDO Linéaire de premier ordre (EDOL1) est du type $ y' + p y = q  $ ou $p,q : D arrow RR, "continues sur " D subset RR$
  + EDOL1 est dite homogène si $q=0$
  Une solution à EDOL1 $y'+p y =q$ est une fonction $ f: I arrow RR, "ou" I subset D "est une intervalle ouvert", "tq" f'+p f =q $
  Une condition initiale pour une EDOL1 est la donnée de $(x_0,y_0) in I times RR$ et telle que $f(x_0)= y_0$
]

#exemple[
  + $y'="cste" $
  + $y y' + y^2 = x^2$ nest pas EDOL1 mais $u=y^2,u'=2y y', u'+2u = 2x^2$ est une EDOL1
]

Essayons de résoudre une EDOL1 homogène

$ y'+p y = 0 <=> y' = -p y $
$ \"<=>\" y'/y = -p  \"<=>\" dd(ln(y))/dd(x) = -p\
  <=> ln(y) = integral_(x_0)^x (-p)dd(t) + lambda\
  <=> y = exp(-integral_(x_0)^x p dd(t)) mu, mu in RR 
$

Si on a la condition initiale $y(x_0)=y_0$ on doit choisir $mu = y_0$
la solution devient $ y(x)=y_0 exp(-integral_(x_0)^x p dd(t)) $

#theorem[
  Soit $y' + p y = 0$ une EDOL1h. Soit $I$ un intervalle ouvert tel que $I subset D_(d é f) (p)$. Soit $x_0 in I "et "y_0 in RR$.
  Alors l'EDOL1h possède une unique solution donnée par
  $ y = y_0 exp(-integral_(x_0)^x p dd(t)) "sur " I $
]

#proof[
  Le fait que $y$ soit une solution à EDOL1h tq $y(x_0)=y_0$ est immédiat. \
  Soit $f: I arrow RR$ tq $f(x_0)=y_0$ et $f'+p f = 0$ \
  Posons alors $ g := f exp(integral_(x_0)^x p dd(t)), x in I $
  On a que $ g' &= f'exp(integral_(x_0)^x p dd(t)) + f p exp(integral_(x_0)^x p dd(t)) \
    &= exp(integral_(x_0)^x p dd(t)) (f'+ f p)\
    &= 0
  $ 
  $ => g = c s t e => f = c s t e exp(- integral_(x_0)^x p dd(t)) $
  Comme $ f(x_0)=y_0, f= y_0 exp(-integral_(x_0)^x p dd(t)) = y $ 
]

#exemple[
  $ y' + cot(x)y = 0, y(pi/2) = 1 $
  $ p = cot(x), D = RR without { k pi | k in ZZ }, x_0 = pi/2, y_0 = 1 $
  $ I = ]0, pi[ $
  $ y &= exp(-integral_(pi/2)^x cot(x) dd(t))\
    &= exp( - integral_(pi/2)^x (cos(t))/(sin(t)) dd(t)) \
    &= exp( -ln(sin(x))) = 1/sin(x)
  $
]

#exemple[
  Trouver $f in C^1(RR^*_+)$ tq $f(x^y) = y f(x), forall y in RR, x in RR^*_x$
  Dérivons par rapport à y
  $ f'(x^y) (x^y)' = f(x)\
    f'(x^y) x^y ln(x) = f(x)\
  $
  Posons $y=1$
  $ f'(x) x ln(x) = f(x)\
    x!=1, f'(x) - 1/(x ln(x)) f(x) = 0\
    f(x) = y_0 exp(integral_(x_0)^x 1/(t ln(t)) dd(t) )\
    = y_0 exp(ln(ln(x)) - ln(ln(x_0))), x_0,x > 1\
    = y_0 exp(ln(ln(x)/ln(x_0)))\
    = y_0 ln(x)/ln(x_0)
  $
]

Si $y' + p y = q, q!= 0$ que vaut $y$

#lemma[
  Si $f,g: I arrow RR$ sont solutions de $y'+p y = q$
  alors $f-g$ est solution de $y'+p y = 0$
]

#proof[
  $ (f-g)' = f'-g' = q-p f - (q-p g) = -p(f-g) $
]

#corollaire[
  Si $y' + p y = q$ est une EDOL1 , et si $I subset D$ est un intervalle ouvert,
  $ y = y_p + lambda y_h, lambda in RR $
  $y_p$ une solution particulière à l'EDOL1 et $y_h = exp(-integral_(x_0)^x p dd(t))$ est solution à l'EDOL1h  
]

On peut trouver $y_p$ en devinant
#exemple[
 $ y' + x y = x^2+1 $\
On cherche $y = a x + b$
$ a x^2 + b x + a  = x^2 + 1\
  <=> a=1, b = 0\
  y_p = x\
  y_h = lambda exp(-x^2/2), lambda in RR\
  y = x+lambda exp(-x^2/2),
  y(0)=1 => lambda = 1 <=> y(x) = x + exp(-x^2/2)
  $
]

#theorem("Variation des constantes")[
   Soient EDOL1 $y'+p y =q, p,q: D arrow RR, "continues"$ Soit $x_0 in I subset D, "un intervalle ouvert"$ \
  L'unique solution à l'équation tq $y(x_0)=0$ est
  $ exp(-integral_(x_0)^x p dd(t)) integral_(x_0)^x (q(t) exp(integral_(x_0)^t p dd(s)) dd(t)) $
]
