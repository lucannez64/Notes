#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse 1 2025 1",
  subtitle: "10/09/2025",
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

= Fonctions

$ f: A &arrow B\
     x &arrow.bar y=f(x)
$

== Ensemble Image

#definition[
  L'ensemble image de $f: A arrow B$ est $Im(f) := { y in B : exists x in A | f(x)=y}$
]

#exemple[
  $ B = { Delta, Gamma, Psi} $
  $ A = {1, 2 , 3, 4} $
  $ f(1) = Delta, f(2)= Gamma, f(3)= Delta, f(4) = Gamma $
  $ Im(f) = {Delta, Gamma} $
]

#exemple[
 $ f: RR without {-2} &arrow RR \
      x &arrow.bar y=f(x)=(x+1)/(x+2)
$ 

L\'ensemble image ?
Soit $y in RR$, et considérons
  $ y &= f(x) = (x+1)/(x+2) \
    (x+2)y &= x+1, x != -2 \
    x(y-1) &= 1-2y \
  $

  Si $y=1$ on a $x*0 =  -1$ qui n'a pas de solutions.\
  Si $y!=1$:
  $ x = (1-2y)/(y-1) "qui est préimage de y." $

  $=> Im(f) = RR without {1}$
  
]

== Surjectivité

#definition[
  $f: A arrow B$ est surjective si $Im(f) =  B$
]


#exemple[
  $ f: ZZ &arrow ZZ\
       x   &arrow.bar y=f(x)=x+1
  $ est surjective puisque $ forall y in ZZ, y=f(x)=x+1 <=> x=y-1 $ est préimage de $y$
  $=> Im(f) = ZZ$
]

== Injectivité

#definition[
  $f: A arrow B$ est injective si $ forall (x,x') in A^2, x!=x' ==> f(x) != f(x') \ <=> forall (x,x') in A^2, f(x) = f(x') => x=x'  $
]

#exemple[
  $ f: QQ &arrow QQ \
    x &arrow.bar f(x)= (x²)/(x²+1)
  $

  Ensemble image ?
  $ y = x^2/(x^2+1) \
    
  $

  Injectivité ?
  $
    "Soient" x,x' &in QQ "On a:" f(x)=f(x')\
    &<=> x^2/(x^2+1) = (x')^2/((x')^2 + 1) \
    &<=> x^2(x'^2+1) = (x')^2(x^2 +1 )\
    &<=> x^2-(x')^2  = 0 \
    &<=> (x-x')(x+x') = 0\
  $
  Si $x-x'=0 => x=x'$\
  Si $x+x'=0$ => $x=-x'$\
  Donc toute paire $x,x' = -x$ donne $f(x)=f(x')$\
  En partie, si $x!=0, -x != x$ et $f(x)= f(-x)$\
  Donc $f$ n'est pas injective
]

#rem[
  En définissant $ f: QQ_+ &arrow QQ\ x &arrow.bar f(x)=(x²)/(x^2+1) $
  est injective
]

== Bijectivité

#definition[
  $f: A arrow B$ est bijective si elle est injective et surjective
]

Soit $y in B$ fixé.\
- Comme $f$ est surjective, $exists x in A | f(x) = y$
- Comme $f$ est injective, ce $x$ est l'unique préimage de $y$

On a ainsi défini la réciproque de $f$

#definition[
  La fonction réciproque $f$ est notée $ f^(-1): B &arrow A\
    y &arrow.bar x = f^(-1)(y)
  $
]

#exemple[
  $ f: QQ &arrow QQ \
    x &arrow.bar y = f(x)=(x-5)/3
  $

  Injectivité?
  $ x,x' in QQ. f(x)= f(x') \
    (x-5)/3= (x'-5)/3\
    <=> x = x'
  $

  Surjectivité?
  $
    y in QQ. y = f(x) = (x-5)/3 <=> 3y+5 = x\
    "est préimage de "y "et" x in QQ
  $
  $f$ est bijective\
  Sa réciproque : $f^(-1)(x) = 3y+5 $
]

== Cas des fonctions réelles

Un fonction est surjective si toute droite horizontale d\'équation $y=b, b in B$ coupe le graphe f en au moins un point


Un fonction est injective si toute droite horizontale d\'équation $y=b, b in B$ coupe le graphe f en au plus un point

= Preuve par récurrence

$ forall n >= 1, cal(P)(n) "bien définie"$

But: Montrer que $forall n>=1, cal(P)(n)$ est vraie.

Idée:
    - Montrer que $cal(P)(1)$ est vraie
    - Montrer que si $cal(P)(n)$ est vraie alors $cal(P)(n+1)$ est vraie aussi

#exemple[
  Montrons que $forall n>= 1$, $cal(P)(n) :  sum_(k=1)^n k = (n(n+1))/ 2$ 
  Initialisation: $n = 1$
  $
    sum_(k=1)^1 k = 1, (n(n+1))/2 = 1 
    => cal(P)(1) "est vraie"
  $

  Soit $k$ tel que $cal(P)(k)$ soit vraie\
  On a $ sum_(t=1)^(k+1) t = sum_(t=1)^(k) t + k+1 = k(k+1)/2 + k + 1\
    = (k(k+1)+2(k+1))/2  = ((k+1)(k+2))/2 \
    => cal(P)(k+1) "est vraie aussi"
  $
  $ => cal(P)(n) "vraie" forall n>=1 $
]


