#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd, hbar, va
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Materiaux 2025 2",
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

= Rappel

$ E = h nu $
Energie pour l'hydrogène 
$ E_n = -(13.6 e V)/n^2 $
$ 1 e V = 1.6 times 10^(-19) C times 1 V  = 1.6 times 10^(-19) J $

== La lumière

C'est une onde électromagnétique qui résulte du mouvement de charge électriques.

$ lambda nu = c = 1/sqrt(epsilon_0 mu_0) = 3 times 10^8 m s^(-1) \
  nu := 7.5 - 3.75 times 10^14 s^(-1)\
  E := 1.25- 2.5 e V
$

= Nature ondulatoire de la matière 

Une particule de masse $m$ se comporte comme une onde de longueur d'onde $lambda$
$ lambda = h/(m v) "avec" h = 6.63 times 10^(-34)J s $

#exemple("Pour l'électron")[
  $ lambda = 2.65 circle(A) $ si $v = 2.7 times 10^6 m s^(-1) $
  or le rayon de l'atome est de l'ordre de $circle(A)$
  Donc on en voit l'effet
]

== Mécanique quantique la fonction d'onde
#definition[
Equation de Schrödinger
$ - hbar^2/2m (d^2 psi)/dd(va(r)^2) + V(va(r)) psi &= E psi \
  H psi &= E psi
$
]
#definition[
Probabilité de densité
$
  P = integral_(x_1)^(x_2) abs(psi(va(r)))^2 dd(va(r))
$
]

#definition[
  Principe d'incertitude
  
$
  Delta p dot Delta x >= 1/2 hbar "avec" Delta p = m Delta v
$
]

== Orbitales

Les diverses solutions de l'équation de Schrödinger sont des orbitales $psi_(n,l,m_l)$ définies par des nombres quantiques $n,l,m_l$

#definition[
  - $n$: nombre quantique principal $n>=1$ : énergie/taille
  - $l$: nombre quantique angulaire(secondaire) $0<= l<=n-1$: forme de l'orbitale
  - $m_l$: $-l<= m_l <= l$: orientation de l'orbitale
  - $m_s$: $1/2, -1/2$ : spin
]

#figure[
  #image("250916_11h52m23s_screenshot.png")
]

#exemple[
  - $n=1$ : $l=0$,
  - $n=2$ : $l=0,1$,
  - $n=3$ : $l=0,1,2$
]

#figure[
  #image("250916_11h57m32s_screenshot.png")
]

#figure[
  #image("250916_12h20m44s_screenshot.png")
]

== Règle de Klechkowsky

#figure[
  #image("250916_12h24m38s_screenshot.png")
]

== Principe d'exclusion de Pauli

Dans un atome il ne peut exister deux électrons définis par le même groupe de quatre nombre quantique\
Une orbitale comprend au plus deux électrons et ils sont nécessairement de spin opposés

== Règle de Hund

L'arrangement le plus stable est celui avec le maximum d'électrons de spins parallèles

#exemple[
  Carbone 6 électrons

  $1s arrow.t arrow.b 2s arrow.t arrow.b 2p arrow.t arrow.t $
]

#definition[
  Les électrons de valence:= Les électrons de la couche externe
]

#definition[
  Numéro Atomique $Z$ = nombre de protons\
  Nombre de masse $A$ = nombre de nucléons
]
