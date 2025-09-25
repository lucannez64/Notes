#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "@preview/wordometer:0.1.4": *
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse A Cours 5",
  subtitle: "24/03/2025",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

== Equation du 2ème degré

Trinôme du second degré

$P(x) = a x^2 + b x + c | a,b,c in RR$

Pour trouve le signe de $p(x)$ on veut factoriser $p(x)$ sous la forme $ a(x-x_1)(x-x_2), x_1,x_2 in RR $
$ s g n(p(x)) = s g n(a) s g n (x-x_1) s g n(x-x_2) $

Cherchons les $x$ tels que $p(x) = 0$
$ a x^2 + b x = -c $
$ <=> 4a^2 + 4a b x = -4 a c $
$ (2a x +b)^2 = 4a^2 x^2 + 4 a b x + b^2  $
$ <=> (2a x + b)^2 - b^2 = -4a c $
$ <=> (2a x + b)^2 = b^2 -4 a c $
$ "Si" b^2 - 4 a c < 0, S = emptyset.rev $
$ "Si" b^2 -4 a c = 0, S = {-b/(2a)} $
$ "Si" b^2 -4 a c > 0,  2a x + b = plus.minus sqrt(b^2 - 4 a c)  $
$ <=> x = (-b plus.minus sqrt(b^2 - 4 a c))/(2a) $

=== Exemples

$p(x) = k x^2 - 2(k+1)x + 5 - 1/k$ \
Déterminer $k in RR$ tq le graphe de $p(x)$ soit situé en dessous de $O_x$ strictement ($s g n(a) < 0 "et" Delta < 0$)
$ Delta(k) = (-2(k+1))^2 - 4 k (5-1/k) $
$ = 4(k^2 +2k + 1) - 20k + 4 $
$ = 4(k^2 -3k + 2) $
$ = 4(k-1)(k-2) $
$ Delta < 0 <=>  k in ]1,2[ $
Il n'y a donc pas de solution
$ S = emptyset.rev = RR_-^* \u{2229} ]1,2[ $

== Equations avec valeur absolue
La valeur absolue de $x$ est 
$ |x| := cases( x "si" x >= 0, -x "si" x < 0) $
$ |dot| :  RR arrow RR^+ $
$ |dot| :  x arrow.bar abs(x) $
#let f1(x) = calc.abs(x) 
#canvas( {
  import draw: *

  plot.plot(size: (12, 8),
    x-tick-step: 1,
    y-tick-step: 0.5, y-min: -2.5, y-max: 2.5,
    legend: "inner-north",
    {
      let domain = (-2.5, +2.5)

      plot.add(f1, domain: domain, label: $ abs(x)  $,
        style: (stroke: black))
    })
})

== Equations avec $||$

+ $ abs(x) = a <=> a>=0 "et" x = plus.minus a $
+ $ abs(f(x)) = g(x) <=> (g(x) >= 0)and (f(x)=plus.minus g(x)) $

Il faut donc déterminer le domaine de positivité
$ D_(p o s) (g) = {x in RR | g(x) >= 0} $
$ S inter D_(d é f) inter D_(p o s) $

=== Exemples

$ abs(x^2 + 2x-5) = x+1 $
$ x in S_a <=> (x-3)(x-2) = 0 <=> x in {-3, 2} $
$ x in S_b <=> x^2+2x-5 = -x -1 <=> (x+4)(x-1) = 0 <=> x in {-4, 1} $
$ S = D_(d é f) inter D_(p o s) inter (S_a union S_b) $
$ S = RR inter [-1, +infinity[ inter {-4, -3, 1, 2} $
$ S = {1, 2} $
