#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4"
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 18",
  subtitle: "01/05/2025",
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

= Rappel sur la trigonométrie

#figure[
  #image("cetz_test.svg")
]

$ v_theta =  (cos(theta), sin(theta)) $
Après une rotation de $pi/2$
$ v_(theta+pi/2) = (-sin(theta), cos(theta)) $
Après une seconde rotation de $pi/2$
$ v_(theta+pi) = (-cos(theta), -sin(theta))  $
Après une troisième rotation de $pi/2$
$ v_(theta+ (3pi)/2) = (sin(theta), -cos(theta)) $

= Rotations dans $RR^2$

#definition[
  Une rotation dans $RR^2$, autour de $(0,0)$ d'un angle $theta$ est une application linéaire
  tel que $ A_R_(theta) = mat(cos(theta), -sin(theta) ; sin(theta), cos(theta)) $
  $ R_theta(x,y) &= mat(cos(theta)x - sin(theta)y, sin(theta)x + cos(theta)y ) \
    &= x mat(cos(theta), sin(theta)) + y(-sin(theta), cos(theta))
  $
]


#exemple[
  - $theta = 0, A_R_theta = bb(1)$
  - $theta = pi/2, A_R_theta = mat(0,-1;1,0)$
  - $ A^2_R_(pi/2) = mat(-1, 0; 0, -1)$
  On  peut donc voir $ mat(0,-1;1,0)$ comme $i$
  donc $mat(a,-b;b,a)$ représente un nombre complexe $z = a+i b$

  - $theta = -pi/3, A_R_theta = mat(1/2,sqrt(3)/2; -sqrt(3)/2, 1/2)$

  Si $A_f = mat(a,-b; b, a)$ et $a^2 + b^2 = 1$, alors $(a,b) in Gamma(0,1), exists theta in ]-pi, pi] "tq" a= cos(theta), b = sin(theta)$
  - $A=mat(3/5, -4/5; 4/5, 3/5)$ on a $(3/5)^2+(4/5)^2 = 1$ donc $exists theta$ tq $3/5 = cos(theta), 4/5 = sin(theta), theta approx 53.13°$
]

= Réflexions

#definition[
  Une rélexion est une application linéaire $f: RR^2 arrow RR^2$ tel que $ A_f = mat(cos(theta), sin(theta); sin(theta), -cos(theta)) $
]

#proof[
  $ A^2_f = mat(cos(theta), sin(theta); sin(theta), -cos(theta)) mat(cos(theta), sin(theta); sin(theta), -cos(theta)) = mat(cos(theta)^2+sin(theta)^2,0;0,cos(theta)^2+sin(theta)^2) = bb(1) $
  donc $f$ est une symétrie\
  miroir: $ 1/2 (bb(1)+ A_f) &= mat((1+cos(theta))/2, sin(theta)/2; sin(theta)/2, (1-cos(theta))/2) \
    &= mat(cos(theta/2)^2, sin(theta/2)cos(theta/2); sin(theta/2)cos(theta/2), sin(theta/2)^2 )\
    &= vec(cos(theta/2),sin(theta/2)) mat(cos(theta/2), sin(theta/2))
  $
  Donc le mirroir est $v e c t mat(cos(theta/2), sin(theta/2))$ \
  La lumière: $cos(theta/2)x + sin(theta/2)y = 0, v e c t mat(-sin(theta/2), cos(theta/2)) $
]

= Retour sur les exercices sur les symétries
Si $f$ est une symétrie
$ker(1-f), im(1+f)$

projection sur le miroir: $1/2 (1+f)$

miroir: $im(1/2 (1+f)) = im(1+f) = ker(1/2(1-f)) = ker(1-f)$

lumière: $ker(1/2(1+f)) = ker(1+f) = im(1/2(1-f)) = im(1-f)$

Le rang de $1/2(A)= r g(A) = r g(lambda A)$
