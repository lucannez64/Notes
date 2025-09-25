#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv,dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "SCM Cours 14",
  subtitle: "02/06/2025",
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
#let theorem = thm
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

#let dx = $dd(x)$
#let dt = $dd(t)$
#let ds = $dd(s)$

#outline()

= Equations différentielles ordinaires et linéaires de 2ème degré

#definition[
  Une EDOL2 est du type
  $ y'' + p_1 y' + p_2 y = q $ ou $p_1,p_2,q: E arrow RR, E subset RR$ soit des fonctions continues données\
  Une solution est une fonction $y: U arrow RR, U subset RR$ un ouvert de $E$ et $y in C^2(U)$\
  Une condition initiale est la donnée de $(x_0,y_0, y'_0) in U times RR^2$\
  Si $q succ.tilde 0$ on parlera d'une EDOL2homogène
]

Revenons à une EDOL1: $y'+ p y = q$\
Réécrivons-là: $exp(-R)d/dx (y exp(R)) = q $ si $R' = p$
$ d/dx (y e^R)  = e^R q\
  => y e^R = integral^x e^R q dt + lambda\
  => y = e^(-R) integral^x e^R q dt + lambda e^(-R)
$

Essayons d'écrire $y'' + p_1 y' + p_2 y = q$
$ (d/dx - lambda_1(x))(d/dx - lambda_2(x)) y = q\
  (d/dx - lambda_1(x))(y' - lambda_2 y ) = q \
  => y'' - lambda_2' y - lambda_2 y' - lambda_1 y' + lambda_1 lambda_2 y = q\
  => cases(lambda_1 + lambda_2 = -p_1, lambda_1 lambda_2 - lambda_2' = p_2)
$
Posons $Lambda_1' = lambda_1, Lambda_2' = lambda_2$
Alors $(d/dx - lambda_1)(d/dx - lambda_2)y = q$
$ <=> e^(Lambda_1) d/dx e^(-Lambda_1)  e^(Lambda_2) d/dx (y e^(- Lambda_2))  =q\
  <=> d/dx e^(Lambda_2 - Lambda_1) d/dx (e^(-Lambda_2)y) = e^(-Lambda_1)q\
  <=> e^(Lambda_2- Lambda_1) d/dx (e^(-Lambda_2)y) = integral^x e^(-Lambda_1) q dt + lambda\
  <=> y = e^(Lambda_2)integral^x e^(Lambda_1-Lambda_2) integral^t e^(-Lambda_1) q ds dt + integral^x lambda e^(Lambda_1 - Lambda_2) + mu
$
#pagebreak()
#exemple[
  $y'' - 4y' + y = e^x$
  $ cases(lambda_1 + lambda_2 = 4, lambda_1 lambda_2 - lambda_2' = 1) $
  $ lambda_plus.minus = (4 plus.minus sqrt(12))/ 2 = 2 plus.minus sqrt(3) $
  $ (d/dx - lambda_-)(d/dx - lambda_+)y = e^x  $
  $ (d/dx - lambda_-)(y' -lambda_+ y) = e^x $
  $ y'' - (lambda_+ + lambda_-)y' + lambda_+ lambda_- y = e^x $
  $ Lambda_+ = (2 +sqrt(3))x, Lambda_- = (2-sqrt(3))x $
  $ <=> e^(Lambda_-) d/dx e^(-Lambda_-)  e^(Lambda_+) d/dx (y e^(- Lambda_+))  = e^x $
  $ => e^(Lambda_+ -Lambda_-) d/dx e^(-Lambda_+) y = 1/(1-Lambda_-) e^(x(1-Lambda_-)) + alpha $
  $ d/dx e^(-Lambda_+)y =  e^(x(1-Lambda_-) + x Lambda_- - x Lambda_+) 1/(1-Lambda_-) + alpha e^(Lambda_- - Lambda_+) $
  $ e^(-Lambda_+)y = 1/((1-lambda_-)(1-lambda_+)) e^(x (1-lambda_+)) + alpha/(lambda_- -lambda_+) e^(x(lambda_- - lambda_+ )) + beta  $
  $ y = 1/((1-lambda_-)(1-lambda_+)) e^x + alpha/(lambda_- - lambda_+) e^(lambda-x) + beta e^(lambda_+ x), alpha,beta in RR $
  $ = y_p + alpha' y_h_1 + beta y_h_2 $
]

#theorem[
  Si $y'' + a y' + b y = q $ est une EDOL2cc\
  alors $y = y_p + alpha y_h_1 + beta y_h_2$\
  avec $y_h_1 = e^(lambda_1 x), y_h_2 = e^(lambda_2 x) $ et $lambda_1,lambda_2 $ sont les racines de $(X^2 + a X + b) = 0$
]

#rem[
  $alpha$ et $beta$ sont fixés par les conditions initiales $y(x_0)=y_0,y'(x_0)=y'_0$
]

#exemple[
  $y'' + 1/x y'- 1/x^2 y = 0$ EDOL2h
  Trouver $lambda_1, lambda_2: RR^* arrow RR$ tq $(d/dx -lambda_1)(d/dx -lambda_2)y = 0$
  $ cases(lambda_1 + lambda_2 = -1/x, lambda_1 lambda_2 - lambda_2 ' = -1/x^2) $
  On peut prendre $lambda_1 = 0, lambda_2 = -1/x$
  $ (d/dx)(d/dx + 1/x)y = 0 $
  $ Lambda_1 = 0, Lambda_2 = -ln(abs(x)) $
  $ =>  d/dx e^(-ln(abs(x))) d/dx (y e^(ln(abs(x)))) = 0 $
  $ d/dx 1/abs(x) d/dx abs(x)y = 0  $
  $ 1/abs(x) d/dx abs(x) y = alpha  $
  $ d/dx abs(x) y = alpha abs(x) $
  $ abs(x) y = alpha (abs(x)x)/2 + beta  $
  $ y = alpha x/2 + beta/abs(x), alpha, beta in RR $
  Si $y(1)=0, y'(1)= 1$
  $y'(x) = alpha/2 - beta/(abs(x) x)$
  $cases(alpha/2 + beta = 0,alpha/2 -beta = 1) $
  $ => alpha = 1, beta = -1/2$
  $ y = x/2 - 1/(2abs(x)) $
]

#exemple[
  $y''+ y' + y = 0$
  $ Delta = -3, lambda_minus.plus = (-1 minus.plus i sqrt(3))/2  $ 
  $ y_h_minus.plus = exp(x/2 (-1 minus.plus sqrt(3) i)) $
  $ = e^(-x/2) e^(minus.plus sqrt(3)/2 i x) $
  $ = e^(-x/2) (cos(sqrt(3)/2 x) minus.plus i sin(sqrt(3)/2 x)) $
]
