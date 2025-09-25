#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 18",
  subtitle: "09/05/2025",
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

= Calcul Intégral

== Intégrale de Riemann

Motivation: Calculer l'aire sous une courbe $f(x)$

Soit $f: [a,b] arrow RR$ continue

#figure[
  #image("alternative_function.svg")
]

Quelle est l'aire de la région du plan délimitée par les droites $x=a, x=b$, l'axe $(O x)$ et la courbe $y=f(x)$

aire analytique:
$A_1-A_2+A_3$

aire géométrique:
$A_1+A_2+A_3$

idée: encadrer par des sommes d'aires de rectangles

#definition[
  Soit $[a,b] subset RR, n>=1$
  la partition régulière de taille $n$ de $[a,b]$ est
  $ P_n = {x_k = a+ (k(b-a))/n, x_n = b} $
  $P_n$ définit $n$ sous-intervalles
  $ I_k = [x_(k-1), x_k], k =1,...,n "de taille " (b-a)/n $
]

#exemple[
  $ P_n ([0,1])={0,1/n, 2/n, ..., (n-1)/n, 1} $
  $ P_n ([0,2])={0, 2/n, 4/n, ..., (2n-2)/n, 1} $
  $ P_n ([-1,5]) = {-1, (-n+6)/n, (5n-6)/n, 5} $
]

#definition("Sommes de Darboux")[
  Soit $f: [a,b] arrow RR$ continue,
  $P_n $ la partition régulière de $f$ en $n$ sous-intervalles
  $I_1,...,I_n$\
  $f$ continue sur $I_k$, donc elle atteint son $max M_k,$ et son $min m_k$ sur $I_k$
  $  m_k (x_k - x_(k-1)) <=A_k<= M_k (x_k - x_(k-1))  $
  $ m_k (b-a)/n <= A_k <= M_k (b-a)/n $
  $ S_n = sum_(k=1)^n M_k (b-a)/n = (b-a)/n sum_(k=1)^n M_k $
  somme de Darboux supérieure
  $ s_n = (b-a)/n sum_(k=1)^n m_k $
  somme de Darboux inférieur
  $ forall n>= 1, s_n <= A_f([a,b])=sum_(k=1)^n A_k <= S_n  $
]

#proposition[
  Soit $f: [a,b] arrow RR$ continue
  alors $ lim_(n arrow +oo) s_n = lim_(n arrow +oo) S_n  $
]

#rem[
  $f$ est dite intégrable sur $[a,b]$
  dans ce cas on définit l'intégrale de $f "sur" [a,b]$
  comme $ integral_a^b f(x)dd(x) := lim_(n arrow +oo) s_n = lim_(n arrow +oo) S_n $
  Elle est égale à l'aire analytique sous la courbe de $f$ entre $a$ et $b$
]

\ \

#exemple[
  $ f: [0,1] &arrow RR\ x &arrow.bar x $
  $ forall n>=1 P_n = {0,1/n,..., (n-1)/n, n} $
  $ S_n = sum_(k=1)^n k/n 1/n = 1/n^2 (n(n+1))/2 = 1/2+1/(2n) $
  $ s_n = 1/n^2 (n(n-1))/2 = 1/2 - 1/(2n) $
  $ integral_0^1 f = lim_(n arrow +oo) s_n = 1/2 $
]

#exemple[
  $integral_0^1(-x^2) dd(x)$

  $ P_n = {0,1/n, ...,n} $
  sur $I_k = [(k-1)/n, k/n]$
  $ M_k = f((k-1)/n) = -((k-1)/n)^2 $
  $ m_k = f((k)/n) = -(k/n)^2 $
  $ s_n = -1/n^3 sum_(k=1)^n (k^2) = -1/n^3 (n(n+1)(2n+1))/6 = -(n(n+1)(2n+1))/(6n^3) $
  $ S_n = -1/n^3 sum_(k=0)^(n-1) k^2 = -((n-1)(n)(2n-1))/(6n^3)  $
  $ integral_0^1 (-x^2) dd(x) = lim_(n arrow +oo) s_n = -1/3 $
]

#exemple[
  $ integral_0^1 1 dd(x) $
  $I_k = [(k-1)/n, k/n]$,
  $ M_k = 1 = m_k $
  $ S_n = sum_(k=1)^n 1/n = n/n = 1 $
  $ integral_0^1 1 dd(x) = 1 $
]

== Propriétés des intégrales
Soient $f,g$ continues sur $[a,b]$
$ a<b , integral_a^b f(x) dd(x) = "l'aire" A  $
$ integral_a^a f(x) dd(x) = 0 $
$ integral_b^a f = -integral_a^b f $
$ integral_a^b f = integral_a^c f + integral_c^b f $
$ integral_a^b (alpha f+beta g) = alpha integral_a^b f + beta integral_a^b g $
$ f(x)>=0 forall x in [a,b], integral_a^b >= 0 $
$ f(x)<=g(x) forall x in [a,b], integral_a^b f <= integral_a^b g\
  -abs(f(x)) <= f(x) <= abs(f(x)) \
  => - integral_a^b abs(f)<= integral_a^b f <= integral_a^b abs(f)
$

$ abs(integral_a^b f) <= integral_a^b abs(f)  $
$ f "paire sur" [-a,a] => integral_(-a)^a f = 2 integral_0^a f $
$ f "impaire sur" [-a,a] => integral_(-a)^a f = 0 $

#exemple[
  $ integral_0^1 (1-x^2) dd(x) = integral_0^1 1 dd(x) + integral_0^1 -x^2 dd(x) = 1-1/3 = 2/3 $
  $ integral_(-1)^1 (1-x^2) dd(x) = 2(2/3) = 4/3 $
]

== La fonction-aire

Soit $f: [a,b] arrow RR$ continue

#definition("Fonction-aire")[
  $ A_f: [a,b] &arrow RR\
  x &arrow.bar integral_a^x f(t) dd(t)
  $
  $A(a) = 0, A(b) = integral_a^b f$
]

#exemple[
  $f(x) = lambda in RR$
  $forall I_k, M_k = m_k = lambda$
  $ S_n = lambda (x-a)/n sum_(k=1)^n (1) = lambda (x-a) $
  $ A(x) = lambda (x-a) $
]

#exemple[
  $I_k = [((k-1)x)/n, (k x)/n] $
  $ M_k = (k x)/n$
  $ S_n = sum_(k=0)^x (k x^2)/n^2 = x^2/n n(n+1)/2 = x^2(1/2 + 1/2n) $
  $ integral_0^x = x^2/2 $
]
