#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 15",
  subtitle: "16/04/2025",
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

#let rg = $r g$

#outline()

= Structure vectorielle
Soient $f: RR^2 arrow RR^2, g: RR^2 arrow RR^2$ deux applications linéaires. \
On leur associe $ A_f = mat(alpha_11,alpha_12; alpha_21, alpha_22), A_g = mat(beta_11,beta_12; beta_21, beta_22) $ 

$ lambda f(x,y) = (lambda alpha_11x + lambda alpha_12y, lambda alpha_21x + lambda alpha_22y) \
  A_(lambda f) = lambda mat(alpha_11,alpha_12; alpha_21, alpha_22) = lambda A_f
$

$
  (f+g)(x,y) &= f(x,y) + g(x,y) \
  &=  (alpha_11x+ alpha_12y, alpha_21x+ alpha_22y) \
  &+ (beta_11x+ beta_12y, beta_21x+ beta_22y) \
  &= ((alpha_11+beta_11)x + (alpha_12+beta_12)y, (alpha_21+beta_21)x + (alpha_22+beta_22)y) \
  &=> A_(f+g) = A_f + A_g
$

#proposition[
  $ r g(lambda f) = cases( 0 "si" lambda = 0, r g(lambda) "si" lambda != 0) $
]

#proof[
  Si $r g(lambda) = r$, \
  $A_f = C_1 L_1 + dots.h + C_r L_r $ est une décomposition minimale de $A_f$ \
  Comme $A_(lambda f) = lambda A_f$
  $ A_(lambda f) = lambda(C_1 L_1 + dots.h + C_r L_r)$ est une déomposition minimale si $lambda != 0$ 
]

#proposition[
$ r g(f + g) <= r g(f) + r g(g) $
]

#proof[
  Si $r g(f) = r "et" r g(g) = s$ \
  $A_f = sum_(k=1)^r (C_k L_k)$ minimale \
  $A_g = sum_(k=1)^s (C'_k L'_k)$ minimale \
  $ A_(f+g) = sum_(k=1)^r (C_k L_k) + sum_(k=1)^s (C'_k L'_k) \
    => r g(f+g) <= r+s
  $ 
]

#rem[
  Pas de formule générale pour $r g(f+g)$
]

#proposition[
  $ det(lambda f) = lambda^n det(f) $
]

#rem[
  Pas de formule générale pour $det(f+g)$
]

#exemple[
  $ mat(1,2;3,5) &= &mat(1,0;3,0) &+ &mat(0,2;0,5)\
    r g(2) &, &r g(1) &, &r g(1)
  $

  $ mat(1,2;3,6) &= &mat(1,0;3,0) &+ &mat(0,2;0,6)\
    r g(1) &, &r g(1) &, &r g(1)
  $


  $ mat(0,0;0,0) &= &mat(1,0;0,1) &- &mat(1,0;0,1)\
    r g(0) &, &r g(2) &, &r g(2)
  $
]

= Composition

#definition[
  Soit $f: RR^n arrow RR^m, g: RR^p arrow RR^n,$
  $f compose g: RR^p arrow RR^m$ \
  On leur associe $ A_f in M_(m times n) (RR), A_g in M_(n times p) (RR) $ 
  et $ A_(f compose g) = A_f dot A_g $
  si $n=m=p=2$
  $ A_f = mat(alpha_11,alpha_12; alpha_21, alpha_22), A_g = mat(beta_11,beta_12; beta_21, beta_22) $ 
  $ (f compose g) (x,y) &= f(g(x,y)) \  &= f(beta_11x + beta_12y, beta_21x + beta_22y ) \
    &= (alpha_11 (beta_11x + beta_12y) + alpha_12 (beta_21x + beta_22y) \ &, alpha_21 (beta_11x + beta_12y) + alpha_22 (beta_21x+beta_22y)) \
    &= ((alpha_11 beta_11 + alpha_12 beta_21)x + (alpha_11 beta_12 + alpha_12 beta_22)y, dots.h) \
    &= A_f A_g vec(x,y)
  $
]

#proposition[
  $rg(f compose g) <= rg(f), rg(g)$ \
  $rg(f compose g) = rg(f) "si" g^(-1) "existe" $ \
  $rg(f compose g) = rg(g) "si" f^(-1) "existe" $
]

#proof[
  Si $rg(f) = r, rg(g) =s$\
  alors $ A_f &= sum_(k=1)^r (C_k L_k) \
    A_g &= sum_(k=1)^s (C'_k L'_k)
  $

  $ A_f A_g &= A_(f compose g)\
    &= A_f sum_(k=1)^s (C'_k L_k) \
    &= (sum_(k=1)^r (C_k L_k)) A_g \
    &= sum_(k=1)^s (C''_k L'_k) \
    &= sum_(k=1)^r (C_k L''_k)\
    &=> rg(A_f A_g) <= s,r
  $

  Si $g^(-1)$ existe, $A_(g^(-1)) = (A_g)^(-1) $
  $ rg(A_f) = rg(A_f bb(1)) = rg(A_f A_g A_g^(-1)) <= rg(A_f A_g) <= rg(A_f) \
    => rg(A_f A_g) = rg(A_f)
  $
  Si $f^(-1)$ existe, $A_(f^(-1)) = (A_f)^(-1) $

  $ rg(A_g) = rg(bb(1)A_g) = rg(A_f^(-1) A_f A_g) <= rg(A_f A_g) <= rg(A_g) \
    => rg(A_f A_g) = rg(A_g)
  $
]

#proposition[
  $det(f compose g ) = det(f) det(g)$
]

#proof[
  Pour $n=2$ \
  $ det mat(a,b;c,d) &= det(a mat(1,0;0,0) + b mat(0,1;0,0) + c mat(0,0;1,0) + d mat(0,0;0,1) )\
    &= det( mat(a,0;0,d) + mat(0,b;c,0) ) \
    & = a d - b c
  $
  On voit que le déterminant a comme propriétés
  + $det(C_1 | C_2)= -det(C_2 | C_1)$
  + $det(C_1 + lambda C_2| C_2)= det(C_1 | C_2)$
  + $det(C_1 | C_2+ lambda C_1)= det(C_1 | C_2)$
  + $det(bb(1)) = 1$, il n'y a qu'une seule fonction possible sur $M_2(RR)$
  si
  $ B arrow &det(A B), A "fixé"\ &det(A C_1|A C_2) \ bb(1) arrow &det(A bb(1)) = det(A) $
  Mais $B arrow det(A)det(B)$ a exactement les mêmes propriétés\
  Par unicité $ det(A B) = det(A)det(B)$
]
