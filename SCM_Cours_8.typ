#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "SCM Cours 8",
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

#let cis = math.op("cis")

#outline()

=  Nombres complexes

$ exists.not x in RR "tq" x^2 = -1 $
Dans $exists A in M_2(RR) "tq" A^2 = - bb(1)$. Par exemple $i = mat(0, -1;1,0)$


#definition[
  $ CC := {mat(X,-Y; Y,X) | x,y in RR } $
  est l'ensemble des nombres complexes, avec $+,dot$ donnés par les opérations sur les matrices 
  Si $ z in CC$ on a $ z = bb(1)_2 x + i y $
  On dit que $ x = Re(z) "(Partie réelle)" $ et $ y = Im(z) "(Partie Imaginaire)" $
]

#thm[
  $(CC, +, dot)$ forme un corps
]

#proof[
  $(CC,+) "est un groupe abélien"$ car $M_2(RR) "est un groupe abélien pour "+$ \
  Si $z = bb(1)_2 x + i y$ et $z' = bb(1)_2 x' + i y' $
  $ z z' &= (bb(1)_2 x + i y)(bb(1)_2 x' + i y') \ &= bb(1)_2 (x x' - y y') + i (y x' + x y') in CC $
  On vérifie que le produit matriciel est une opération interne à $CC$, associatif,et distributif \
  Si $ z in CC^*, z = mat(x,-y;y,x)\ det(z) = x^2+y^2 $
  Donc $ z != OO_2 &<=> det(z) != 0 \ &<=> exists! z^(-1) in M_2(RR) \ &<=> z^(-1) = 1/det(z) mat(X, Y;-Y, X) \ &= 1/det(z) (bb(1)_2 -i y)  in CC $
]

#definition[
  Soit $z = bb(1)_2 x + i y$
  Le module de $z$ est :
  $ |z| = det(z)^(1/2) $
  Le complexe conjugué de $z$ est:
  $ dash(z) = z^t $
]

#rem[
  On peut identifier $ x in RR " à " bb(1)_2 x in CC $
  Alors $RR subset CC$ \
  Puisque $ bb(1)_2 = 1_CC $
  $ z = bb(1)_2 x + i y = 1_CC x + i y = x + i y $
]

#definition[
  Soit $alpha in RR$
  posons $ cis(alpha) = cos(alpha) + i sin(alpha) = mat(cos(alpha), -sin(alpha); sin(alpha), cos(alpha)) $
  + $cis(alpha)cis(beta) = cis(alpha + beta) $
  + $cis(n alpha) = cis(alpha)^n$
  + $ z^10 = 1 = cos(alpha) + i sin(alpha) = cis(alpha) = cis(2pi ) = cis(6pi) \ => z = cis((2k pi)/10), k in bracket.l.double 0, 10 bracket.r.double$
]

#exemple[
  $ z^2 = -8 - 6i $
  Posons $z = a+i b, a,b in RR$
  $ (a+i b)^2 = -8-6i = a^2 -b^2+ i 2 a b $
  $ &<=> cases(a^2-b^2 = -8, -3 = a b) \ &<=> cases(a^2- 9/a^2 = -8,b=-3/a) \ &<=> cases( a^4 +  8a^2-9 = 0 = (a^2+9)(a^2-1), b = -3/a) $
  $ S = { (1 minus 3i), (-1 + 3i) } $
]

Dans notre construction $z in M_2(RR) $. On a donc une action de $CC $ sur $RR^2$
$ z = (a+i b) "et " (x,y ) in RR^2 $
$ z vec(x,y) = mat(a, -b;b,a) vec(x,y) in RR^2 $
On sait que $dim_RR RR^2 = 2$.
Mais $dim_CC RR^2 = 1$.\
Par exemple $(1,0) = e_1$ est une base pour $RR^2$ vu comme un espace vectoriel complexe.
$ (z)e_1 = mat(a,-b;b,a) vec(1,0) = a e_1 + b e_2 "ou" e_2=(0,1) $
C'est la représentation de Gauss de $CC$

#thm("Fondammental de l'algèbre")[
  Si $P(z) = a_0 + a_1z + ...+a_n z^n$ est un polynôme à coefficients complexes
  et si $n>=1$, alors $P(z) = 0$ possède au moins une solution dans $CC$.\
  On dit que $CC$ est algébriquement clos
]

#rem[
  Dans $CC exists.not $ de relation d'ordre total et compatible avec $+, dot$. \
  En effet supposons que $<$ est une telle relation d'ordre 
  $ forall x,y "et" z>0 space  x z < y z <=> x < y $
  On a alors soit $i>0$ soit $(-i) > 0$ \
  Mais alors on aurait $i^2 >0$ donc $-1>0$ \
  On aurait alors $i>0 => -i > 0 => i > 0$
  $ => 0>0 $
]
