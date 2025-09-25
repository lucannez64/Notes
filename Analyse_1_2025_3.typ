#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse 1 2025 3",
  subtitle: "24/09/2025",
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

= Suite monotone et bornée
#thm[
  Soit $(a_n)$ une suite monotone et bornée $<=> (a_n)$ converge. 
]

#proof[
Soient $(a_n)$ une suite monotone et bornée
et $A := {a_n | n in NN} subset RR$\
  On a : $A$ est majoré car $(a_n)$ est bornée \
  Or pour tout sous-ensemble dans $RR$ majoré $exists! sup A$ d'après le théorème de la borne supérieure donc on pose $L := sup A $
  $ forall n in NN a_n <= L $
  $ forall epsilon > 0, exists n_* | L-epsilon <= a_n_* $
  $ L-epsilon <= a_n_* <= a_(n_*+1) <= ... <= L $
  $ <=> epsilon >= |a_n_* - L| $
  $ forall epsilon > 0 exists N | n>= N |a_n - L| <= epsilon => (a_n) arrow L $
]

= Suite qui tendent vers l'infini

#definition[
  Soit $(a_n)$ une suite qui tend vers $+infinity$ $<=> forall M > 0, exists N "tq" forall n>=N, a_n >= M $
  
  Soit $(a_n)$ une suite qui tend vers $-infinity$ $<=> forall m < 0, exists N "tq" forall n>=N, a_n <= m $
]

= Comportement
Considérons les suites suivantes
$
  e_n = r^n, r>1\
  p_n = n^alpha, alpha>0\
  l_n = log_b(n), b>1
$

$
  (e_n) arrow +infinity, (p_n) arrow +infinity, (l_n) arrow +infinity 
$

#thm[
  $ lim_(n arrow + infinity) p_n/e_n = 0 $
  $ forall alpha,beta > 0 (l_n)^beta/(p_n)^alpha = 0 $
]

#proof[
 Soit $a_n =  n^alpha/r^n $  
  $ a_(n+1)/a_n = ((n+1)/n)^alpha (1/r) = (1+1/n)^alpha (1/r) $
  On a $exists N | forall n>N =>  (1+1/n)^alpha < 1 + 1/r $ car $(1+1/n)^alpha arrow 1 $
  $ forall n > N (1+1/n)^alpha (1/r) < 1/r + 1/r^2 $
  Soit $rho = (1+(1/r))/r < 1, 1/r^2 < 1/r < 1$
  $ a_(n+1)/a_n < rho => a_(n+1) < rho a_n => a_(n+k) < rho^k a_n $
  Soit $n=N, forall  m>N, k=m-N, a_m < rho^(m-N) a_N $
  $ rho < 1 => rho^(m-N) arrow 0, "quand" m arrow +infinity, "et " a_N "fixé", a_m => 0 $
]


= Indétermination

#figure[
  #image("i_suites_tableau_indeterminations.jpg")
]

- $infinity/infinity$ Terme en évidence
- $infinity - infinity$ Méthode du conjugué $a-b arrow a²-b²$
Toutes les indéterminations sont équivalentes

== $0/0$

#thm[
  Soit $(x_n), x_n arrow 0, x_n != 0, 0<= x_n <=2pi $
  $ lim_(n arrow +infinity) sin(x_n)/x_n = 1 $
]

#proof[
  La fonction $x arrow.bar sin(x)/x $ est paire
  On pose $x_n > 0$ par parité
  On a $0<x_n<= pi/2, forall n$ grand
  $ 1/2 cos(x_n) sin(x_n) <= 1/2 x_n <= 1/2 tan(x_n) $  
  $ <=> cos(x_n) <= x_n/sin(x_n) <= 1/cos(x_n) $
  $ <=> 1/cos(x_n) <= sin(x_n)/x_n <= cos(x_n) $
  $ lim sin(x_n)/x_n = lim 1/cos(x_n) = lim cos(x_n) = 1 $
]

