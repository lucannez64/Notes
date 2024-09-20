#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse 1 Cours 4",
  subtitle: "20/09/2024",
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

#let fa=sym.forall
#let ex=sym.exists
#let eps= sym.epsilon
#let eqi = sym.arrow.l.r.double.long

= Suites majorée, minorée

majorée si $exists M "tq" a_n <= M forall n$ #linebreak()

minoré si $ex m "tq" fa n in NN a_n >= m$ 

bornée si majorée et minorée

== Ex 
+ $ abs(a_n) = abs(7 cos(sqrt(n)) -6sin(n²+2)) <= abs(7cos(sqrt(n))) +abs(6sin(n²+2)) <= 7+6 = 13 $ $ eqi -13 <= a_n <= 13 space  fa n $

+ $ a_n = (-1)^n n $ ni majorée ni minorée

= Monotone

croissante si $a_n <= a_(n+1)$

décroissante si $a_n >= a_(n+1)$

= Limite: $a_n arrow L$

== Tendre vers $0$

$(a_n) arrow 0$ si $fa eps > 0, ex N "tq" fa n>= N, a_n in [-eps, eps] eqi abs(a_n) <= eps$
$ lim_(n arrow +infinity) a_n = 0 $

=== Exemple

$a_n = 1/n, n>= 1$

Soit $eps > 0$
On a que $ a_n in [-eps, eps] eqi abs(a_n) <= eps eqi 1/n <= eps eqi n>= 1/eps $

Soit $N colon.eq floor(1/eps) +1 $ si $n>= N eqi n>= 1/eps eqi a_n in [-eps, eps] $

== Tendre vers $L$


$ (a_n) arrow L "si" lim_(n arrow +infinity) (a_n - L) = 0 $  $ eqi fa eps > 0, ex N "tq" fa n>= N, (a_n-L) in [-eps, eps] eqi abs(a_n-L) <= eps $
$ lim_(n arrow +infinity) a_n = L eqi (a_n) in [L-eps, L+eps] $

=== Exemple

+ $a_n = n(3+2/n)/n(2+1/n) $ 

On a $ abs(a_n - 3/2) = abs(-1/(2(2n+1)) ) = 1/(2(2n+1)) $

Fixons $eps > 0$
On aura $ abs(a_n - 3/2) <= eps  eqi 1/(2(2n+1)) <=  eps $
$ eqi n >= 1/2 (1/(2eps) - 1) $

Soit $N colon.eq floor(1/2 (1/(2eps) - 1)) +1$
$fa n>= N, abs(a_n -3/2) <= eps$

= Suite convergente

Si $ex L in RR, a_n arrow L, (a_n)$ est dite convergente
Sinon $(a_n)$ est divergente

== Exemple

+ $a_n = (-1)^n$ est divergente
+ $a_n = (3n +2)/(2n +1)$ est convergente

= Propriétés de la limite

*Lemme:* Si une suite est convergente, alors sa limite est unique.

*Lemme:* Si une suite converge, alors elle est bornée

*Lemme:* Si $a_n arrow L$ alors $abs(a_n) arrow abs(L)$

*Lemme:* (Opérations sur les limites) 
  - $lim(a_n +b_n) = lim(a_n) + lim(b_n)$
  - $lim(a_n dot b_n) = lim(a_n) dot lim(b_n)$
  - $lim(a_n/b_n) = lim(a_n)/lim(b_n)$ si $lim(b_n) != 0$
  - $a_n <= b_n$, alors $lim(a_n) <= lim(b_n)$

*Preuve lemme addition:*

On a $abs((a_n+b_n) - (L_1+L_2)) = abs(a_n - L_1 + b_n -L_2 )<= abs(a_n-L_1) + abs(b_n-L_2)$

Soit $eps > 0$ 
- Comme $a_n arrow L_1, ex N_1, abs(a_n-L_1) <= eps/2 space fa n >= N_1$
- Comme $b_n arrow L_2, ex N_2, abs(b_n-L_2) <= eps/2 space fa n >= N_2$

Soit $N = max(N_1, N_2)$
Si $n>= N$ alors $abs((a_n+b_n) - (L_1+L_2)) = abs(a_n - L_1 + b_n -L_2 )<= abs(a_n-L_1) + abs(b_n-L_2) <= eps$

== Exemple

$ x_n = (6n+4)/(8n³+4n²) = n(6 + 4/n)/n³(8+4/n) = (6+4/n)/n²(8+4/n) $
$ lim(x_n) = (lim(6)+4lim(1/n))/(lim(n²)(lim(8)+4lim(1/n))) = 3/4 * 0 = 0 $

= Théorème des deux gendarmes

Soit $(a_n), (b_n) "et" (x_n)$

+ $a_n <= x_n <= b_n $ pour tout n suffisamment grand
+ $lim(a_n)  = lim(b_n) = L$
Alors $(x_n)$ converge et sa limite vaut $L$

== Exemple

$ x_n = (3cos(sqrt(n)) + sin(n²+1))/n $
$ 0 <= abs(x_n) <= 4/n $
$ lim(4/n) = 0 $
Ainsi $lim(abs(x_n)) = 0$ et $lim(x_n) = 0$

$ x_n = 2^n/n! $

Montrons que $x_n arrow 0$
$ 0<=x_n = (2*2*2*2...)/(n(n-1)...(2)(1)) = 1 * 2 * 2/3 * 2/4 *...* 2/n <= 4/n $

$ lim(4/n) = 0 $

Donc $x_n arrow 0$

