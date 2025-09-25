#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse A Cours 6",
  subtitle: "31/03/2025",
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

== Suite et fin

$ abs(x) <= a $
$ <=> cases(x<=a,"et", x>=-a ) $ 

Généralisation:

$ abs(f(x)) <= g(x)  $
$ <=> cases(g(x)>= f(x),"et", f(x)>= -g(x)) $

=== Exemple

Résoudre $x in RR$

$ abs(x) + (x-1)/2 < 0 $

$ abs(x) <= (1-x)/2 $
$ f(x) = x ,g(x) = (1-x)/2 $
$ <=> cases(x<= (1-x)/2, "et", x>= (x-1)/2) $
$ 1. space x <= (1-x)/2 <=> 2x <= 1-x <=> 3x <= 1 <=> x < 1/3 <=> S_a = ]-infinity, 1/3] $
$ 2. space x >= (x-1)/2  <=> 2x >= x-1 <=> x >= -1 <=> S_b = [-1, +infinity[ $
$ S = S_a sect S_b = [-1, 1/3] $

=== Exemple 2

$ x in RR, "en fonction d'un paramètre" m in RR$
$ abs(x-m)-1 < 2x $
$ abs(x-m) < 2x +1 $
$ f(x) = x-m, g(x) = 2x+1 $
$ <=> cases( x-m < 2x +1, "et", x-m > -2x - 1) $
$ 1. space x-m < 2x+1 <=> -m-1 < x <=> S_a = ]-m-1, +infinity [ $
$ 2. space x-m > -2x-1 <=> (m-1)/3 < x <=> S_a = ](m-1)/3, +infinity [ $
$
<=> S = cases(
  "si" m>0 space ((m-1)/3, +infinity) \
  "si" m<0 space (-m-1, +infinity) \
)
$

==

$ abs(x) >= a $
$ <=> cases( x>= a, "ou", x<=-a ) $

Généralisation:

$ abs(f(x)) >= g(x) $
$ <=> cases(f(x)>= g(x), "ou", f(x)<= -g(x) )  $

=== Exemple

$ abs(x-2) > (2x-4)/x $
$ D_(d é f) = R^*  $
$ <=> cases(x-2 > (2x-4)/x, "ou", x-2 < (-2x+4)/x ) $
$ x-2 > (2x-4)/x <=> x-2 (-2x+4)/x > 0 <=> (x^2-4x +4)/x > 0 <=> (x-2)^2/x > 0 <=> S= (0, 2) union (2, +oo) = R^* \\ {2} $

== Inéquation radicielles et racines 

$ a in RR_+ "et" n in NN \\ {0} $
$ exists! x in RR_+ "tq" x^n = a "notée" root(n,a) $

=== Exemple

$ a = 1291340.173324 space n=4 $
$ x = root(4, 1291340.173324) $

===

$ x^n = a <=> "si n pair" S = cases(
  {plus.minus root(n,a)} "si" a>=0,
  emptyset.rev "si" a < 0

)

"sinon" S = cases(
  {root(n, a)} "si" a>=0,
  {-root(n,a)} "si" a<0
)
$
