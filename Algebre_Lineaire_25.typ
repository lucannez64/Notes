#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire 25",
  subtitle: "04/06/2025",
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

= Résume

$ f: RR^2 arrow RR^2, (x,y) arrow.bar (alpha x + beta y, gamma x + delta y) $
$ chi_f (x) = X^2 - tr(f) x + det(f) $
$ Delta = (tr(f))^2 - 4 det(f) $
$ Delta > 0 : chi_f (x) = (x-lambda_1)(x-lambda_2)\ v_1 in ker(f-lambda_1), im(f-lambda_2), v_2 in ker(f-lambda_2), im(f-lambda_1) \
  [f]_B = mat(lambda_1,0;0,lambda_2)
$
$
  Delta = 0 : chi_f (x) = (x-lambda)^2 \
  v_2 in.not ker(f-lambda), (v_2 = (1,0) "ou" v_2 = (0,1))\
  v_1 = (f-lambda)(v_2)\
  [f]_B = mat(lambda, 1; 0, lambda)
$

#exemple[
  $f(x,y) = (5x+3y, -3x-y)$
  $ A_f = mat(5,3;-3,-1)$
  $  chi_f (x) = x^2 - 4x + 4 = (x-2)^2 $
  $ v_2  = (1,0), v_1 = (f-lambda)(1,0) = (5,-3)-2(1,0) = (3,-3) $
  $ f(v_1) = f(3,-3) = (6,-6), f(v_2) = v_1 + 2v_2 $
  $ [f]_B = mat(2,1;0,2) $
]

$ Delta < 0 : chi_f (x) = (x-omega)^2 + mu^2, omega = 1/2 tr(f) \
  v_1 in RR^2^*,v_2 = 1/mu (f-omega)(v_1)\
  [f]_B = mat(omega, -mu; mu, omega) = sqrt(mu^2 + omega^2)mat(cos(theta), -sin(theta); sin(theta), cos(theta))
$
#pagebreak
= Ensemble des représentants

#definition[
Soit $ f: RR^n arrow RR^p, A_f in M_(p times n) (RR)$\
On pose l'ensemble des représentants de $f$

$ {B in M_(p times n) (RR) | B = Q^(-1) A_f P, P,Q "inversibles"} $
$B$ est équivalente à A $<=> B= Q^(-1) A P$\
$B$ est ligne-équivalente à A $<=> B = Q^(-1) A$\
$B$ est colonne-équivalente à A $<=> B=A P$\
]

#proposition[
  $B$ est équivalente à $A$ ssi $rg(A) = rg(B)$\
  $B$ est ligne-équivalente à A ssi $ker(A)=ker(B)$\
  $B$ est colonne-équivalente à A ssi $im(A)=im(B)$\
]

#proof[
  Pour le 3ème cas.\
  Supposons que $B=A P$ 
  $ A = C_1 L_1 + ... + C_r L_r, r=rg(A) $
  $ B = A P = C_1 L_1 P + ...+ C_r L_r P = C_1 L_1 ' + ... + C_r L_r ' \
  => im(A)= vect(C_1,...,C_r) = im(B)
  $

  Supposons que $im(A)=im(B)$
  $ A = C_1 L_1 +... + C_r L_r, B = C_1 L_1 ' + ... + C_r L_r '  $
  On veut trouver $P in M_n (RR)^*$\
  $ L_1 P = L_1 ', ..., L_r P = L_r '$
]

#exemple[
  $A = mat(1,2;3,6), B = mat(1,2;1,2)$
  $ mat(1,0; -1, 1)  mat(1,2;3,6) mat(1, -1;0,1)  $
  $B_d = {(1,0), (-1,1)}, B_a = {(1,1), (0,1)}$
]
