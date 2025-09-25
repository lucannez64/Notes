#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 17",
  subtitle: "02/05/2025",
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

= Vecteur tangent
$ (r(t+Delta t)- r(t_0))/(Delta t) $

En passant à la limite $Delta t arrow 0$, on obtient le vecteur vitesse instantanée de la particule en $t_0$

il dirige la tangente à la courbe param en $M(t_0)$

#definition[
  Soit $M: D arrow RR^2, Gamma = {M(t), t in D}, t_0 in D$ le vecteur tangent à $Gamma$ au point $M(t_0)$ et $dot(arrow(r))(t_0) = lim_(h arrow 0) ( arrow(r)(t_0+h)-arrow(r)(t_0))/h = vec(lim_(h arrow 0) (x(t_0+)-x(t_0))/(h), lim_(h arrow 0) (y(t_0+h)-y(t_0))/h)$
]

#rem[
  la pente de la tangente à $Gamma$ en $M(t_0)$ est $(dot(y)(t_0))/(dot(x)(t_0))$
  $dot(y)(t_0) = 0 "et" dot(x)(t_0) != 0$ tangente horizontale

  $dot(y)(t_0) != 0 "et" dot(x)(t_0)= 0$ tangente verticale
]

#exemple[
  $ cases(x(t)=cos(t), y(t)=sin(t)) $
  $ arrow(r)(t) = vec(cos(t),sin(t)) $
  $ dot(arrow(r)) = vec(-sin(t), cos(t)) $
  #tablem(ignore-second-row: false)[
    |t|$-pi$|$-pi/2$|0|$pi/2$|$pi$|
    |$dot(x)$|+|$+0$|-|$-$|0|
    |$dot(y)$|-0|+|+0|-|-|
    |$dot(r)$|$arrow.br$|$arrow.tr$|$arrow.tl$|$arrow.bl$|-|
  ]
]


#definition("Points stationnaires")[
  Soit $M: D arrow RR^2, Gamma = {M(t), t in D}, t_0 in D$
  $M(t_0) in Gamma$ est un point stationnaire si $arrow(dot(r))(t_0) = arrow(0), dot(x)(t_0) = dot(y)(t_0) = 0$

  La pente de la tengente à la courbe en $M(t_0)$ si elle existe
  $lim_(t arrow t_0) (dot(y)(t))/(dot(x)(t)) = lim_(t arrow 0) (y''(t))/(x''(t))$
]

#exemple[
  $M_1(t) = mat(t, t^2)$
  $M_2(t) = mat(t^3, t^4)$
  $arrow(r_1)(t) = vec(t, t^2), dot(arrow(r_1))(t)= vec(1, 2t)$
  Point à Tangente horizontale en $M(0)$

  $dot(arrow(r_2))(t) = vec(3t^2, 6t^5)$
  $dot(x)(0) = dot(y)(0) = 0$
  Point stationnaire en $M(0)$
]

#exemple[
  $x(t)=t^3, y(t) = t^2$
  $=> t= 0$
  $lim_(t arrow 0^-) 2t/3t^2 = -oo$
  $lim_(t arrow 0^+) = +oo$
]

= Branches infinies

$Gamma$ admet une branche infinie lorsque $ t arrow plus.minus oo$ ou $t arrow t_0$
si $norm(arrow(r)(t)) arrow +oo$

si
- $x arrow x_0 in RR, y arrow oo$ $Gamma$ admet une asymptote verticale d'équation $x = x_0$
- $y arrow y_0 in RR, x arrow oo $ $Gamma$ admet une asymptote horizontale d'équation $y=y_0$
- $x arrow oo, y arrow oo$ $Gamma$ peut admettre une asymptote oblique si $lim y/x = a in RR$ et que $y-a x = b in RR$

#exemple[
  $ cases(x(t)=1/(1-t), y(t) = t^2/(1-t)), D = RR\{1} $
  En $-oo$
  $x arrow 0$
  $y arrow +oo$
  Asymptote verticale\

  En $+oo$
  $x arrow 0^-$
  $y arrow -oo$
  Asymptote verticale

  En $1^-$
  $ lim_(t arrow 1^-) x(t) = lim_(t arrow 1^-) y(t) = +oo $
  $ lim_(t arrow 1^-) y/x = t^2 = 1 $
  $ lim_(t arrow 1^-) y-x = -t-1 = -2 $
  Asymptote oblique d'équation $y= x-2$
  même chose en $1^+$
]
