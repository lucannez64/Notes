#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 25",
  subtitle: "27/05/2025",
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
#let dt = $dd(t)$
#let dx = $dd(x)$
#let ds = $dd(s)$
#let dy = $dd(y)$
#let dz = $dd(z)$
= Volumes

#definition("Somme de Riemann")[
  Si $f$ est intégrable $A = lim_(n arrow oo) sum_(k=1)^n f(z_k) (x_k -x_(k-1)), z_k in [x_(k-1), x_k]$
]

La coupe perpendiculaire à l'axe des $x$ par le plan ${x=x_0}$ est une région don peut calculer l'aire $A(x_0)$ continue sur $[a,b]$

$ sum A(x_k)(x_k - x_(k-1)) $
En passant à la limite $ V = integral_a^b A(x) dx $

#exemple[
  Volume d'une pyramide de hauteur $h$ et de base carrée de côté $b$
  $ V = integral_0^h A(z) dz = integral_0^h ((b z)/h)^2 dz = b^2/h^2 integral_0^h z^2 dz = b^2/h^2 lr(z^3/3 |)_0^h = (b^2 h)/3  $
]

== Volumes de corps de révolution

#definition("Corps de révolution")[
  corps obtenu en faisant tourner une région du plan autour d'un axe
]

#theorem[
  $f$ continue sur $[a,b]$ et $D$ le domaine du plain délimité par $y=f(x), y=0, x=a, x=b$
  Quelle est le volume du corps de révolution engendré par la rotation de $D$ autour de $O x$
  $ A(x_0) = pi f(x_0)^2, V = pi integral_a^b f(x_0)^2 dx $
]

#exemple[
  $f(x)=sqrt(x), y=0, x=1,x=4$
  $ V= pi integral_1^4 sqrt(x)^2 dx = pi integral_1^4 x dx = (15 pi)/2 $
]

#exemple[
  $y=sqrt(x),y=1, x=1,x=4$
  $ V = pi integral_1^4 (sqrt(x)-1)^2 dx = (7pi)/6$
]

#exemple[
  $y=x, y=sqrt(x)$
  $V= integral_0^1 pi (x - x^2)dx=pi/6$
]

#exemple[
  $y=x^3,y=0,x=0$ autour de $O y$
  $ V= integral_0^1 pi root(3, y)^2 dy = 3/5 pi $
]

== Solide de révolution de courbe paramétrée

#exemple[
  $Gamma: (a cos(t), b sin(t))$
  D $Gamma$ et ($O x$) autour de $(O x)$
  Volume de l'ellipsoïde engendrée par la rotation
  $ V = integral_(-a)^a pi y^2 dx = - integral_0^pi pi y^2(t) dot(x)(t) dt = -pi integral_0^pi b^2 sin(t)^2(-a sin(t)) dt \ = pi a b^2 integral_0^pi  sin(t)^3 dt \ = pi a b^2 integral_0^pi sin(t)^3 dt \
    = pi a b^2 integral_0^pi sin(t)  cos^2(t) sin(t) dt\
    = 4/3 pi a b² 
  $
]
