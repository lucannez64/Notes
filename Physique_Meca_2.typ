#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, va, vu, cprod, dprod, mdet
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Physique Meca 2",
  subtitle: "16/09/2025",
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

= Lois de Newton

#definition[
  $ va(F) = d/dd(t) va(p) "avec" va(p) = m(t) va(v) $
  Si la masse est constante on a $va(F) = m va(a) $
]

== Loi action-réaction

Si on a $va(F)^(i arrow j) = - va(F)^(j arrow i), i!=j$ alors ces forces sont des forces internes

#exemple[
  $ &va(F) = m va(g) \
    &va(g) = -g vu(z) = -9.81 vu(z) \
    &va(F) = vec(0,0,-g), va(a) = vec(dot.double(x), dot.double(y), dot.double(z)) \
    &cases(
    dot.double(x) = 0,
    dot.double(y) = 0,
    dot.double(z) = -g
  ) \
    &<=> cases(
      dot(x) = C_1,
      dot(y) = C_2,
      dot(z) = -g t + C_3
    ) \
    &<=> cases(
      x = C_1 t + C_4,
      y = C_2 t + C_5,
      z = -g/2 t^2 + C_3 t + C_6
    ) \
    &=>
    cases(
      x = v_x (0) t + r_x (0),
      y = v_y (0) t + r_y (0),
      z = -g/2 t^2 + v_z (0)t + r_z (0)
    )
  $
]

= Moments

#definition[
  Moment de force
  $ va(M_O) = [va(O P), va(F_p)] $
  $ va(M_B) = [va(B P), va(F_p)] $
  Le moment de force dépend de l'observateur ici $B$ ou $O$
  En général
  $ va(M_O) = sum_alpha [va(O P)_alpha, va(F)_alpha] $
]

#definition[
  Moment cinétique

  $ va(L_O) = sum_alpha [va(O P)_alpha, m_alpha va(v_alpha)] $
]

#thm[
  $ d/dd(t) va(L_O) = va(M_O) $
]
