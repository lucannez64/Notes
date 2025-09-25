#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, dd
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse B Cours 20",
  subtitle: "13/05/2025",
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

= Le théorème fondamental de l'analyse

#theorem[
  Soit $ f: [a,b] arrow RR "continue", A: [a,b] arrow RR\
  x arrow.bar integral_a^x f(t) dd(t)
  $
  la fonction aire associée alors $A$ est dérivable sur $]a,b[$ et $forall x in ]a,b[, A'(x) = f(x)$
]

la preuve du TFA utilise:

#theorem("Moyenne du calcul intégral")[
  Soit $f:[a,b] arrow RR "continue"$ alors
  $ exists c in ]a,b[ "tq" integral_a^b f(t) dd(t) = (b-a) f(c) $
]

#proof[
  $f$ continue atteint son minimum m et son maximum M sur $[a,b]$
  soient $C_m, C_M in [a,b]$ tq $f(C_m)=m$ et $f(C_M)=M$
  $ forall x in [a,b] m<= f(x)<= M $
  donc $ integral_a^b m dd(x) <= integral_a^b f(x) dd(x) <= integral_a^ M dd(x) $
  $ m<= 1/(b-a) integral_a^b f(x) dd(x) <= M $
  par le TVI $ exists c in ]C_m,C_M[ subset ]a,b[ "tq" f(c)= 1/(b-a) integral_a^b f(x) dd(x) $
]

#proof[
  Soit $x in ]a,b[$
  $ A(x+h) - A(x) &= integral_a^(x+h) f - integral_a^x f\
    &= integral_x^(x+h) f(t) dd(t)
  $

  Par le théorème de la moyenne sur $[x, x+h]$
  $exists c_h in ]x,x+h[ "tq" integral_x^(x+h) f(t) dd(t) = h f(c_h) $
  lorsque $h arrow 0$, $c_h arrow x$ et
  $ lim_(h arrow 0) (A(x+h)-A(x))/h = lim_(h arrow 0) (h f(c_h))/h = lim_(c_h arrow x) f(c_h) = f(x) $ car $f$ continue
]

= Primitives

#definition[
  Soit $f$ définie sur un intervalle $I$ ouvert,
  $F$ dérivable sur $I$ tq $forall x in I, F'(x) = f(x)$
  Alors $F$ est dite une primitive de $f$ sur $I$
]

#exemple[
  $ lambda in RR, f: ]0,1[ arrow RR\ x arrow lambda $
  $F(x) = lambda x, G(x) = lambda x + 1$ sont toutes deux des primitives de $f$ sur $]0,1[$
]

#rem[
  par le TFA, toute $f$ continue sur $[a,b]$ admet une primitive sur $]a,b[$ la fonction aire
]

#theorem[
  Soit $f$ continue sur $[a,b]$ $F$ primitive de $f$ sur $]a,b[$\
  Alors l'ensemble des primitives $f$ sur $]a,b[$ est ${F(x)+C, C in RR}$
]

#proof[
  +  $subset$ si $G(x) = F(x) +C$ on a $G'(x) = F'(x) =f(x)$ donc $G$ est une primitive de $f$
  + $supset$ soit $G(x)$ une primitive de $f$ sur $]a,b[$ on veut $exists C in RR, t q G(x)= F(x)+ C $ or par un corollaire du TAF si deux fonctions ont la même dérivée sur I ouvert elles diffèrent par une constante
]

#theorem("Conséquence TFA")[
  Soit $f: [a,b] arrow RR$ continue, $F$ une primitive de $f$ sur $]a,b[$
  alors $integral_a^b f(x) dd(x) = F(b) - F(a) $
]

#proof[
  par le TFA, une autre primitive de $f$ sur $]a,b[$ est la fonction aire $A(x)$\
  Donc $exists C in RR "tq" F(x)= A(x) + C,$ or $ integral_a^b f(x) dd(x) = A(b) \ = A(b) - A(a) \ = F(b) - C - F(a) + C \ =F(b) - F(a) $
]

#definition[
  $integral_a^b f$ est dite une intégrale définie.
  On note $integral_a^b f(x) dd(x) = F(x) bar_a^b $
]

#exemple[
  $integral_0^(pi/2) cos(x) dd(x)$
  On sait que $sin(x)$ est une primitive de $cos(x)$ sur $]0,pi/2[$
  $sin(pi/2)-sin(0) = 1$
]

#exemple[
  Quelle est la dérivée de
  $F(x)= integral_0^(x^2) e^(t^2) dd(t) $
  $f(t)=e^(t^2)$ continue donc elle admet une primitive $G(x)$\
  $F(x)=G(x^2)-G(0)$\
  $F'(x)= 2x G'(x^2) = 2x f(x^2) = 2x e^(x^2)$
]

= Intégrales indéfinies

#definition[
  Soit $f$ définie sur intervalle $I$
  l'intégral indéfinie de $f$,notée $integral f(x) dd(x)$ est l'ensemble des primitives de $f$ sur $I$
  si $f$ est continue, elle a une primitive $F$ sur $I$
  $ integral f(x) dd(x) = {F(x) +C, C in RR} $
  par abus de notation on écrit
  $ integral f(x) dd(x) = F(x) + C $
  On a $ integral F'(x) dd(x) = F(x) +C $

]

== Propritétés

$ integral (f+g)(x) dd(x) = integral f(x) dd(x) + integral g(x) dd(x) $
#let dx = $dd(x)$
#let dt = $dd(t)$
$ integral lambda f(x) dx = lambda integral f(x) dx $

= Calcul d'intégrales indéfinies par inspection

$ integral x^alpha dx = x^(alpha+1)/(alpha + 1) +  C $
Si $alpha != -1$
Si $alpha < 0, x^alpha$ n'est pas défini en 0 l'intervalle d'intégration I doit être $I subset ]-oo,0[ "ou" I subset ]0,+oo$

$ integral 1/x dx = ln(abs(x)) + C, I subset RR^+_* "ou" I subset RR_-^* $ 
$ integral exp(x) dx = exp(x) + C $
$ integral sin(x) dx = -cos(x) + C $
$ integral cos(x) dx = sin(x) + C $
$ integral cosh(x) dx = sinh(x) + C $
$ integral sinh(x) dx = cosh(x) + C $
$ integral 1/cos^2(x) dx = tan(x) + C $
$ integral 1/(cosh(x))^2 dx = tanh(x) + C $
$ integral 1/(1+x^2) dx = arctan(x) + C $
$ integral 1/sqrt((1-x^2)) dx = arcsin(x) +C x in [-1,1] $

si $f(x) = F(u(x))' = u'(x) F'(u(x)), integral f(x) dx = F(u(x)) +C $
$ integral x cos(x^2)dx = 1/2 integral 2(x) cos(x^2) dx = sin(x^2)/2 +C $
$ a != 0, integral cos(a x) dx =  1/a integral a cos(a x) dx = sin(a x)/a + C $
$ integral cos(x^2) dx = 1/2 integral cos(2 x)+ 1 = 1/2 ( 1/2 integral cos(2x) +x ) = 1/4 sin(2x) + 1/2 x + C $
$ integral 1/sqrt(a x + b) = 2/a integral a/2(sqrt(a x+b)) dx = 2/a sqrt(a x + b) + C $
$ integral tan(x) dx = integral sin(x)/cos(x) dx = - integral -sin(x)/cos(x) dx = - ln(abs(cos(x))) + C $ 
