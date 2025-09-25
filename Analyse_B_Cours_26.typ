#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 26",
  subtitle: "03/06/2025",
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
#let ds = $dd(s)$
#let dt = $dd(t)$
#let dy = $dd(y)$
#let dz = $dd(z)$
#let dl = $dd(l)$

= Longueurs d'arcs
Soit $f in C^1(lr([x_a","x_b]))$ \
L longueur de l'arc de la courbe de $f$ entre $A,B$\
On approxime $L approx sum_(k=1)^n Delta L_k$
$ Delta y_k = f(x_k)-f(x_(k-1))\
  Delta x_k = x_k - x_(k-1) \
  Delta L_k = sqrt((Delta x_k)^2 + (Delta y_k)^2)\
  = Delta x_k sqrt(1 + ((f(x_k)- f(x_(k-1)))/(x_k-x_(k-1)))^2)
$
$ L := lim_(n arrow +oo) sum_(k=1)^n Delta L_k\
 = lim_(n arrow +oo) sum_(k=1)^n Delta x_k sqrt(1 + f'(x_k)^2) \
= integral_(x_A)^(x_B) sqrt(1+f'(x)^2) dx
$

#exemple[
  $ y = (4sqrt(2))/3 x^(3/2), x in [0,1] $
  $ f'(x) = 2sqrt(2x) $
  $ L=  integral_0^1 sqrt(1+ 8x) dx $
  $ = 1/8 lr(2/3(1+8x)^(3/2) |)_0^1 = 13/6 $
]

#exemple[
  $ y = m x + h, x in [a,b] $
  $ f'(x) = m $
  $ L = integral_a^b sqrt(1+m^2) dx \
    = lr(sqrt(1+m^2)x |)_a^b 
  $
]

#rem[
  Si $x=g(y), g in C^1([y_A,y_B])$
  $ L = integral_(y_A)^(y_B) sqrt(1+ g'(y)^2) dy $
]

#exemple[
  $ y= sqrt(x), [0,4] $
  $ f(x)=sqrt(x), f'(1/(2sqrt(x))), g(y) = y^2, g'(y)= 2y $
  $ L = integral_0^2 sqrt(1+ 4y^2) dy $
  $ 2y = sinh(t)$
]

En général,

$ L = integral_A^B dl $ avec $dl = sqrt(dx^2 + dy^2) = dx sqrt(1+ (dy/dx)^2) = dy sqrt(1+ ((dx)/dy)^2)$
== Longueur d'un arc de courbe paramétrée

$(x(t),y(t)), x,y in  C^1([t_A,t_B])$
$ Delta L_k = sqrt(Delta x_k^2 + Delta y_k^2) \
  = Delta t_k sqrt( ((Delta x_k)/(Delta t_k))^2 +  ((Delta y_k)/(Delta t_k))^2 )\

  L = lim_(n arrow +oo) sum_(k=1)^n Delta L_k = integral_(t_A)^(t_B) sqrt(x'(t)^2 + y'(t)^2) dt
$

#exemple("Périmètre du cercle")[
  $(r cos(t), r sin(t)), t in [0,2pi]$
  $ P = integral_0^(2pi) sqrt(r^2 sin(t)^2 + r^2 cos(t)^2) dt\
    = integral_0^(2pi) r dt\
    = 2pi r
  $
]

#exemple[
  $P "point sur roue de rayon "r$
  Lorsque la roue roule, P décrit une cycloïde.\
  $t$ l'angle géométrique entre la verticale et $C P$\
  Trajectoire de C:
  $C := (t r,r)$\
  Trajectoire de P:
  $ P := (r (t + cos((3pi)/2 -t)) ), r(1+ sin((3pi)/2 -t)) \
    = (r(t-sin(t)), r(1-cos(t)))
  $
  $ P' = ( r(1-cos(t)), r sin(t) ) $
  $ L = integral_0^(2pi) r sqrt((1-cos(t)^2 + sin(t)^2)) dt $
  $ = integral_0^(2pi) r sqrt(1 -2cos(t) + cos(t)^2 + sin(t)^2 ) $
  $ = sqrt(2) r integral_0^(2pi) sqrt(2 sin(t/2)^2) dt  $
  $ = 2r integral_0^(2pi) sin(t/2) dt $
  $ = 8r $
]

= Aires de surfaces de révolution

Soit $f in C^1([a,b])$

Quelle est l'aire S de la surface de révolution engendrée par la rotation de l'arc $y=f(x), a<= x <= b$ autour de l'axe $( O x)$ 

$ S approx sum Delta S_k $
aire latérale d'un tronc de cône
$A = 2pi (r_1+ r_2)/2 l $
$ S = lim_(n arrow +oo) sum_(k=1)^n Delta S_k \
= lim_(n arrow +oo) sum_(k=1)^n 2pi (f(x_(k-1)) + f(x_k))/2 Delta L_k \
= lim_(n arrow +oo) sum_(k=1)^n 2pi f(x_k) Delta L_k \
= integral_a^b 2pi f(x) sqrt(1+ f'(x)^2) dx
$

#exemple[
  $y=sqrt(x), [1,2]$ autour de (Ox)\
  $ S = integral_1^2 2pi sqrt(x) sqrt(1+ 1/(4x)) = integral_1^2 2pi sqrt(x+1/4) dx = pi/6 (27-5^(3/2)) $
]


plus généralement:

$ S = integral_A^B ds = integral_A^B 2pi r dl $
$ y = f(x), S= integral_(x_A)^(x_B) 2pi f(x) sqrt(1+f'(x)^2) dx $
$ x = g(y), S = integral_(y_A)^(y_B) 2pi y sqrt(1+g'(y)^2) dy $

#exemple[
  $ x= y^2 $
  $ S = integral_1^sqrt(2) 2pi y sqrt(1+ 4y^2) dy $
]
