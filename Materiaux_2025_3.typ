#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, dv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Materiaux 2025 3",
  subtitle: "23/09/2025",
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

= Liaisons entre les atomes
On peut représenter les interactions entre atomes comme un ressort.
$ F_("int") = -k x $
Ainsi
$ delta W = delta F dd(x) $
$ W = integral F dd(x) $
$ W = F d, Delta E = W_(1 arrow 2) $
$ F = dv(E, x) $
$ W_("int") = -k x^2/2 $

== Potentiel de Lennard Jones

#definition[
  $ E = epsilon_0 [(r_0/r)^12 - 2(r_0/r)^6 ] $
  Pour $r=r_0$ on a $E_0 = -epsilon_0 = min im(E) $
  $ E = integral F_"ext" dd(x) $
  $F_"ext"$, Force à appliquer pour garder les 
atomes à la distance $r$
]

#definition[
  Enthalpie
  $ Delta H_r = Delta H_("séparation") + Delta H_("formation") $
]

== Electronégativité

#definition[
  Moment dipolaire HF

  $ mu = r d [C m] = 1.9 "Debye" \
    1 D = 3.34 times 10^(-30) C m
  $
]
