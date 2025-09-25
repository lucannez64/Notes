#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 13",
  subtitle: "26/05/2025",
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

= Utilité des écritures cartésiennes & polaires, forme exponentielle

Forme cartésienne $a + i b$, plus pratique pour les sommes

Forme polaire $r(cos(theta)+i sin(theta))$ plus pratique pour les multiplications

#proposition[
  $z_1 = [r_1, theta_1], z_2 = [r_2, theta_2] in CC$\
  + $z_1 z_2 = [r_1 r_2, theta_1 + theta_2]$
  + $z_1/z_2 = [r_1/r_2, theta_1- theta_2]$
  + Formule de Moivre $ forall z in CC, forall n in NN, z=[r, theta], z^n = [r^n, n theta] $
  + Sous forme cartésienne $ z = [r, theta] = r (cos(theta) + i sin(theta)),\
   z^n = r^n (cos(theta)+ i sin(theta))^n = r^n (cos(theta n) + i sin(n theta))\ (cos(theta)+i sin(theta))^n = cos(n theta) + i sin(n theta)  $
]

#rem[
  Pour $n=2$
  $ (cos(theta)+ i sin(theta))^2 = cos(2theta) + i sin(2theta) \
    cos(theta)^2 + 2i cos(theta) sin(theta) - sin(theta)^2 = cos(2theta) + i sin(2theta) \
    cases(cos(2theta)=  cos(theta)^2 -sin(theta)^2, sin(2theta) = 2 cos(theta) sin(theta))
  $
  Plus généralement la formule de Moivre permet de donner une formule pour $cos((n+1)theta), sin((n+1)theta)$ en fonction de $cos(n theta), sin(n theta)$
  $ => cos(n theta) = T_n (cos(theta), sin(theta)) $
  ou $T_n$ est le $n$ème polynôme de Tchebychev
]

#exemple[
  $z_1 = [sqrt(2), pi/12], z_1^6 = [8, pi/2]$
]

== Forme exponentielle

$ z = [r, theta] = r exp(i theta) $
$ z_1, z_2 in CC z_1 z_2 = r_1 r_2 exp(i theta_1) exp(i theta_2) = r_1 r_2 exp(i (theta_1 + theta_2)) $

$ forall n in CC, e^z = sum_(k=0)^oo z^k/k! $

= Géométrie du plan complexe

- Translations dans $RR^2 <=> $sommes dans $CC$ 
$ z_0 &= a+ i b in CC\
  CC &arrow CC\
  z &arrow.bar z+z_0
$
est une translation dans $RR^2$
- Homothéties dans $RR^2 <=>$ multiplication par $lambda in RR$ dans $CC$

  $ CC &arrow CC \
 z &arrow.bar lambda z  
$


- Rotations Tout complexes de module $1$ est une rotation centrée en l'origine
$ omega = [1, theta]\
  CC arrow CC\
  z arrow z omega
$

Rotations autour de $z_0 in CC$, dans $phi$
$ z arrow (cos(phi) + i sin(phi))(z-z_0) + z_0 \ = z(cos(phi)+ i sin(phi)) + z_0(1 - cos(phi) -i sin(phi) ) \
  r_z_0(z) = e^(i phi) z + z_0(1- e^(i phi))
$
 
= Racine nème de nombres complexe

#theorem[
  $forall n in NN^*$, l'ensemble de solutions de l'équation $z^n = 1$ est $S={[1,k (2pi)/n], k in bracket.double 1, n bracket.r.double}$
]

#proof[
  $z= [r, theta]$
  $z^n = [r^n, n theta] = 1 = [1,k 2pi] => r= 1, theta = k (2pi)/n$
]

Géométrique les solutions de $z^n=1$ forment un n-gone régulier centré en l'origine et de rayon $1$

= Polynômes

$z^n = omega, S={[root(n,r) ,  (k (2pi) +theta )/n], k in bracket.double 1, n bracket.r.double}$
$z^3 =  8i = [2^3, pi/2], S = {[2, (k (2pi))/3 + pi/6, k = 1,2,3]} $

#definition[
  Soit $A$ un anneau commutatif et soit $X$, un polynôme à coeffiients dans $A$ est une expression,
  $ p(X)= a_n X^n + a_(n-1) X^(n-1) + ... + a_1 X + a_0, a_i in A  $ 
]

#definition[
  $A[x] = {p(x) | forall a_i in A } $
]

#definition[
  $deg(p) = max({n | a_n != 0}), p!= 0$ on pose $deg(0) = -oo$
  $(p+q)(x) = sum_(k=0)^(max{n,m}) (a_k+b_k) x^k $
]
