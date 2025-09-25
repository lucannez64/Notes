#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 19",
  subtitle: "07/05/2025",
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

= Rappel

== Rotation

$ A_f = mat(cos(alpha), -sin(alpha); sin(alpha), cos(alpha)) $

$alpha$ est l'angle de rotation

== Réflexion

#let vect = "vect"
$ A_f = mat(cos(theta), sin(theta), sin(theta), -cos(theta)) $
Réflexion orthogonal par rapport à l'axe $vect(cos(theta/2), sin(theta/2))$

#exemple[
  Réflexion par rapport à l'axe $x+2y = 0$

  Méthode 1:
  On pose $phi=theta/2$
  $ cases(cos(phi)=2/sqrt(5), sin(phi)=(-1)/sqrt(5)) $
  $ => cases(cos(theta)=cos(phi)^2-sin(phi)^2= 3/5, sin(theta)=2cos(phi)sin(phi)=-4/5 ) $
  $ => A_f=mat(3/5,-4/5;-4/5,-3/5) $
  Verification
  $ A_f vec(1,2) = 1/5 mat(3,-4;-4,-3) vec(1,2) = vec(-1,-2)  $
  $ A_f vec(2,-1) = 1/5 mat(3,-4;-4,-3) vec(2,-1) = vec(2,-1) $
  $ A_f^2 = 1/25 mat(3,-4;-4,-3) mat(3,-4;-4,-3) = 1/25 mat(25,0;0,25) $
  Méthode 2:
  $ f(x,y)=(cos(theta)x+sin(theta)y, sin(theta)x -cos(theta)y) $
  $ f(2,-1) = (2,-1) $
  $ (2cos(theta)-sin(theta), 2sin(theta)+cos(theta)) = (2,-1) $
  $ <=> cases(4cos(theta)-2sin(theta) = 4, 2sin(theta) + cos(theta) = -1) $
  $ <=> cases(5cos(theta) = 3, 2cos(theta)-sin(theta) = 2) $
  $ <=> cases(cos(theta)= 3/5, sin(theta)= -4/5) $
  $ => A_f = mat(3/5,-4/5;-4/5, -3/5) $
  Méthode 3:
  projecteur associé
  $ 1/2(bb(1)+A_f) = P_("mirroir")= 1/5 vec(2,-1) mat(2,-1) = 1/5 mat(4,-2;-2,1) $
  $ => 1/5 mat(3,-2;-2,-3) $
]

= Billard

On vise le point $f(8,1) = mat(3/5 8 -4/5, -4/5 8 -3/5)=mat(4,-7) $

On calcule le point $I$ intersection de $(-4,5), (4,-7) $) $)$

#lemma[
  $omega_0, omega_1 in RR^n$ le segment de droite entre $omega_0$ et $omega_1$ est donné par $(1-t)omega_0 + t omega_1, t in [0,1]$
]

$I in (1-t)mat(-4,5)+t mat(4,-7) = (-4,5)+t(8,-12)=mat(8t-4,5-12t)$

$ 8t-4+10-24t = 0 <=> -16t +6 = 0 <=> t = 3/8 $
$ I = (-1,1/2) $

= Billard à 2 bandes

Viser $P''$ avec $(-4,5)$

$ P' = g(3,9) = (9,3) $
$ P''= f(P')= f(g(3,9)) = f(9,3) = (3,-9) $
$ I_1 (-4,5)+ t((3,-9)+(4,-5)) = (-4+7t, 5-14t) $
$ (-4+7t)+2(5-14t)= 0 $
$ <=> t = 6/21 = 2/7 $
$ I_1(-2,1) $
$ I_2 in (1-t)(-2,1)+t(3,9) = (5t-2,1+8t) $
$ I_2 in x=y $
$ 5t-2 = 1+8t $
$ t= -1 $
$ I_2 (-7,-7) $
