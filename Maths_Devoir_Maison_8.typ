#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths",
  subtitle: "Devoir Maison n°8",
  author: "Lucas Duchet-Annez (Rédacteur) et Ugo Thomas",
  affiliation: "Fénelon Notre-Dame",
  year: "2023/2024",
  class: "Terminale B",
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering : none)
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

= Exercice 2

== 1

#block(fill: macchiato.yellow, inset: 8pt, radius: 4pt, [Déterminer les distances AD et CD en fonction de $theta$ et les temps $t_1$ et $t_2$ mis par le lapin et le camion pour parcourir respectivement les distances AD et CD.])

On a $cos(theta) = (A B)/(A D) arrow.l.r.double.long A D = 4/cos(theta) $ 
et $tan(theta) = (B D)/4 arrow.l.r.double.long B D = 4 tan(theta)$ #linebreak()
De plus $C D = C B + B D$ donc $ C D = 7 + 4 tan(theta)$

$60$ km/h $= 50/3$ m/s
et $30$ km/h $= 25/3$ m/s

$v = d/t$

Ainsi $t_1 = A D times 3/25 = 12/(25 cos(theta))$ et $t_2 = C D times 3/50 = (21+12 tan(theta))/50$

== 2

#block(fill: macchiato.yellow, inset: 8pt, radius: 4pt, [Montrer que le lapin aura traversé la route avant le passage du camion si et
seulement si $f(theta) > 0$.])

Pour que le lapin travserse avant le passage du camion il faut que la relation suivante soit vraie 
$ t_1<t_2 $ 
$ arrow.l.r.double.long (21+12 tan(theta))/50 > 12/(25 cos(theta)) $
$ arrow.l.r.double.long 21 cos(theta) + 12 sin(theta) > 24 $
$ arrow.l.r.double.long 12 tan(theta) - 24/cos(theta) + 21 > 0 $
$ arrow.l.r.double.long 2 tan(theta) - 4/cos(theta) + 7/2 > 0 $
$ arrow.l.r.double.long f(theta) > 0 $

Ainsi pour que le lapin aura traversé la route avant le passage du camion si et seulement si $f(theta) > 0$

== 3

#block(fill: macchiato.yellow, inset: 8pt, radius: 4pt, [Conclure.])

On cherche les variations de $f$ #linebreak()
$ (1/v)' = -v'/v^2 text("avec") v = cos(theta) text("on a") v'(theta) = -sin(theta) $
Ainsi $ (1/cos(theta))' = sin(theta)/cos(theta)^2 $ et
$ f'(theta) = 2/cos(theta)^2 - 4 sin(x)/cos(theta)^2 $
$ f'(theta) = 2/cos(theta)^2 ( 1 - 2 sin(theta)) $

$ f'(theta) > 0 $
$ arrow.l.r.double.long 1 - 2 sin(theta) > 0 text(" car ") 2/cos(theta)^2 > 0 $ 
$ arrow.l.r.double.long sin(theta) < 1/2 $
$ arrow.l.r.double.long  0 lt.eq theta < pi/6 $ 

Par conséquent $f$ est croissante sur $ [0; pi/6[$ et décroissante sur $ ]pi/6; pi/2[ $

La fonction $theta arrow.r 1/cos(theta)$ est continue sur l'intervalle $[0;pi/2[$ car c'est la composée de la fonction cosinus (continue sur $[0;pi/2[$) et de la fonction $theta arrow.r 1/x$ (continue sur $[0; pi/2[$). De plus, la fonction $theta arrow.r tan(theta)$ est continue sur l'intervalle $]0,pi/2[$.

La fonction $f$ est donc continue sur l'intervalle $[0,pi/2[$ comme somme et produit de fonctions continues sur cet intervalle.

Sur l'intervalle $[0;pi/6[$

$f$ est continue et strictement croissante
$ f(0) = -1/2$ et $f(pi/6) = (7-4 sqrt(3))/2 approx 0.03 > 0 $ donc $ 0 in [-1/2; (7-4 sqrt(3))/2[ $

Selon le théorème de la bijection $ f(theta) = 0 $ a une solution sur $ [0; pi/6[$ notée $alpha$

Sur l'intervalle $]pi/6;pi/2[$
$f$ est continue et strictement décroissante
$ f(pi/6) = (7-4 sqrt(3))/2 approx 0.03 > 0 $ et $ lim_(theta arrow.r pi/2) f(theta) = lim_(theta arrow.r pi/2) 7/2 + 2 sin(theta)/cos(theta) - 4/cos(theta) = lim_(theta arrow.r pi/2) 1/cos(theta) ( 7/2 cos(theta) + 2 sin(theta) - 4 ) $

$ lim_(theta arrow.r (pi/2)^-) 1/cos(theta) = +infinity $
$ lim_(theta arrow.r (pi/2)^-) cos(theta) = 0 $
$ lim_(theta arrow.r (pi/2)^-) sin(theta) = 1 $
$ lim_(theta arrow.r pi/2) f(theta) = lim_(theta arrow.r pi/2) 1/cos(theta)( 1 - 4 )= lim_(theta arrow.r pi/2) 1/cos(theta) (-3) = lim_(theta arrow.r pi/2) -infinity $

Donc $ 0 in ]-infinity;(7-4 sqrt(3))/2[ $

Selon le théorème de la bijection $ f(theta) = 0 $ a une solution sur $ ]pi/6; pi/2[$ notée $beta$

Ainsi le domaine de la solution est $[alpha; beta]$

On trouve approximativement à l'aide de la calculatrice par balayage $alpha approx 0.395$ et $beta approx 0.644$ 
Par conséquent le lapin survivra si l'angle $theta$ est entre $0.395$ radians et $0.644$ radians
