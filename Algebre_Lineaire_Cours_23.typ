#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 23",
  subtitle: "21/05/2025",
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
 
= Réductions dans $RR^2$

#theorem("Cayley-Hamilton")[
  $ chi_f (A) = bb(0)_2  $
]

#proof[
  Directement (dans $RR^2$) (exos)
  $ chi_f (A) = A^2-tr(f)A + det(f)  $
]

== Cas $Delta > 0$
$ chi_f(X) = (X-lambda_1)(X-lambda_2) $
$ "C-H" => chi_f (A) = bb(0)_2 = (A-lambda_1 bb(1))(A-lambda_2 bb(1)) $
Donc $ (A_f - lambda_1)(A_f-lambda_2) vec(x,y) = vec(0,0)\
    (A_f -lambda_1) vec(x',y')  = vec(0,0)\
    => A_f vec(x',y') = lambda_1 vec(x',y')\
    => (A_f -lambda_2)vec(x,y) "est un vecteur propre pour" lambda_1
 $
De manière analogue $(A_f-lambda_1)vec(x,y) "est un vecteur propre pour " lambda_2 $

#exemple[
  $f(x,y) = 1/4(5x+9y, 3x-y)$
  $A_f = 1/4 mat(5,9; 3,-1)$
  $ chi_f (X) = X^2-X-2  $
  $ Delta = 9, lambda_1 = 2, lambda_2 = -1 $
  $ chi_f (X) = (X+1)(X-2) $
  $ (1/4 mat(5,9;3,-1) + bb(1)) (1/4 mat(5,9;3,-1) - 2bb(1)) \
    = 1/16 (mat(9,9;3,3))(mat(-3,9;3,-9))
    = mat(0,0;0,0)
  $
  $ vec(x,y) = vec(1,0), mat(-3,9;3,-9)vec(1,0) = vec(-3,3) "vecteur propre pour " lambda_1 $ 
  $ mat(9,9;3,3) vec(1,0) = vec(9,3) "vecteur propre pour " lambda_2 $ \ 
  Check:
  $ 1/4 mat(5,9;3,-1) vec(-3,3) = 1/4 vec(12, -12) = -1 vec(-3,3) $
  $ 1/4 mat(5,9;3,-1) vec(9,3) = 1/4 vec(72,24) = vec(18,6) = 2 vec(9,3) $
  $ f(-3,3) = (3,-3), f(9,3) = (18,6)\
      => [f]_B = mat(-1,0; 0,2), B=(-3,3), (9,3)

  $
]

== Cas $Delta = 0$

$ chi_f (X) = (X-lambda)^2\
  chi_f (A) = (A-lambda bb(1))^2 = bb(0)_2\
$

Pour $vec(x,y)$, $vec(x',y') = (A_f-lambda bb(1)) vec(x,y)$\ \
+ si $vec(x',y') = vec(0,0)$ alors $vec(x,y)$ est un vecteur propre pour $lambda$
+ sinon $(A_f-lambda)vec(x',y') = (A_f-lambda)^2 vec(x,y) = vec(0,0)$ est un vecteur propre pour $lambda$ 

On choisis comme base $v_1 in RR^2$ pas vecteur propre de $f$ et $v_2 = (f-lambda)(v_1)$

$ f(v_1) = v_2 + lambda v_1, f(v_2) = lambda v_2, B= v_1,v_2\
  => [f]_B = mat(lambda, 0; 1,lambda) "triangulaire inférieure"\
  B' = v_2,v_1\
  => [f]_B' = mat(lambda,1;0, lambda) "triangulaire supérieure"
$

#exemple[
  $f(x,y) = (5x+3y, -3x-y), lambda=2$ est une valeur propre de multiplicté $2$\
  $v_1 = (1,0), v_2 = (f-lambda id) (v_1) = (5,-3) - (2,0) = (3,-3)$\
  Check: $f(3,-3)=(6,-6) = 2(3,-3)$
  $f(1,0)=(3,-3)+2(1,0)$\
  $ B=v_1,v_2, [f]_B = mat(2, 0;1,2)\
    B'=v_2,v_2, [f]_B' = mat(2,1;0,2)
  $
]

#rem[
  Si $chi_f (X) = (X-lambda)^2$ et si $B=v_1,v_2$ est une base propre pour $f$
  alors $f(v_1)=lambda v_1$ et $f(v_2)= lambda v_2$
  $ => [f]_B = lambda bb(1) => P^(-1) [f]_B P = lambda bb(1) $
]

== Cas $Delta < 0$

$ chi_f (X) = (X-lambda)^2 + mu^2 $
$ chi_f (A) = (A_f-lambda)^2+ mu^2 = bb(0) $

prenons $v_1 in RR^2, v_2 = 1/mu (f-lambda) (v_1)$
$ f(v_1) &= mu v_2 +lambda v_1,\
  f(v_2) &= 1/mu f(f-lambda)(v_1)\
  &= 1/mu (f-lambda)^2 (v_1) + 1/mu lambda(f-lambda)(v_1)\
  &= -mu v_1 + lambda v_2 \
  B&=v_1,v_2 \ => [f]_B &= mat(lambda, -mu; mu, lambda)\
  &= sqrt(lambda^2+mu^2) mat(cos(theta), -sin(theta); sin(theta), cos(theta))\ theta &= arccos(lambda/sqrt(lambda^2+mu^2))
$

#exemple[
  $f(x,y)=(3x+4y,-2x-y)$
  $ A_f = mat(3,4;-2,-1), chi_f (X) = X^2-2x +5 = (X-1)^2 +4 $
  $ v_1 = (0, 1), v_2 = 1/2(f-1)(v_1) = (2,-1), B=v_1,v_2 $
  $ f(v_1) = (4,-1) = 2 (2,-1) + (0,1), f(v_2) = (2,-3) = -2(0,1) + (2,-1)   $
  $ [f]_B = mat(1,-2;2,1) = sqrt(5) mat(1/sqrt(5), -2/sqrt(5); 2/sqrt(5), 1/sqrt(5))\
    approx sqrt(5) mat(cos(72°), -sin(72°); sin(72°), cos(72°))
  $
]

