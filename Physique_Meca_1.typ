#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, va,vu, cprod, dprod, mdet
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Physique Meca 1",
  subtitle: "09/09/2025",
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

= Vecteurs

== Additions-Soustractions
Règle du parallèlogramme

$ arrow(O C) eq.def arrow(O A) + arrow(O B) $

Soustraction est l'addition de l'opposé

$ arrow(O B) - arrow(O A) = arrow(O B) + (- arrow(O A)) = arrow(A B) $

Avec un repère $(O, hat(x_1), hat(x_2), hat(x_3))$

$ arrow(O A) = vec(a_1,a_2,a_3) = a_1 hat(x_1) + a_2 hat(x_2) + a_3 hat(x_3) , arrow(O B) = vec(b_1,b_2,b_3) = b_1 hat(x_1) + b_2 hat(x_2) + b_3 hat(x_3) $

$ arrow(O A) + arrow(O B) = vec(a_1+b_1, a_2+b_2, a_3+b_3) = (a_1+b_1) hat(x_1) + (a_2+b_2)hat(x_2) + (a_3+b_3)hat(x_3) $

== Produit scalaire
$ arrow(O A) dot arrow(O B) &eq.def norm(O A) norm(O B) cos(alpha) \
  &=  sum^N_(k=1) a_k b_k \
  &= mat(a_1,a_2,a_3, dots.h , a_N) vec(b_1,b_2,b_3, dots.v, b_N)
$

== Déterminant
En 2D:
Représente une surface orientée
$ A= det( arrow(O A), arrow(O B) ) = mat(delim: "|" ,a_1, b_1; a_2, b_2) = mat(delim: "|", a_1, a_2; b_1, b_2) = a_1 b_2 - b_1 a_2 $
En 3D:
Représente un volume orientée

$ V =  mat(delim: "|" ,a_1, b_1, c_1; a_2, b_2,c_2; a_3, b_3, c_3) = mat(delim: "|", a_1, a_2, a_3; b_1, b_2, b_3; c_1,c_2,c_3) = A_"base" * h \
  = a_1b_2c_3 + a_2b_3c_1 + a_3b_1c_2 - a_3b_2c_1  - a_2b_1c_3 - a_1b_3c_2
$

== Produit Vectoriel

=== Notation
$ [va(O A), va(O B)] = va(O A) and va(O B) = va(O A) × va(O B)  $

=== Concept
$ va(v_3) = [va(v_1), va(v_2)] = -[va(v_2), va(v_1)] $
$ norm(va(v_3)) = "aire du parallélogramme construit sur " va(v_1) "et" va(v_2)$

=== Definition dans un repère orthonormé direct

$ va(v_1) &= x_1 vu(x) + y_1 vu(y) + z_1 vu(z) \
  va(v_2) &= x_2 vu(x) + y_2 vu(y) + z_2 vu(z) \
  va(v_3) &= [va(v_1), va(v_2)] = mdet(vu(x), vu(y), vu(z); x_1, y_1, z_1; x_2, y_2, z_2) = mdet(vu(x), x_1, x_2; vu(y), y_1, y_2; vu(z), z_1, z_2) \
  &= vu(x) mdet(y_1, y_2; z_1, z_2) - vu(y) mdet(x_1, x_2; z_1, z_2) + vu(z) mdet(x_1, x_2; y_1, y_2)\
  &= vu(x) (y_1 z_2 - y_2 z_1) + vu(y) (x_2 z_1 - x_1 z_2) + vu(z) (x_1 y_2 - x_2 y_1)
$

== Produit Mixte
#thm[
$ va(a) dot [va(b), va(c)] = mdet(a_1, a_2, a_3; b_1, b_2, b_3; c_1, c_2, c_3) $
]

#proof[
  $ va(a) dot [va(b), va(c)] = norm(va(a)) norm([va(b), va(c)]) cos(alpha) = h * A_("base") \
  $

  $ [va(b), va(c)] = vu(x) mdet(b_2, c_2; b_3, c_3) - vu(y) mdet(b_1, c_1; b_3, c_3) + vu(z) mdet(b_1,c_1; b_2, c_2) $
  $ va(a) dot [va(b), va(c)] = a_1  mdet(b_2, c_2; b_3, c_3) - a_2 mdet(b_1, c_1; b_3, c_3) + a_3 mdet(b_1,c_1; b_2, c_2) \
    = mdet(a_1, b_1, c_1; a_2, b_2, c_2; a_3, b_3, c_3)
  $
]

== Produit triple

#thm[
 $ [va(a), [va(b), va(c)]]  = (va(a) dot va(c))va(b) - (va(a) dot va(b)) va(c) $
]

#proof[
  $ [va(b), va(c)] = (b_2 c_3 - b_3 c_2) vu(x_1) + (c_1 b_3 - b_1 c_3) vu(x_2) + (b_1 c_2 - b_2 c_1) vu(x_3) $
  $ [va(a), [va(b), va(c)]] &= mdet(vu(x_1), a_1, b_2 c_3 - b_3 c_2; vu(x_2), a_2, c_1 b_3 - b_1 c_3; vu(x_3), a_3, b_1 c_2 - b_2 c_1) \
    &= (a_1 c_1 + a_2 c_2 + a_3 c_3)(b_1 vu(x_1)+ b_2 vu(x_2) + b_3 vu(x_3)) \
    &- (a_1 b_1 + a_2 b_2 + a_3 b_3)(c_1 vu(x_1) + c_2 vu(x_2) + c_3 vu(x_3))
    &= (va(a) dot va(c))va(b) - (va(a) dot va(b)) va(c)
  $
]

= Repère et point matériel

$ va(r) = va(O P) $

Le repère est noté en 2D $ (O, vu(x_1), vu(x_2))$
en 3D $(O, vu(x_1), vu(x_2), vu(x_3))$
$ vu(x_i) dot vu(x_j) = 0,i!=j, norm(vu(x_i)) = sqrt(vu(x_i) vu(x_i)) = 1 $

== Trajectoire

#definition[
  $ "Trajectoire" = {P(t),t in RR^+} $
]

== Equation horaire

#definition[
  $ t :arrow va(r)(t) $
]

#definition[
  Vitesse moyenne
  $ va(v) = (va(r)(t_B) - va(r)(t_A))/(t_B - t_A) $
]

#definition[
  Vitesse instantanée
  $ va(v)_P(t) := lim_(h arrow 0) (va(r)(t+h)- va(r)(t))/(h) $
]

== Dérivées

$ d/dd(t) va(O P) = dot(va(O P)) := va(v)_P $
$ va(v) = dot(x) vu(x) + dot(y) vu(y) + dot(z) vu(z) $

$ dot.double(va(O P)) =  d/dd(t) va(v)_P = va(a)_P $
$ va(a)_P = dot.double(x) vu(x) + dot.double(y) vu(y) + dot.double(z) vu(z) $

#thm[
  $ (f compose g)' = (f' compose g)g' $
]

#exemple[
  $d/dd(t) sin(theta(t)) = cos(theta(t)) dot(theta(t)) $
]

=== Règle de Leibniz

#definition[
   $ dot((a(t) b(t))) = dot(a)(t) b(t) + a(t) dot(b)(t) $ 
]

#thm[
  $ d(va(a) dot va(b))/dd(t) = dot(va(a)) dot va(b) + va(a) dot dot(va(b)) $
]

#thm[
  
  $ d([va(a), va(b)])/dd(t) = [dot(va(a)), va(b)] + [va(a), dot(va(b))] $
]
