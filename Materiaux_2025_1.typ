#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Materiaux 2025 1",
  subtitle: "11/09/2025",
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
#let goal-style = builder-thmbox(color: latte.green, shadow: (offset: (x: 3pt, y: 3pt), color: luma(70%)))
#let goal = goal-style("goal", "Objectif")
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

= Structure de l\'atome

#goal[
  Faire un rappel sur la structure des atomes et les orbitales atomiques
]

== Quantification de l'énergie, et du moment cinétique

Après excitation les électrons d'un atome émettent des raies d'énergies discrets.
Les électrons sautent entre des états d'énergies. L'état fondammental est l'état avec le moins d'énergie

Pour l'hydrogène
$ &E_n = (-13.6 e V)/n^2 \
  &E_1 = -13.6 e V \
  &E_(infinity) = 0 e V\
  &r_("Bohr") = 0.53 accent(A, circle)= 0.53 * 10^(-10)m \
  &1/lambda = R_(infinity)(1/n_1^2 - 1/n_2^2) 
$

#definition[
  $ E = h nu $
  - $E$: énergie du photon en $J$.
  - $nu$: fréquence en $H z$, $(s^(-1))$
  - $h$: constante de Planck = $6.63*10^(-34) J.s$ 
]

== Lumière

$ $
