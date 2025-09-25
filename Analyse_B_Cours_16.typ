#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 16",
  subtitle: "29/04/2025",
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

= Etude de fonctions

== Branches infinies

#definition[
  Soit $f$ définie dans un voisinage épointé de $x_0 in RR$ (ou voisinage gauche respectivement droite).
  $f$ admet une asymptote verticale en $x_0$ d'équation $x=x_0$ si
  $ lim_(x arrow x_0^-) f(x) = plus.minus oo$ ou $lim_(x arrow x_0^+) f(x) = plus.minus oo$
]

#exemple[
  Asymptote vertical $x=0$:
  + $f(x)=1/x$
  + $f(x)=1/x^2$
  + $f(x)=cases(1/x "," x<0, 1 "," x>= 0)$

  $tan(x)$ admet une asymptote vertical en tout $x_0=pi/2 +2k pi$
]

#definition[
  Soit $f$ définie sur un voisinage de l'infini.
  $f$ admet en $plus.minus oo$ une asymptote horizontal d'équation $y=y_0$ si
  $ lim_(x arrow plus.minus oo) f(x)=y_0 $
]

#exemple[
  - $f(x)=1/x$ admet en $+oo$ une asymptote horizontale d'équation $y=0$ en $-oo$
  - $g(x)= sin(x)/x$ aussi
  - $f(x)=-7$ admet en $plus.minus oo$ une asymptote horizontal d'équation $y=-7$
]

#definition[
  Soit $f$ définie sur un voisinage de l'infini.
  $f$ admet en $plus.minus oo$ une asymptote oblique d'équation $y=a x+b$
  si $lim_(x arrow plus.minus oo) (f(x)-(a x+b))=0$
]

Si $lim_(x arrow plus.minus oo) f(x) = plus.minus oo$
et $lim_(x arrow plus.minus oo) f(x)/x = a in RR$
et $lim_(x arrow plus.minus oo) f(x)-a x = b in RR$
Alors $f(x)$ admet une asymptote oblique d'équation $y=a x +b$

#exemple[
  Etudier les branches infinies de $f(x)=root(3,x^2(x+1))$
  $ lim_(x arrow +oo) f(x) = + oo $
  $ lim_(x arrow +oo) f(x)/x =lim_(x arrow +oo) root(3,x^2(x+1))/x = lim_(x arrow +oo) root(3,1+1/x) = 1 $
  $ lim_(x arrow +oo) f(x)-x &= lim_(x arrow +oo) (x^2(x+1)-x^3)/(root(3,x^4(x+1)^2) +x root(3,x^2(x+1)) +x^2) \
   &= lim_(x arrow +oo) x^2/(x^2 root(3,(1+1/x)^2) + x^2(root(3,1+1/x))+ x^2) \
   &= lim_(x arrow +oo) 1/(root(3, (1+1/x)^2)+root(3,1+1/x)+1 ) \
  &= 1/3
  $
  Donc $f$ admet une asymptote oblique d'équation $y=x+1/3$
]

#exemple[
  + $f(x)=1/2 x+ sqrt(x), f(x)/x arrow 1/2, f(x)-1/2 x = sqrt(x) arrow +oo$ BP de direction de pente $1/2$
  + $f(x) = sqrt(x) arrow +oo, f(x)/x arrow 0, f(x)-0x arrow +oo$ BP axe horizontale
  + $f(x)=ln(x), f(x)/x = 0, f(x)-0x arrow +oo$ BP axe horizontale
]

== Etude de fonctions

- $D_f$ (exploiter d'éventuelles symétries)
- Calcul de $f', D_(f')$
- signe de $f' arrow$ variations de $f$
- extrema (candidats: $x_0 in D_f without D_(f')$ ou $f'(x_0)=0$)
- branches infinies
- graphe de $f$

#exemple[
  Etudier la fonction $f(x)=(x^2-3)/(2x-4)$, $D_f=RR without{2}$\
  branches infinies:
  $ lim_(x arrow 2^-) (x^2-3)/(2x-4)=-oo, lim_(x arrow 2^+) f(x) = +oo $\
  Asymptote d'équation $x=2$

 $ lim_(x arrow -oo) f(x) = lim_(x arrow -oo) (x^2(1-3/x^2))/(x^2(2/x -4/x^2))\
   = lim_(x arrow -oo) (1-3/x^2)/(2/x -4/x^2) = -oo
  $ 
  $
    lim_(x arrow -oo) f(x)/x = 1/2    
  $
  $
    lim_(x arrow -oo) f(x) - 1/2 x = lim_(x arrow -oo) (2x-3)/(2x-4) = 1 
  $
  $f$ admet en $-oo$ et en $+oo$ une asymptote oblique d'équation $1/2 x + 1$

  Etude de la dérivée:

  $ f'(x) &= ((2x(2x-4)-(x^2-3)2)/(2x-4)^2 ,D_(f')=D_f \
    &= (2(x-1)(x-3))/(2x-4)^2
  $
  Candidats extrema: 1,3

  #tablem(ignore-second-row: false)[
    | ---   |$-oo$|- |$1$|--- |$2$|$3$|$+oo$|
    |$f'$| $+$ |+  |$0$|$-$|$-$|$0$|+    |
    |$f$ | $arrow.tr$| $arrow.tr$|---| $arrow.br$ | $arrow.br$ | ---| $arrow.tr$
  ]
]

#exemple[
  $f(x) = root(3, x^2(x+1)), D_f = RR$ en $plus.minus oo$ asymptote oblique d'équation $y=x + 1/3$
  $ f'(x) = 1/3 (3x^2+2x)/(root(3,x^4(x+1)^2)), D_(f') = RR without {0,-1} $
  Candidats extrema: $-2/3, 0,-1$
  $ f'(x) = 1/3 (x(3x+2))/(root(3,x^4(x+1)^2))$
  #tablem(ignore-second-row: false)[
    
    | ---   |$-oo$|- |$-1$|--- |$-2/3$| -- |$0$|$+oo$|
    |$f'$| $+$ |+  |$bar.double$|$+$|$0$|$-$ |$bar.double$|+    |
    |$f$ | $arrow.tr$| $arrow.tr$|---| $arrow.tr$ | --- | $arrow.br$| ---| $arrow.tr$

  ]

  $ lim_(x arrow -1) (f(x)-f(-1))/(x-(-1)) = +oo $
  $ lim_(x arrow 0^-)  root(3, x^2(x+1))/x =lim_(x arrow 0^-) root(3, (x+1)/x)= -oo\
    lim_(x arrow 0^+)  root(3, x^2(x+1))/x =lim_(x arrow 0^+) root(3, (x+1)/x)= +oo
  $
  Demi-tangente verticale à gauche/droite, point de rebroussement
]

