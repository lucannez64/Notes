#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 24",
  subtitle: "23/05/2025",
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

= Aires de régions du plan
#let dx = $dd(x)$
#let dt = $dd(t)$
#let dy = $dd(y)$

#figure[
  #image("alternative_function.svg")
]

Aire géométrique sous la courbe de $f$

$A = A_1+A_2+A_3 = integral_a^b abs(f(x)) dx = integral_a^c f - integral_c^d f + integral_d^b f$


#exemple[

  #figure[
    #image("trapeze.svg")
  ]
  $A = 1$ et $integral_0^2 (-x+1) dx = 0$ 
]

== Aire entre deux courbes

$f,g$ continues sur $ [a,b]$ $f(x)>= g(x)$ sur $[a,b]$ aire de la région délimitée par $y=f(x), y=g(x), x=a,x=b$

$ A = integral_a^b (f(x)-g(x))dx $

#exemple[
  #figure[
    #image("aire_x_x2.svg")
  ]
  $f(x) = x^2, g(x)=x$
  aire de la région délimitée par $y=f(x), y=g(x), x=0, x=1$ ?
  $ A= integral_0^1 (x-x^2)dx = 1/2- 1/3 = 1/6 $
  $ A = integral_0^1 (x-x^2)dx + integral_1^2 (x^2-x) dx = 1/6 + 8/3 -2 -1/3 + 1/2 = 1 $
]

== Méthode général

+ Représenter $f,g$
+ Exprimer l'aire comme une somme d'integrales
+ calculer

#exemple[
  Aire de la région délimitée par les courbes d'équation
  #figure[
    #image("aire_2-x2_-x.svg")
  ]
  $y=2-x^2$ et $y=-x$
  $ A = integral_(-1)^2 (2-x^2+x)dx =  9/2 $
]


#exemple[
  #figure[
    #image("aire_sqrtx_x-2.svg")
  ]
  Points d'intersection
  $x=2$
  et $x=4$
  $ A = integral_0^2 (sqrt(x))dx + integral_2^4 (sqrt(x)-x+2) dx  =  lr(2/3 x^(3/2)|)_0^2 lr((-2/3x^(3/2)-x^2/2 +2x) |)_2^4 \  = 10/3 $
]

== Intégration par rapport à y

#exemple[
  $ A = integral_0^2 (y+2 - y^2) dy = lr(y^2/2 + 2y - y^3/3|)_0^2  = 10/3 $
]

En général entre deux courbes
$x = f(y), x= g(y)$
qui s'intersectent en $y=c, y=d$ $f>=g "sur" [c,d]$
$ integral_c^d (f(y)-g(y)) dy$

#exemple[
  $y=sqrt(x), y=sqrt(2(x-2))$ et l'axe $O x$
  Points d'intersection $x=4$
  $x = y^2, x= y^2/2 + 2$
  $ integral_0^2 -1/2 y^2 +2 dy = lr(- y^3/6 +2y |)_0^2 = 8/3  $
]

#exemple[
  $y= sqrt(x^2+1), y=0, x=0, x=3$
  $x= sinh(t), dx = cosh(t) dt, sqrt(x^2+1)= cosh(t) $
  $ A= integral_0^3 sqrt(x^2+1) dx \ = integral_0^"argsinh"(3) cosh^2(t)dt\  = integral_0^"argsinh"(3) (cosh(2t)+1)/2\ = lr(1/2 t +1/2 sinh(t) cosh(t)|)_0^"argsinh"(3)\ = 1/2 "argsinh"(3)+1/2 3 sqrt(10) $
  On peut aussi calculer l'intégrale indéfinie $integral sqrt(x^2+1) dx =... = 1/2 t + 1/2 sinh(t) cosh(t) + C = 1/2 "argsinh"(x) + 1/2 x sqrt(x^2+1) + C = F(x) $
] 

== Aires de régions délémités par des courbes paramétrés

$Gamma(t) = (x(t),y(t))$
aire du domaine délimité par $Gamma, O x, x=a, x=b$
sur la portion de $Gamma$ $y$ peut-être exprimé comme une fonction de $x$

$ A = integral_a^b y dx = integral_(t_a)^(t_b)  y(t) x'(t) dt $

#rem[
  Si on considère une portion de $Gamma$ sur laquelle $x$ peut-être exprimé comme $x(y)$
  $ A= integral_c^d x dy = integral_(t_c)^(t_d) x(t) y'(t) dt $
]

#exemple[
  Quelle est l'aire du disque de rayon 1 \
  On calcule l'aire d'un quart de disque\
  $Gamma(t) = (cos(t), sin(t)), t in [0,pi/2]$
  délimité par $Gamma, O x, O y$
  $ A = integral_0^1 y(x) dx = integral_(pi/2)^0 sin(t)(-sin(t))\ = integral_0^(pi/2) sin(t)^2\  = integral_0^(pi/2) (1-cos(2t))/2 \ =  lr(1/2 t - 1/4 sin(2t)|)_0^(pi/2) $
  $ A= integral_0^1 x dy  = integral_0^(pi/2) cos^2(t) dt = pi/4 $
]
