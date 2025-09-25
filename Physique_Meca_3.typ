#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, va, vu, dv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Physique Meca 3",
  subtitle: "23/09/2025",
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

= Oscillateur harmonique 1

== Loi de Hooke

#definition[
  Soit $l_0$ la longueur à vide d'un ressort et $P_1, P_2$ les deux extrémités du ressort
  $ va(F^(1 arrow 2)) = -k(va(P_1 P_2)-l_0 vu(P_1 P_2)) $
]

#proof[
  $ va(F^(2 arrow 1)) &= -va(F^(1 arrow 2)) \
    va(F^(1 arrow 2)) &= -k(l-l_0) vu(x) \
    va(F^(1 arrow 2)) &= -k(l-l_0) va(P_1 P_2)/norm(P_1 P_2) \
    va(F^(1 arrow 2)) &= -k(va(P_1 P_2)-l_0 vu(P_1 P_2)) \
    <=> va(F^(2 arrow 1)) &= -k(va(P_2 P_1)-l_0 vu(P_2 P_1))
  $
]

== Equation différentielles du mouvement

#problem[
  Soit un ressort de constante $k$ et de longueur initiale $l_0$ avec une masse $m$ attaché au point $P=P_2$ dans un repère $(O, vu(x))$ avec $ vu(x) = vu(P_1 P_2), O=P_1$
  $ va(F) &= m va(a) 
    va(F^(O arrow P)) &= m va(a) \
    -k(va(O P) - l_0 ) &= m dv(va(O P), t, 2) \
    -k(x vu(x) - l_0 vu(x)) &=  m dv(x, t, 2) vu(x) \
    dv(x, t, 2) &= -k/m (x - l_0)
  $

  Résolution de l'équation différentielle
  $ dv(x,t,2) + k/m x = l_0 k/m $
  $ chi(x) = x^2 - k/m \
    Delta = - 4 k/m \
    lambda_plus.minus = plus.minus i sqrt(k/m) \
    x_h_plus.minus = C_1 exp(plus t i sqrt(k/m)) + C_2 exp(minus t i sqrt(k/m)) \
    x_h_plus.minus =  (C_1 cos(t sqrt(k/m)) + C_2 sin(t sqrt(k/m)))\
    x = ( x(0) cos(t sqrt(k/m)) + sqrt(m/k) dv(x,t) sin( t sqrt(k/m))) + l_0
  $ 

  $ (dv(,t)- lambda_1(t)) (dv(,t) -lambda_2)y = l_0 k/m \
    lambda_1 + lambda_2 = 0\
    lambda_1 lambda_2 = k/m\
    lambda_1 = sqrt(k/m) \
    lambda_2 = -sqrt(k/m) \
    (dv(,t) - omega )(dv(,t) + omega)x(t) = l_0 k/m \
    x = ( x(0) cos(t sqrt(k/m)) + sqrt(m/k) dv(x,t) sin( t sqrt(k/m))) + l_0
  $
]

#definition[
  Pulsation
  $ omega = sqrt(k/m) ["rad"/s] $
  Fréquence
  $ f = omega/(2pi) = 1/(2pi) sqrt(k/m) [ "Hz"]  $
  Période
  $ T = 1/f = (2pi)/omega = 2pi sqrt(m/k) [s] $
]

== Pendule simple

#problem[
Dans un repère fixé en O
l'axe $x$ est dirigé vers le bas et O est fixé le centre de rotation
$
  va(O P) &= x vu(x) + y vu(y)\
  x^2 + y^2 &= l^2\
$

Forces
$
  m va(g) &= m g vu(x)\
  va(T)&=T_x vu(x) + T_y vu(y)\
  T_x/T_y &= x/y
$
Newton
$
  va(F) &= m va(a)\
  m va(g) + va(T) &= m va(a)\
  m g vu(x) + T_x vu(x) + T_y vu(y) &= m dv(x, t, 2) vu(x) + m dv(y,t,2) vu(y) \
  T_x y &= T_y x \
