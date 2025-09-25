#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 22",
  subtitle: "15/05/2025",
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
#let rg = $"rg"$
#let can = $"can"$
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
  )
$

= Réduction d'applications linéaires $f: RR^2 arrow RR^2$

#definition("Réduction")[
  Trouver une base $B$ de $RR^2$ tq, $[f]_(B,B) = [f]_B = R$ avec $R$ diagonal ou de rotation.\
  $R = P^(-1) A_f P, P= P_(B_can) arrow B$
]
== Polynôme charatéristique
#definition("Polynôme charactéristique")[
  Le polynôme charactéristique associée à $f$ linéaire,
  est $ chi_f (x) = det(A_f - bb(1)_2 x) $
]

Si $f: (x,y) arrow.bar (a x+b y, c x + d y)$
$ A_f = mat(a,b;c,d) $

$ det(A_f-bb(1)x) = det mat(a-x,b;c,d-x) = x^2 - (a+d) x + (a d - b c) \
  = x^2 - tr(f)x + det(f)
$

#definition("Valeurs Propres")[
  Les racines de $ chi_f (x)$ sont appelés les valeurs propres de $f$
]

$ Delta = tr(f)^2 - 4 det(f) $

$ cases(Delta<0 "," chi(x)=0 <=> x in emptyset, Delta = 0 "," chi(x) = (x-lambda)^2 , Delta>0 "," chi(x) = (x-lambda_1)(x-lambda_2)) $

#exemple[
  $ A_f = 1/4 mat(5,9;3,-1)\
    chi_f (x) = x^2 -x - 2\
     = (x-2)(x+1)
  $
  $f$ possède $2$ valeurs propres $lambda_2 = -1, lambda_1 = 2$
]

== Vecteurs et valeurs propres

#definition("Vecteurs propres")[
  On dit qu'un vecteur $v in RR^2 without {(0,0)}$ est une vecteur propre pour $f$ associé à la valeur propre $lambda$ pour $f$ ssi
  $f(v) = lambda v$
]

#proposition[
  On a les équivalences suivantes:
  + $0 != v, f(v) = lambda v$
  + $chi_f (lambda) = 0, v in ker(f-lambda id_(RR^2))$
]

#proof[
  Si $ v!=0, f(v) = lambda v\
  <=> f(v) - lambda v = 0 \
  <=>  (f-lambda id) (v) = 0 \
  <=> v in ker(f-lambda id) "et" det(f - lambda id) = 0\
  <=> v in ker(f-lambda id) "et" chi_f (x) = 0
  $ 
]

#exemple[
  Deux valeurs propres distinctes $ lambda_1 = 2, lambda_2 = -1 $\
  $ v_1 in ker(f - 2 id), v_2 in ker(f+id) $
  $ A_(f-2id) = 1/4 mat(-3,9;3,-9) = 1/4 vec(-3,3) mat(1,-3) $
  $ A_(f+id) = 1/4 mat(9,9;3,3) = 1/4 vec(9,3) mat(1,1) $
  $ ker(f-2id): x-3y=0 <=> v_1= (3,1) $
  $ ker(f+id): x+y= 0 <=> v_2 = (1,-1) $
  $ f(3,1) = (6, 2)= 2(3,1) $
  $ f(1,-1) = (-1, 1) = -1 (1,-1) $
  Soit la base $B = (3,1), (1,-1)$
  $[f]_B = mat(2,0;0,-1)$\
  $P = mat(3,1;1,-1), P^(-1) = -1/4 mat(-1,-1;-1,3)$
  $ P^(-1) A_f P &= -1/16 mat(-1,-1;-1,3) mat(5,9;3,-1)mat(3,1;1,-1)\
   &= -1/16 mat(-1,-1;-1,3) mat(24,-4;8,4)\
   &= 1/16 mat(32,0; 0, -16)\
   &= mat(2,0;0,-1)

  $
]

== Cas $Delta >0$
#proposition[
  $exists$ des bases propres formée de vecteurs propres pour $f$ tq
  $ [f]_B = mat(lambda_1,0;0,lambda_2) $
]

#proof[
  Si $f$ possède deux valeurs propres $lambda_1,lambda_2$ et
  $v_1, v_2$ deux vecteurs propres associés\
  $f(v_1) = lambda_1 v_1, f(v_2) = lambda_2 v_2 $  
  $v_1$ n'est pas colinéaire à $v_2$
  car si $ v_1= alpha v_2, f(v_1) = alpha lambda_2 v_2 = lambda_1 v_1 = alpha lambda_1 v_2 <=> lambda_1 = lambda_2 arrow.zigzag $ 
  Donc $B=v_1,v_2$ est une base
  $ [f]_B = mat([f(v_1)]_B, [f(v_2)]_B)\ = mat(lambda_1,0;0,lambda_2) $ 
]

#proposition[
  $ (f-lambda_1 id)/(lambda_2 - lambda_1) $ projette sur $vect(v_2)$ le long de $vect(v_1)$
  $ (f-lambda_2 id)/(lambda_1 - lambda_2) $ projette sur $vect(v_1)$ le long de $vect(v_2)$
]

#proof[
  $ [(f-lambda_1 id)/(lambda_2-lambda_1)]_B^2 = (1/(lambda_2-lambda_1) mat(0,0;0,lambda_2-lambda_1))^2 = mat(0,0;0,1)  $
  qui projette sur $vect(v_2)$ le long de $vect(v_1)$

  $ [(f-lambda_2 id)/(lambda_1-lambda_2)]_B^2 = (1/(lambda_1-lambda_2) mat(lambda_1-lambda_2,0;0,0))^2 = mat(1,0;0,0)  $
  qui projette sur $vect(v_1)$ le long de $vect(v_2)$
]
