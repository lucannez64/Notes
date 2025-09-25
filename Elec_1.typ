#import "@preview/dvdtyp:1.0.1": *
#import "@preview/unify:0.7.1": qty
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, va, vu
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Elec 1",
  subtitle: "12/09/2025",
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

= Analyse dimensionnelle
#exemple[
  $ E &= 1/2 m v^2  \
    [E] &= [m][v]^2 \
        &= M L^2 T^(-2)\
    J &equiv k g * m^2 * s^(-2)
  $
]

#exemple[
  $ x(t) &= 1/2 m g t^2 \
    [m g t^2] &= M L => "équation fausse"
  $
]

= Electrostatique

== Loi de Coulomb

#thm[
  $ va(F_12) = (Q_1Q_2)/(4 pi epsilon r^2) vu(u_12) $
  Avec la permittivité $ epsilon = epsilon_0 epsilon_r $
  $ epsilon_0 = 8.85 times 10^(-12) F m^(-1) $
]

#definition[
  Champs électrique
  $ va(E) = va(F)/Q_2 $
]

#thm[
  Superposition

  $ va(F_j) = sum_(k=1)^N va(F_(k,j)) $
  $ va(E_j) = va(F_j)/Q_j $
]

#definition[
  Travail

  $ W_(A B) = integral_(r_A)^(r_B) F_12 (r) d r $
  $ W_(A B) = Q_2 integral_(r_A)^(r_B) E_1(r) d r = Q_2 Q_1/(4pi epsilon) (1/r_A - 1/r_B)  $
  $ V_A - V_B = integral_(r_A)^(r_B) E(r) d r $
  $ V(r) = Q/(4pi epsilon r) + V_(r e f) $
]

#definition[
  Tension électrique

  $ V_(A B) = V_A - V_B $
]

#exemple[
  Dans un matériau électriquement neutre
  $ V_(A B) = E d $
  $ E = V_(A B)/d $
]

#definition[
  Courant électrique

  $ I = (d q)/(d t) $
]
