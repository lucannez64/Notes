#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 15",
  subtitle: "15/04/2025",
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

= Extrema de fonctions

#definition[
  Une fonction $f$ possède un maximum global en $x_0 in D_f$
  $=> forall x in D_f, f(x)<= f(x_0)$ \
  Une fonction $f$ possède un minimum global en $x_0 in D_f$
  $=> forall x in D_f, f(x) >= f(x_0)$
]

#definition[
  $f$ possède un maximum local en $x_0 in D_f$
  $=> exists delta >0 "tq" forall x in ]x_0-delta, x_0+delta[ inter D_f, f(x) >= f(x_0)$\
  $f$ possède un minimum local en $x_0 in D_f$
  $=> exists delta >0 "tq" forall x in ]x_0-delta, x_0+delta[ inter D_f, f(x) <= f(x_0)$
]

#rem[
  + Un maximum/ minimum global est aussi local
  + $f: [a,b] arrow R$ continue admet un max et min global sur $[a,b]$
]

== Recherche d'extrema locaux

#theorem[
  Soit $f$ dérivable en $x_0$. Si $f$ admet un extremum en $x_0$, alors $f'(x_0)= 0$
]

#rem[
  La réciproque est fausse $f(x)=x^3$
]

#proposition[
  Si $f$ dérivable en $x_0$
    - si $f'(x_0) != 0$ pas d'extremum en $x_0$
    - si $f'(x_0) = 0$ $ f$ peut admettre un extremum en $x_0$ ou pas
  Si $f$ pas dérivable en $x_0$,
   $ f$ peut admettre un extremum en $x_0$ ou pas
]

#thm[
  Soit $f$ continue dans un voisinage de $x_0$, dérivable dans un voisinage épointé de $x_0$
  Si $f'$ change de signe en $x_0$ alors $f$ admet un extremum local en $x_0$
]

#exemple[
  $ f(x) = sin(abs(x)), -pi <=x<pi = cases(sin(x) ", " 0<=x<=pi, -sin(x) ", " -pi<=x<0) $
  $ f'(x) = cases(cos(x)", " 0<=x<=pi, -cos(x)) ", " -pi<=x<0 $
  $f$ pas dérivable en 0 \
  Candidats: $-pi, 0,pi,-pi/2, pi/2$\
  Changement de signe de $f'$:
   - min local en 0 $f(0) = 0$
   - max local $f(-pi/2) =1 = f(pi/2) $
  Au bord de l'intervalle:
  - min local en $-pi$, $f(-pi)= 0$
  - min local en $pi$, $f(pi) = 0$
]

= Problèmes d'optimisation

#problem[
  Optimiser l'aire du rectangle inscrit sous la parabole $y=1-x^2$\
  $ A(x) = 2x(1-x^2), x in [0,1] $
  $ A'(x) = 2(1-x^2) + 2x(-2x) = 2-6x^ 2, D_A' = ]0,1[ $
  $ A'(x) = 0 <=> x = 1/sqrt(3) $
  #tablem[
    ||$0$|$1/sqrt(3)$|1|
    |--|-----|-----|---|
    |A'|$bar.double +$|0|- $bar.double$|
    
  ]  
]

#problem[
  Quel est le volume maximal d'un cylindre inscrit dans une sphère de rayon $R$ ?\
  $V = pi r^2 h$
  $ (2x)^2 + h^2 = (2R)^2 $
  $ h^2 = 4R^2 -4x^2 $
  $ h = 2sqrt(R^2-x^2 ), x in [0,R] $
  $ V(x) = pi x^2 h = 2 pi x^2 sqrt(R^2-x^2), x in  [0,R] $
  $ V'(x) = 4 pi x sqrt(R^2 -x^2) + 2pi x^2 (-2x)/(2 sqrt(R^2-x^2)) = 4pi x sqrt(R^2-x^2) - (2pi x^3)/sqrt(R^2-x^2) $
  $ V'(x) = 0 <=> x=0 "ou" x = R sqrt(2/3) $
  Le max est $ V(R sqrt(2/3)) = 1/sqrt(3) (4/3 pi R^3) $
]

#problem[
  $x in RR^+_*$
  $theta = beta-alpha$
  On veut maximiser $theta$
  $ tan(alpha) = 3/x, alpha in ]0,pi/2[ $
  $ alpha = arctan(3/x) $
  $ theta(x) = arctan(8/x) - arctan(3/x) $
  $ theta'(x) = (-5x² + 120)/(x^2+64)(x^2+9) $
  $ theta'(x) = 0 <=> x = sqrt(24) $
  Max en $sqrt(24), theta(sqrt(24)) approx 27°$
]

