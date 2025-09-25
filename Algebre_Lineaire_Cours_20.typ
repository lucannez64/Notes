#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 20",
  subtitle: "08/05/2025",
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
#let vect = $"vect"$
#let can = $"can"$

= Représentations matricielles d'une application linéaire $f: RR^n arrow RR^p$

== Matrices représentatives

#definition[
  Soit $f: RR^n arrow RR^p$,
  $A_f in M_(p times n) (RR)$\
  Soient $B = v_1,dots.h, v_n$ et $B' = v_1',dots.h, v_p'$ deux bases de $RR^n$ et $RR^p$ respectivement \
  On a les matrices de changement de bases :
  $ P=mat([v_1]_B_(can)|...|[v_n]_B_can), P' = mat([v'_1]_B_can|...|[v'_p]_B_can) $
  $ #diagram($RR^n edge(f, ->) & RR^p$) $
  $ #diagram(
  
	  node-corner-radius: 4pt,
    node((0,0), $[v]_B_can$),
  	node((1,0), $[f(v)]_B_can$),
  	node((0,1), $[v]_B$),
  	node((1,1), $[f(v)]_B'$),
  	edge((0,0), (1,0), "->", $A_f$),
  	edge((0,1), (1,1), "->", $P'^(-1)A_f P$),
  	edge((0,1), (0,0), "->", $P$),
  	edge((1,0), (1,1), "->", $P'^(-1)$),
  ) $
  \
  La matrice qui représente $f$ en bases $B$ au départ et $B'$ à l'arrivée est donnée par $ [f]_(B,B') = P'^(-1)A_f P $
]

#rem[
  $B'=B_can, B=B_can$ \
  $A_f = [f]_(B_can,B_can)$
]

#rem[
  $A_f = P'[f]_(B,B')P^(-1)$
]

#proposition[
  $[f(v)]_B' = [f]_(B,B') [v]_B$
]

#proof[
  $[f(v)]_B' = P'^(-1)[f(v)]_B_can = P'^(-1) A_f [v]_B_can = P'^(-1) A_f P [v]_B = [f]_(B,B') [v]_B$
]

#let rg = $"rg"$

== Invariants

#proposition[
  $ rg([f]_(B,B')) = rg(A_f) = rg(f) $
]

#proposition[
 $ det([f]_(B,B')) = det(A_f) $
]

#exemple[
  
  $ #diagram(
  
	  node-corner-radius: 4pt,
    node((0,0), $vec(x,y)$),
  	node((2,0), $vec(2x-y,-6x+3y)$),
  	node((0,2), $(3,4),(2,1)$),
  	node((2,2), $(1,-1),(-3,2)$),
  	edge((0,0), (2,0), "->", $mat(2,-1;-6,3)$),
  	edge((0,2), (2,2), "->", $mat(1,-3;-1,2)^(-1)mat(2,-1;-6,3)mat(3,2;4,1)$),
  	edge((0,2), (0,0), "->", $mat(3,2;4,1)$),
  	edge((2,0), (2,2), "->", $mat(1,-3;-1,2)^(-1)$),
  ) $

  $ [f]_(B,B')= -mat(2,3;1,1) mat(2,3;-6,-9) = mat(14,21;4,6) \
    = vec(7,2) mat(2,3) \
    [(3,4)]_B = vec(1,0) , [(2,1)]_B = vec(0,1)\
    [f]_(B,B') [(3,4)]_B = vec(14,4) = [f(3,4)]_B'\
    [f(3,4)]_B' = [(2,-6)]_B'\
    14 vec(1,-1) + 4 vec(-3,2) = vec(14-12,-14+8) = vec(2,-6)\
    [f]_(B,B') [(2,1)]_B = vec(21,6) = [f(2,1)]_B' = [(3,-9)]_B'\
    21(1,-1) + 6(-3,2) = (21-18, -21+12) = (3,-9) 
  $
]
