#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 14",
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

= Polynômes

#exemple[
  $ (x+a)(x+b) = x^2 + (a+b)x +  a b. space a,b in KK $
]

#exemple[
  $ (x+1)^3 = x^3 + 3x^2 + 3x+ 1 $
  $ (x+1)^4 = x^4 + 4x^3 + 6x^2 + 4x + 1 $
  $ (a+b)^n = sum_(k=0)^n vec(n,k) a^k b^(n-k) $
]

#definition[
  Un polynôme $P in A[x] without A$ càd non constant,
  est dit réductible sur $A$ s'il existe $q,r in A[x]$
  $ p(x)=q(x)r(x), 0<deg(q)< deg(p), 0<deg(r)<deg(p) $
  On dit que $P$ est irréductible s'il n'est pas réductible
  $ p(x)=q(x)r(x), deg(p)=deg(q) "ou" deg(p)=deg(r)  $
]

#exemple[
  Les polynômes de degré $1$ sont irréductibles.
  + $ a x^2 + b x + c$ est irréductibles sur $A <=> b^2-4a c "n'est pas un carré" <=> "pour " RR,  b^2 - 4 a c < 0 <=> p "ne possède pas une racine dans "RR $
  + $ x^2 - 2 in QQ[x]$ irréductible sur $QQ$, $ x^2 - p, p "premier"$ n'est pas réductible sur $QQ$ mais l'est sur $RR$
  + $ x^4 - 1 = (x^2-1)(x^2+1)\ = (x-1)(x+1)(x^2+1)\ = (x-1)(x+1)(x-i)(x+i) in CC[x] $
]

Pour faciliter la factoriser on souhaite avoir au moins une racine, $x_0 in A$

#thm[
  + $ p in A[x], x_0 in A$ alors $p(x_0) = 0 <=> exists q in A[x] "tq" p(x) = (x-x_0)q(x)$
  + $ forall p,q in A[x], exists s,t in A[x] "tq" p(x) = q(x) s(x) + t(x), deg(t)<deg(q) $
  + $ p in A[x], deg(p) >= 1, x_0 in A, exists q in A[x] "tq"\ p(x) = (x-x_0)q(x) + p(x_0), deg(q) = deg(p)-1 $
]

== Schéma de Hörner

Méthode pratique pour trouver les coeffs de $q$ en fonction de $p$
$ p(x) = a_n x^n + ... + a_0, a_i in A $
$ q(x) = b_(n-1) x^(n-1) + ... + b_0, b_i in A $
$ b_j = b_(j+1) x_0 + a_(j+1) $
$ a_0 = p(x_0) -b_0 x_0, p(x_0) = a_0 + b_0 x_0 $
#figure[
  #image("i_complexes_shema_Horner_theorique.jpg")
]

#exemple[
  $p(x) = x^3 + 7x^2 + 4x - 12$
  Effectuer la division de $p$ par $x-1$
  #tablem(ignore-second-row: false)[
    |-- |$1$|$7$|$4$|$-12$|
    |$1$|-- | 1 | 8 | 12  |
    |-- | 1 | 8 |12 |  0  |
  ]
]

#theorem("Fondamental de l'algèbre, Cauchy-Artin")[
  $forall p in CC[x] without CC,$ possède au moins une racine $in CC$
  - $exists z_1 in CC| p(z_1) = 0, exists z_2,... z_n in CC$ si $deg(p)=n$
  $p(x) = a_n (x-z_1)(x-z_2)...(x-z_n)$ 
  donc tout polynôme complexe possède $n$ racine (comptés avec leur multiplicité)
  - $p in RR[x], "et" p(z_0) = 0, z_0 in CC$ alors $p(overline(z)_0)=0$
  - $p in RR[x], p(z_0)= 0, z_0 in CC$, $p(x)$ est divisble par $ (x-z_0)(x-overline(z)_0) = x^2 - (z_0+overline(z)_0) x + z_0 overline(z)_0 \ = x^2 + 2 Re(z_0) + abs(z_0)^2 in RR[x] $
  - $p(x) = a x^2+ b x + c in RR[x]$ possède soit 2 racines complexes conjuguées (irréductible dans $RR$) soit 2 racines réelles  
  - $p(x) in RR[x], deg(p) >=1$ $ p(x) = \ a(x-x_1)^(n_1)...(x-x_p)^(n_p) (x^2 - 2Re(z_1) + abs(z_1)^2)^(m_1) ... (x^2 - 2 Re(z_q) + abs(z_q)^2)^(m_q) $
] 

#exemple[
  $ x^4 + 1 <=> x^4 = [1, pi] \ <=> x = [r, theta] | x^4 = -1, [r^4, 4 theta] = [1,pi+ 2pi k] \ <=> x = [1, pi/4 + (pi k)/2] \ <=> x = [1, pi/4], [1, 3pi/4], [1, 5pi/4], [1, 7pi/4] $
  $ x^4 + 1 = (x-(1+i)/sqrt(2))(x-(1-i)/sqrt(2))(x-(-1+i)/sqrt(2))(x-(-1-i)/sqrt(2)) $
  Factorisation sur $RR$
  $ x^4 +1 = (x^2 - sqrt(2)x + 1 )(x^2 + sqrt(2)x + 1  ) $
  Ce polynôme est irréductible sur $QQ[x]$
]

#thm[
  $forall n in NN, exists p(x) in QQ[x] "irréductible" deg(p) = n$ 
  $ p(x) = x^n + x^(n-1) + ... + 1$
]
