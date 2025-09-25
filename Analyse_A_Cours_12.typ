#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 12",
  subtitle: "19/05/2025",
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

#let conj(x) = $overline(#x)$
= Plan Complexe

$ CC arrow.l.r RR^2 $
$ z = a+i b arrow.bar (a,b) $

$ CC arrow CC \
  z arrow.bar conj(z)
$

est une symétrie axiale d'axe $O x$\
Droite verticales\
Dans le repère $(O,x,y), x =a$
$Re(z) = (z+conj(z))/z$
Donc équation droite verticale $z+conj(z) = z a$\ \
Droites horizontales\
$y = b$
$Im(z) = b$
$<=> z-conj(z)=2b$

#theorem[
  Théorème de Vièle
  $a != 0,b,c in CC$ alors l'équation
  $ a x^2 + b x + C = 0 $
  a comme solution 
  $ S = {(-b plus.minus delta)/(2a)} $
  $ delta in CC | delta^2 &= Delta \
    delta^2 &= b^2 - 4a c 
  $
]

#exemple[
  $x^2+x +1$
  $Delta = -3$
  $S = { (-1 +- i sqrt(3))/(2)} $
]

#rem[
  Dans l'écriture $(-b plus.minus sqrt(b^2-4a c))/(2a) $
  On doit faire attention au calcul de $sqrt(b^2 -4 a c) in CC$
]

Dans $CC$ on peut résoudre des équations du n-ème degré.

#exemple[
  $x^1291 = 1$, une solution dans $RR$ et 1291 solutions dans $CC$ 
]

#theorem[
  L'équation
  $ x^n = a $ possède $n$ solutions dans $CC$ appelées les racines nème de $a$
]

= Puissances & racines

#definition("Définition valable dans un anneau")[
  Soit $z in CC$
  et $n in NN^*$
  $z^n = (z times z times dots.h times z) arrow "n fois"$
  $ z^(-1) = 1/z $ et $ z^(-n) = 1/z^n $
  $ (z^n)^m = z^(n m) $
  $ z^n z^m = z^(n+m) $
  
]

#exemple[
  $ i^2025 = i^2020 i^5\
    = (i^4)^505 i^4 i
    = i
  $ 
]

#definition[
  Pour $z in CC, n in NN^*$
  Tout nombre $w in CC$
  vérifiant $ w^n = z $
  est appelé une racine nème de $z$
]
#exemple[
$ w^3 + 1 = 0 $
$-1$ est une racine évidente

Donc $ (w^3+1)/(w+1) = (w^2-w+1) $
Les autres racines sont données par les solutions de $ w^2-w+1 = 0 $
$ Delta = -3, w_(1,2) = (-1 plus.minus i sqrt(3))/2 $
]

#exemple[
  $ w^2 = z = a+i b $
  $ (alpha+i beta)^2 = a + i b $
  $ <=> alpha^2 - beta^2 + 2 alpha beta i = alpha + i b $
  $ <=> cases(alpha^2 = beta^2 = a, 2 alpha beta = b, alpha^2 + beta^2 = sqrt(a^2 + b^2)) $
]

#let sgn(x) = $"sgn"(#x)$

#exemple[
  $ w = alpha + i beta, w^2 = i\
    <=> cases(alpha^2-beta^2 = 0, 2alpha beta = 1, alpha^2+beta^2 = 1)\
    <=> cases(alpha^2 = beta^2, 2 alpha^2 = 1, 2 alpha beta = 1)\
    <=> cases(alpha^2 = beta^2, alpha^2 = 1/2, sgn(alpha beta) = 1)\
    <=> cases(alpha = plus.minus 1/sqrt(2), sgn(alpha beta) = 1)\
    <=> S = {1/sqrt(2) + 1/sqrt(2) i, -1/sqrt(2) -1/sqrt(2) i }
  $
  
]

#theorem[
$ forall z in CC, abs(z)= r, exists theta in RR\
  z= r (cos((theta+2k pi))+i sin(theta+2k pi)), k in ZZ
$

$ z = z' <=> cases(r = r', exists k in ZZ | theta = theta' + 2k pi) $

$ conj(z) = [r,-theta] $
$ Re(z) = r cos(theta), Im(z) = r sin(theta) $
$ cos(theta) = a/sqrt(a^2+b^2), sin(theta) = b/sqrt(a^2 + b^2), tan(theta) = b/a $
]

#exemple[

  $ z=plus.minus sqrt(3) plus.minus i $
  $ r= sqrt(4) = 2 $
  $ z_(++) = sqrt(3)+i, cos(arg(z_(++))) = sqrt(3)/2, sin(arg(z_(++))) = 1/2, arg(z_(++)) equiv pi/6 mod 2pi $
  $ z_(+-) = sqrt(3)-i, arg(z_(+-)) equiv -pi/6 mod 2pi $
  $ z_(-+) = -sqrt(3)+i, arg(z_(-+)) equiv (2pi)/3 mod pi $
  $ z_(--) = -sqrt(3)-i, arg(z_(--)) equiv -(2pi)/3 mod pi $
]

#exemple[
  $ z = i^n ,arg(i^n) = cases(0 "si"n | 4, pi/2 "si" n = 4k+1, pi = "si" n=4k+2, -pi/2 "si" n=4k+3) $
]

#exemple[
  $ z= 7-10i $
  $ abs(z) = sqrt(149), cos(theta) = 7/sqrt(149), sin(theta) = -10/sqrt(149) $
  $ arccos(7/sqrt(149)) in I union I I, arcsin(-10/sqrt(149)) in I V union I\ => z = [sqrt(149), arcsin(-10/sqrt(149))]  $
]