$
Dérivée des liaisons
$
  x^2 + y^2 &= l^2\
  x dv(x, t,2) + y dv(y, t, 2) + dv(x,t)^2  + dv(y,t)^2 &= 0
$
Par composantes
$
  m dv(x,t,2) &= m g + T_x \
  m dv(y,t, 2) &= T_y \
  T_x y &= T_y x \
  x dv(x, t,2) + y dv(y, t, 2) + dv(x,t)^2  + dv(y,t)^2 &= 0
$
Utilisation de coordonées généralisés $theta$
$
  cases(x = l cos(theta)\
  y = l sin(theta))\
  
  => x^2 + y^2 = l^2 cos(theta)^2 + l^2 sin(theta)^2 = l^2 (1) = l^2
$
La liaison est toujours satisfaite \
$
  T_x = T cos(theta)\
  T_y = T sin(theta)\
  T in RR
$

Dérivée de la position
$
   dv(x,t) &= - l dot(theta) sin(theta) \
   dv(y,t) &= l dot(theta) cos(theta) \
   dv(x,t,2) &= -l sin(theta) dot.double(theta) - l cos(theta) dot(theta)^2 \
   dv(y,t, 2) &= l cos(theta) dot.double(theta) - l sin(theta) dot(theta)^2 
$

En remplacant on a

$
  -m l sin(theta) dot.double(theta) - m l cos(theta) dot(theta)^2 = m g + T cos(theta) \
  m l cos(theta)dot.double(theta) - m l sin(theta) dot(theta)^2 = T sin(theta) \

  <=> dot.double(theta)(-m l sin(theta)^2 - m l cos(theta)^2 ) = m g sin(theta) \
  <=> -m l dot.double(theta) = m g sin(theta)\
  <=> dot.double(theta) + g/l sin(theta) = 0 \
$

Dans le cadre ou $theta << pi/2 $ on a
$ sin(theta) approx theta $
$ => dot.double(theta) + g/l sin(theta) approx dot.double(theta) + g/l theta  $
$ chi(x) = x^2 + g/l $
$ Delta = - g/l $
$ lambda_plus.minus = plus.minus i sqrt(g/4l) $
$ theta(t) = C_1 e^(i sqrt(g/l)) + C_2 e^(-i sqrt(g/l)) $
$ theta(t) = theta(0)cos(t sqrt(g/l)) + sqrt(l/g) dot(theta) sin(t sqrt(g/l)) $
]

#definition[
  Pulsation
  $ omega = sqrt(g/l) ["rad"/s] $
  Fréquence
  $ f = omega/(2pi) = 1/(2pi) sqrt(g/l) [ "Hz"]  $
  Période
  $ T = 1/f = (2pi)/omega = 2pi sqrt(l/g) [s] $
]

#problem[
  Repère mobile

  $
    va(e_r) &= vu(x) cos(theta) + vu(y) sin(theta)\
    va(e_theta) &= - vu(x) sin(theta) + vu(y) cos(theta)\
\
    dot(va(e_r)) &= - vu(x) sin(theta) dot(theta) + vu(y) cos(theta) dot(theta)\
    dot(va(e_theta)) &= - vu(x) cos(theta) dot(theta) - vu(y) sin(theta) dot(theta)\
\
    dot(va(e_r)) &= dot(theta) va(e_theta)\
    dot(va(e_theta))&= - dot(theta) va(e_r)
  $

  Coordonnées
  $
    vu(x) &= cos(theta) va(e_r) - sin(theta) va(e_theta)\
    vu(y) &= sin(theta) va(e_r) + cos(theta) va(e_theta)\
    va(g) &= g cos(theta) va(e_r) - g sin(theta) va(e_theta)\
    va(T) &= T va(e_r)
  $
  Newton
  $
    dot(O P) &= l dot(theta) e_theta\
    dot.double(O P) &= l dot.double(theta) e_theta - l dot(theta)^2 va(e_r) \
    T va(e_r) + m g cos(theta) va(e_r) - m g sin(theta) va(e_theta) &= m(l dot.double(theta) e_theta - l dot(theta)^2 va(e_r))\
    dot(theta) = -g/l sin(theta)
  $

]
