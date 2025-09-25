#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 10",
  subtitle: "05/05/2025",
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

= Fonctions trigonométriques réciproques

Rappel les fonctions trigonométriques ne sont pas surjective et injective

$sin$ est bijective sur $[-pi/2, pi/2] arrow [-1,1]$
il existe donc une fonction réciproque $ arcsin: [-1,1] &arrow [-pi/2, pi/2] \
x &arrow.bar arcsin(x) 
$

$ y=arcsin(x) <=> cases(sin(y) = x, y in [-pi/2, pi/2]) $

Propriété

- $sin(arcsin(x)) =x forall x in [-1,1]$
- $arcsin(sin(x)) != x$ en général sauf si $x in [-pi/2, pi/2]$

$forall a in [-1,1]$ on a
$ sin(x) = a <=> cases(x = arcsin(a) + 2k pi "," k in ZZ, "ou", x = pi - arcsin(a) + 2l pi"," l in ZZ) $

- $arcsin(-x) = -arcsin(x)$

- $cos(arcsin(x)) = sqrt(1-x^2)$
- $forall x in ]-1,1[, arcsin(x)' = 1/sqrt(1-x^2)$

== $arccos=cos^(-1)$
$cos: [0,pi] arrow [-1,1]$ est strictement décroissante et bijective on note $arccos: [-1,1] arrow [0,pi]$ sa fonction réciproque
$arccos(x) = y <=> cases(cos(y)=x, y in [0,pi])$

=== Propriétés

+ $forall x in RR cos(arccos(x)) = x$
+ $arccos(cos(x)) != x $ en général sauf si $x in [0,pi]$
+ $arccos(-x) = pi - arccos(x)$
+ $forall a in [-1,1], cos(x)=a <=> cases(x = arccos(a)+ 2k pi"," k in ZZ, "ou", x = -arccos(a)+ 2k' pi "," k' in ZZ)$
+ $sin(arccos(x)) = sqrt(1-x^2)$
+ $forall x in ]-1,1[, arccos(x)' = -1/sqrt(1-x^2)$

#exemple[
  $arccos(cos(-pi/12))= arccos(cos(pi/12)) = pi/12$
]
\
\
#exemple[
  Résoudre sur $[-3pi/2, -pi/2]$
  $cos(x)>= -3/4$
  On résoud sur $RR$
  $cos(x)>=-3/4 <=> -arccos(-3/4)+2k pi<=x<=arccos(-3/4)+ 2k pi, k in  ZZ$
  On localise

  $ k=0, -arccos(-3/4) in [-pi, -pi/2] $
  $ k=-1, arccos(-3/4) -2pi in [-3pi/2, -pi] $
  $ S = [-arccos(-3/4), -pi/2] union [-3pi/2,arccos(-3/4) -2pi ] $
]

#let arccot = $"arccot"$
== $arctan e t a r c c o t$

#definition[
  $tan: ]-pi/2, pi/2[ arrow RR$ est bijective
  $arctan: RR arrow ]-pi/2, pi/2[$
  $y = arctan(x) <=> cases(tan(y) = x,   y in ]-pi/2"," pi/2 bracket.l) $
]

#definition[
  $cot: ]0,pi[ arrow RR$ bijective
]

Propriétés 1) et 2) analogue

$arctan(-x)=-arctan(x)$
$arccot(-x)= pi -arccot(x)$

$arctan(x)'= 1/(1+x^2)$
$arccot(x)' = -1/(1+x^2)$

#exemple[
  $alpha = arctan(2)+arctan(3)$
  $tan(alpha) = tan(arctan(2) + arctan(3)) = (2+ 3)/(1-2*3) = 5/(-5) = -1$
  $alpha = 3pi/4$
]
