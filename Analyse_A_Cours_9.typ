#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 9",
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


#let cotan = $"cotan"$
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

= Rappel: Fonctions trigonométriques

== Equations trigo élémentaires

$ cos(x) = a, a in RR  $
+ possède une infinité de solutions $<=> a in [-1, 1]$
+ si $cos(x)=cos(alpha)=a, alpha in RR$
+ alors $x = cases(alpha + 2k pi,-alpha + 2k pi)$


$ sin(x) = a, a in RR  $
+ possède une infinité de solutions $<=> a in [-1, 1]$
+ si $sin(x)=sin(alpha)=a, alpha in RR$
+ alors $x = cases(alpha + 2k pi,-alpha + (2k+1) pi)$

== Exemple d'inéquation

#exemple[
  $ sin(x)>= 1/2\
    S = {x in RR | sin(x)>= 1/2}\
    x in S <=> exists k in ZZ "tq" pi/6 + 2k pi<= x <= 5pi/6 + 2k pi\
    => S = union.big_(k in ZZ) ([pi/6 + 2k pi, 5pi/6 + 2k pi])
  $
]

#exemple[
  $ abs(sin(x)) <= 1/2 = sin(pi/6)\
    S = union.big_(k in ZZ) ([-pi/6 + k pi, pi/6 +k pi])

  $
]

== Equations en tangente et cotangente

$ tan(x) = a\
  tan(alpha) = a\
  x = alpha + k pi, k in ZZ
$
$ cotan(x) = a\
  cotan(alpha) = a\
  x = alpha + k pi, k in ZZ
$

#exemple[
  $ tan(3x)<=1 \
    "Soit" y=3x, tan(y) <= 1 = tan(pi/4)
  $
  $
    S_y &= union.big_(k in ZZ)(]-pi/2 + k pi, pi/4 +k pi])\
    S_x &= union.big_(k in ZZ)(]-pi/6 + k pi/3, pi/12 + k pi/3])\
    S_x inter [0, 2pi] &= [0, pi/12] union ]pi/6, 5pi/12] \ &union ]pi/2, 3pi/4] union ]5pi/6, 13pi/12] \ &union ]7pi/6, 17pi/12] union ]3pi/2, 7pi/4] \ &union ]11pi/6,2pi]

  $
]

= Formules trigonométriques

== Formules d'addition

#proposition("Ptolémée")[
  $ cos(alpha+beta) = cos(alpha)cos(beta)-sin(alpha)sin(beta) $
  $ sin(alpha+beta) = cos(alpha)sin(beta)+ sin(alpha)cos(beta) $
]

#proof[
  La matrice de rotation d'angle $alpha$

  $ R_alpha = mat(cos(alpha), -sin(alpha); sin(alpha), cos(alpha)) $

  $ R_alpha R_beta  = R_beta R_alpha = R_(alpha + beta) $
  $ mat(cos(alpha), -sin(alpha); sin(alpha), cos(alpha))  mat(cos(beta), -sin(beta); sin(beta), cos(beta)) = mat(cos(alpha+beta), -sin(alpha+beta); sin(alpha+beta), cos(alpha+beta)) \
  =  mat(cos(alpha)cos(beta)-sin(alpha)sin(beta), -cos(alpha)sin(beta)- sin(alpha)cos(beta); cos(alpha)sin(beta)+ sin(alpha)cos(beta), cos(alpha)cos(beta)-sin(alpha)sin(beta))
  $
]

\

#corollaire[
  $ cos(alpha-beta)= cos(alpha)cos(beta) + sin(alpha)sin(beta) $
  $ sin(alpha-beta) = sin(alpha)cos(beta) - cos(alpha)sin(beta) $
]

#corollaire[
  $ tan(alpha+beta) = (cos(alpha)sin(beta)+sin(alpha)cos(beta))/(cos(alpha)cos(beta)-sin(alpha)sin(beta)), exists.not k in ZZ, alpha+beta = pi/2 + k pi\
    = (cos(alpha)cos(beta)(tan(beta)+tan(alpha)))/(cos(alpha)cos(beta)(1-tan(a)tan(beta))) \
    = (tan(alpha)+tan(beta))/(1-tan(alpha)tan(beta))
  $

  $
    cotan(alpha+beta) = (cotan(alpha) cot(beta) -1)/(cot(alpha)+ cot(beta))
    
  $
]

#corollaire("Duplication")[
  $ cos(2alpha) = cos(alpha)^2 - sin(alpha)^2 $
  $ sin(2alpha) = 2cos(alpha)sin(alpha) $
  $ tan(2alpha) = (2tan(alpha))/(1-tan(alpha)^2) $
  $ cot(2alpha) = (cot(alpha)^2-1)/(2cot(alpha)) $
]

#corollaire[
  $ sin(alpha)-sin(beta) = 2cos((alpha+beta)/2)sin((alpha-beta)/2) $
]

== Factorisation d'équation trigonométrique simples

#exemple[
  Résoudre en $x in RR$
  $ sin(5x)-sin(x) = cos(3x)\
    2cos(3x)sin(2x) = cos(3x)\
    cos(3x)(2sin(2x)-1) = 0\
    cos(3x) = 0 "ou" 2sin(2x)-1 = 0\
    x = cases(pi/6 + k (2pi)/3, pi/2 + k (2pi)/3) "ou" x= cases(pi/12 + k pi, (5pi)/12 + k pi )
  $
]

=== Méthode générale

$ a cos(x) + b sin(x) = c $

#exemple[
  $ 1/2 cos(x)+ sqrt(3)/2 sin(x) = sqrt(2)/2 $
  $ sin(pi/6)cos(x)+cos(pi/6)sin(x) = sqrt(2)/2 $
  $ sin(pi/6 + x) = sin(pi/4) $
  $ => cases(x+pi/6 = pi/4 + k 2pi, x+pi/6 = (3pi)/4 + k 2pi) $
  $ x = cases(pi/12 + k 2pi, 7pi/12 + k 2pi) $
]

$ a/sqrt(a^2+b^2) cos(x) + b/sqrt(a^2+b^2) sin(x) = c/sqrt(a^2+b^2)  $
$ sin(alpha) = a/sqrt(a^2+b^2), cos(alpha) = b/sqrt(a^2+b^2) $
$ sin(alpha+x) = sin(beta) = c/sqrt(a^2+b^2) $
