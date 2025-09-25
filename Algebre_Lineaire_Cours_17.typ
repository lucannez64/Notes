#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 17",
  subtitle: "30/04/2025",
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

#let vect = $v e c t$
#let rg = $r g$
#let Tr = $T r$
#outline()

= Exemple de rappel

#exemple[
  Soient une droite de $vect(1,1,2)$ et un plan $Pi: x-2y+3z = 0$\
  On a que $f+g=id_(RR^3), rg(g)=1$\
  Donc $A_g = vec(1,1,2) mat(1,-2,3)$
  $tr(A_g)=1$

  Comme $f=id_(RR^3), A_f = bb(1)_3 - A_g$
  $ => A_f = 1/5 mat(4,2,-3;-1,7,-3;-2,4,-1) $
  Check:
  $ A_f^2 = A_f, Tr(A_f)=2, A_f vec(1,1,2) = vec(0,0,0) $
] 

= Symétries

#definition[
  Une symétrie dans $RR^n$ est une application linéaire $f: RR^n arrow RR^n$ tq $ f compose f = id_(RR^n) $
]

#proposition[
  $f$ est une symétrie
  $ <=> 1/2(bb(1) + f) = g "est une projection" $
]

#proof[
  $ 1/2(bb(1)+f) = 1/4(bb(1)+2f + f compose f)\
    <=> bb(1) = f compose f 
  $
  Si $n=2$
  - $rg(g) = 0$ $f=-id$, miroir: $(0,0)$, lumière vers $(0,0)$
  - $rg(g)= 2$ $f = id_2$, miroir: $RR^2$, lumière $(0,0)$
  - $rg(g) = 1$ 
  Si $n=3$i $g = 1/2(bb(1)+ f)=g^2$
  - $rg(g)= 0$ $f=-id$, miroir: $(0,0,0)$, lumière vers $(0,0,0)$
  - $rg(g) = 3$ $f=id$, miroir: $RR^3$
]


#exemple[
  $ 2x+y= 0 $ (miroir)
  $ x-5y = 0 $ (lumière)
  $ g = 1/2 (bb(1) + f) = g^2 $
  $ A_g = 1/11 mat(1,-5;-2, 10) $
  $ A_f = 2A_g - bb(1) = 1/11 mat(-9,-10;-4,9) $
  $ A_f^2 = 1/121 mat(121, 0;0, 121) = bb(1) $
]

#exemple[
  Soit $f: RR^3 arrow RR^3$
  $ (x,y,z) arrow.bar 1/5(4x-2y-7z, -x+3y-7z, -x-2y-2z) $
  $ A_f = 1/5 mat(4, -2,-7; -1,3,-7; -1,-2,-2) $
  $ A_f^2 = 1/25 mat(25, 0, 0; 0,25,0;0,0,25) = bb(1) $
  Donc $f$ est une symétrie
  $ A_g = 1/2(1/5 mat(4,-2,-7;-1,3,-7;-1,-2,-2) + 1/5 mat(5,0,0;0,5,0;0,0,5))\
    = 1/10 mat(9, -2, -7; -1,8,-7;-1, -2 , 3)
  $

  $ bb(1)-A_g = 1/10 vec(1,1,1) mat(1,2,7) $
  Donc "mirroir" de $f: x+2y+7z = 0$
  "direction lumière de " $f: (1,1,1)$ 

]
