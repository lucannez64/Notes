#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 16",
  subtitle: "17/04/2025",
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

= Transformations Géometriques dans $RR^2$ et $RR^3$

== Projections

#definition[
  Une application linéaire $f: RR^n arrow RR^n$ est une projection $<=> f compose f = f$ \
  Soit $A_f$, matrice associée alors $ A_f^2 = A_f $ est idempotent d'ordre 2
]

#exemple[
  $ f: (x,y,z) arrow.bar (x,y,0) \
    A_f = mat(1,0,0;0,1,0;0,0,0)
  $

  $ g: (x,y,z) arrow.bar (0,y,z) \
    A_f = mat(0,0,0;0,1,0;0,0,1)
  $

  $
    A_h = 1/2 mat(1,1;1,1)
  $
]

#proposition[
  Soit $f: RR^n arrow RR^n$ une projection, alors $forall v in RR^n$
  $ v = &f(v) + &(v - f(v)) \
        &in Im(f) &in ker(f)
   $
]

#proof[
  $ &v -f(v) in ker(f) \
    &<=>  f(v-f(v)) = 0_(RR^n) \
    &<=> f(v) - f(f(v))= 0 \
    &<=> f(v) = f(f(v)) \
    &<=> f "est une projection"
   $
]\
$r g(P), n=2$:
- 0 $P = OO_2$
- 1 On projete parallèlement à la droite du noyau
- 2 $P = bb(1)_2$

$r g(P), n=3$:
- 0 $P = OO_3$
- 1 On projete sur une droite($Im(P)$) parallèlement au plan du noyau
- 2 On projecte sur un plan ($Im(P)$) parallèlement au plan du noyau
- 3 $ P = bb(1)_3$

#remark-style("summary","Résumé")()[
  Un projecteur $P$ projette un vecteur $V$ sur son image $P(v)$, le long de $ker(P)$
]

#rem[
  Si $P$ est un projecteur de $RR^3 arrow RR^3$,\
  alors $(I d)_3-P = Q $ est le projecteur complémentaire à $P$\
  $Im(Q) = ker(P)$ et $ker(Q) = Im(P)$
]

#let Id = $I d$
#let vect = $v e c t$

#proof[
  $ (Id_3 - P)^2 = (Id_3-P) -P + P = Id_3 -P $
  $ P(Id-P) = P - P^2 = OO_3 $
  $ (Id-P)P = P - P^2 = OO_3 $
]

#exemple[
  $ A= 1/7 mat(6,2;3,1), r g(A) = 1 $
  $ A^2 &= 1/49 mat(42, 14; 21, 7)\
    &= 1/7 mat(6,2;3,1)
  $

  $ A = 1/2 vec(2,1) mat(3,1) \
    => Im(A) = vect(2,1),
    ker(A): 3x+y = 0 <=> vect(1,-3)
  $

  $ B = bb(1) - A = 1/7 mat(1,-2;-3,6)\
    B^2  = 1/49 mat(7,-14;-21, 42) = 1/7 mat(1, -2;-3,6) = B\
    B = 1/7 vec(1,-3) mat(1,-2) \
    => Im(B)= vect(1,-3) = ker(A), ker(B): vect(2,1) = Im(A)
  $
]

#exemple[
  Trouver $A$ qui projette sur $vect(1,5)$, le long de $vect(1,2)$\
  $ A &= lambda vec(1,5) mat(2,-1)\
    A^2 &= lambda^2 vec(1,5) mat(2,-1) vec(1,5) mat(2,-1)\
    &= lambda vec(1,5)mat(2,-1)\
    &=> lambda = -1/3 \
    &=> A = -1/3 mat(2,-1;10,-5) 
  $
]

#exemple[
  $ f: RR^3 &arrow RR^3 \
    (x,y,z) &arrow.bar (y+z, x-z, -x+y+2z)\

    A &= mat(0,1,1;1,0,-1;-1,1,2) \
    A^2 &= mat(0,1,1;1,0,-1;-1,1,2) = A\

    B &= mat(1,-1,-1;-1,1,1;1,-1,-1) = vec(1,-1,1) mat(1,-1,-1) \
    &=> im(f): x-y-z= 0, ker(f) = vect(1,-1,1)
  $

  Donc $f$ projectte sur le plan: $x-y-z = 0$ le long de $vect(1,-1,1)$
  $ A vec(1,-1,1) = vec(0,0,0) $
]

#let rg = $r g$

== Applications de $rg space 1$

#definition[
  La trace de $A = mat(a,b;c,d) $ est $tr(A) = a+d$
]

#proposition[
  Une application linéaire $f: RR^2 arrow RR^2$ est un projecteur $!= OO_2, Id_2$\
  $<=> tr(A_f) = 1$
]

#proof[
  Soit $A_f$ et $rg(A_f) = 1$\
  $ A_f = vec(mu, lambda) mat(rho, sigma) $
  $ A_f^2 = A_f &<=> vec(mu, lambda) mat(rho, sigma) vec(mu, lambda) mat(rho, sigma) = vec(mu, lambda) mat(rho, sigma) \
    &<=> mat(rho, sigma) vec(mu, lambda) \
    &<=> rho mu + lambda sigma = 1\
    &<=> a +d = 1 
  $
]

#corollaire[
  Si $rg(f) = 1$ alors
  $1/tr(f) f$ est un projecteur $P$
  est $Im(P) = Im(f)$ et $ker(P) = ker(f)$
]
