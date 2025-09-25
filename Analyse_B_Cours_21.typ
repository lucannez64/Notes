#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 21",
  subtitle: "16/05/2025",
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
#let dx = $dd(x)$
#let dt = $dd(t)$

= Techniques d'intégration

== Intégration par parties
but: calculer une intégrale de la forme
$ integral u'(x) v(x) d x  $

$ (u(x)v(x))' = u'(x) v(x) + u(x)v'(x) $
$ integral u'(x) v(x) dd(x) = u(x)v(x) - integral u(x)v'(x) dx  $

#exemple[
  $ integral x cos(x) dx = x sin(x) - integral sin(x) dx =  cos(x) + x sin(x) + C $
  $ integral x ln(x) dx = ln(x) x^2/2 - integral (x^2/2) 1/x dx = ln(x) x^2/2 - x^2/4 + C $
  $ integral 1 times ln(x) dx = x ln(x) - integral x/x dx = x ln(x) - x + C $
  $ integral arcsin(x) dx =  x arcsin(x) - integral x/(sqrt(1-x^2)) dx \
  = x arcsin(x) + 1/2 integral -2x(1-x^2)^(-1/2) dx \
  = x arcsin(x) + sqrt((1-x^2)) + C
  $
]

#exemple[
  $ integral e^x cos(x) dx = e^x cos(x) + integral e^x sin(x) dx\
    = e^x cos(x) + e^x sin(x) - integral e^x cos(x) dx\
    = (e^x (cos(x) + sin(x))) /2 + C
  $
]

== Changement de variable

$integral F'(phi(t)) phi'(t) dt = F(phi(t)) + C $

On peut poser $x = phi(t)$,

$ integral f(x) dx = F(x) + C \
  = F(phi(t)) + C
  = integral (F(phi(t))' dt\
  = integral F'(phi(t)) phi'(t) dt\
  = integral f(phi(t)) phi'(t) dt
$

$ x = phi(t), dx/dt = phi'(t), dx = phi'(t) dt $

Conditions sur $phi$:
+ bijective
+ $phi'$ continue

#exemple[
  $ integral cos(sqrt(x)) dx, x>= 0 \
    x = t^2= phi(t), dx = 2t dt \
    integral cos(t) 2t dt \
    = 2 integral t cos(t) dt \
    = 2(t sin(t)+ cos(t)) + C\
    = 2(sqrt(x) sin(sqrt(x)) + cos(sqrt(x))) + C
  $
]

== Fonctions trigo

$
  
  integral sqrt(1-x^2) dx\
  x = sin(t), 1-x^2 = cos(t), dx = cos(t)dt,\
  integral cos(t)^2  dt = integral (1+cos(2t))/2 dt = 1/2 t +1/4 sin(2t) + C\
  = 1/2 arcsin(x) + 1/2 sin(t) cos(t) + C\
  = 1/2 (arcsin(x) +  x sqrt(1-x^2)) + C
$

$
  integral sqrt(x^2+1)  dx\
  cosh(h)^2=1+sinh(h)^2\
  x = sinh(t), dx = cosh(t)dt\
  integral cosh(t)^2 dt\
  = integral (1+cosh(2t))/2 dt\
  = 1/2 (t + 1/2 sinh(2t)) + C\
  = 1/2 "argsinh"(x) + 1/2 x sqrt(1+x^2)+c  
$

$
  integral sqrt(x^2-1) dx, x in ]-oo,-1] union [1,  +oo[\
  x>=1, cosh(t) =x, t >= 0,
  = 1/2 x sqrt(x^2-1) +1/2 "argcosh"(-x) + C
$
