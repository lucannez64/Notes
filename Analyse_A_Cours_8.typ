#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 8",
  subtitle: "14/04/2025",
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
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = definition-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
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

= Inéquation radicielle

#proposition[
  $f,g : D arrow RR$ \
  $ sqrt(f(x)) <= g(x) <=>  cases(f(x)<= g(x)^2, g(x) >= 0) $
  $ sqrt(f(x)) >= g(x) <=> f(x)>= g(x)^2 "ou" g(x) <= 0 $
]

#exemple[
  $ sqrt(6-x)<= 3+2x $
  $ D_(d é f) = ]-oo, 6], D_(p o s) (g) = [-3/2, +oo[ $
  $ 6-x <= 9+12x+4x^2 $
  $ <=> 0 <= 4x^2 +13x + 3 $
  $ S_(5) = ]-oo,-3[ union[-1/4,+oo[ $
  $ S_(3) = [-1/4, 6] $ 
]

#exemple[
  $ sqrt(x^2 - abs(3x + 4))<= x-2  $
  $ D_(d é f) = {x in RR|x^2 >= abs(3x+4)} $
  $ <=> cases(x^2 >= 3x+4, 3x+4 >= -x^2) $
  $ <=> cases( (x-4)(x+1) >= 0) $
  $ D_(d é f) = ]-oo,-1] union [4, +oo[ $
  $ D_(p o s) (g) = [2, +oo] $
  $ x <= 8 "ou" x<= 0 $
  $ S = (]-oo, 8] union ]-oo, 0]) inter (]-oo, -1] union [4, +oo]) inter [2, +oo[ $
  $ S = [4, 8] $ 
]

= Trigonométrie 

== Rappels
$ C = {(x,y) in RR^2 | x^2+y^2= 1 } $

#figure(
  image("cetz_test.svg"),
  caption: [
    Cercle C
  ]
)

#definition[
  $ cos: RR &arrow RR\ alpha &arrow.bar cos(alpha)\ sin: RR &arrow RR \ alpha &arrow.bar sin(alpha) $
]

#rem[
  + Sont définis sur $RR$
  + elles ne sont pas injectives car elles sont $2pi-"périodiques"$
  + ne sont pas monotones
  + ne sont pas surjectives
  + cos est une fonction paire et sin et impaire
]

== Tangente et cotangente
#definition[
  $ forall alpha in RR "tq" alpha != pi/2 + k pi $
  $ "càd" alpha in RR "tq" P(alpha) != (plus.minus 1,0) $
  Voir figure 1
  De manière analogue cotangente est défini
  $ forall alpha in RR "tq" alpha != k pi $
]

== Equations trigonométriques

#proposition[
$ cos(x) = a $
+ admet une infinité de solution $<=> a in [-1,1]$
+ $D_(d é f) = RR$
+ Trouver un $alpha in RR$ tq $ cos(alpha) = a$
+ $(23) <=> cos(x) = cos(alpha) <=> x = alpha + 2k pi, k in ZZ "ou" x = -alpha + 2k' pi, k' in ZZ$
]

#exemple[
  $ cos(x) = -1/2, \ x in [-pi, pi] $
  $ cos(2pi/3) = -1/2 $
  $ S_(24.1) = {2pi/3 + k 2pi | k in ZZ} union  {-2pi/3 + k' 2pi | k' in ZZ} $
  $ S_(24) = S_(24.1) inter [0,2pi] = {-2pi/3, 2pi/3} $
]

#exemple[
  $ cos(3x) = 1/2 \ x in [0,2pi] $ 
  $ y = 3x\ cos(y)= 1/2 \ cos(y) = cos(pi/3) $
  $ <=> S_(29.3) = {pi/3+k 2pi "ou" -pi/3 + k 2pi, k in ZZ } $
  $ S_(28.1) = { pi/9 + k 2pi/3 "ou" -pi/9 + k 2pi/3, k in ZZ} $
  $ S_(28) = S_(28.1) inter [0,2pi] = {pi/9 + k 2pi/3 | k in bracket.l.double 0, 2 bracket.r.double } union { -pi/9 + k 2pi/3| k in bracket.l.double 1, 3 bracket.r.double } $
]
