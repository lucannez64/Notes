#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate



#show: dvdtyp.with(
  title: "Analyse B Cours 14",
  accent:latte.blue,
  subtitle: "11/04/2025",
  author: "Lucas Duchet-Annez",
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
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = definition-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
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

= Conséquence du TAF

#corollaire[
  Soit $f$ dérivable sur un intervalle $I$, et $f'(x) = 0$ sur $I$
  alors $f$ est une fonction constante
]

#proof[
  Soient $a<b in I$
  $ exists c in ]a,b[ "tq" f'(c) = (f(b)-f(a))/(b-a) $
  $  <=> f(b) = f(a) $
]

#rem[
  importance du domaine $I$ ouvert
  Soit $ f: ]0,1[union]2,3[ &arrow.long RR $
  $ x &arrow.long.bar cases(1 "si" x in "]0,1[", 2 "si" x in "]2,3[") $
]

#corollaire[
  Soient $f,g$ dér. sur $I$ ouvert.
  si $f'(x) = g'(x) forall x in I$
  alors $f$ et $g$ diffèrent par un constante $lambda in RR$
  $f(x) = g(x)+lambda, x in I$
]

#corollaire[
  Soit $f$ dér. sur $I$ ouvert
  Alors
  + $f$ est croissante sur $I <=> forall x in I f'(x) >= 0$
  + $f$ est décroissante sur $I <=> forall x in I f'(x) <=0$
]

#proof[
  $=>$ Soit $f$ dér. croissante sur $I$\
  Alors pour tous $x,x_0 in I, x!= x_0$, \
  $f(x)-f(x_0)$ et $x-x_0$ sont de même signe donc
  $ (f(x)-f(x_0))/(x-x_0) >= 0 $ 
  donc $ f'(x_0) = lim_(x arrow x_0) (f(x)-f(x_0))/(x-x_0) >= 0 $

  $<==$ On suppose $f'(x) >= 0 space forall x in I$ \
  Soit $a,b in I, a<b$
  par le TAF sur $[a,b]$ $ exists c in ]a,b[ "tq" f'(c) = (f(b)-f(a))/(b-a) $
  donc $f(b) -f(a) >= 0$ 
]

#corollaire[
  Soit $f$ continue en $x_0$ et dérivable dans un voisinage épointé de $x_0$ \
  Si $lim_(x arrow x_0) f'(x) = L in RR$ \
  alors $f$ est dérivable en $x_0$ \
  et $f'(x_0) = L$  
]

#proof[
  Soit $f$ continue en $x_0$ dér. dans un $V(x_0)$\
  Soit $x$ dans un voisinage spdg on suppose $x>x_0$\
  par le TAF $exists t in ]x_0,x[$ tq \
  $ f'(t) = (f(x)-f(x_0))/(x-x_0) $  \ 
  comme $x_0<t<x$ $t arrow x_0 "quand" x arrow x_0$
  et $lim_(x arrow x_0) f'(t) = lim_(t arrow x_0) f'(t) = L$ \
  càd $f$ dérivable en $x_0$ et $f'(x_0) = lim_(x arrow x_0) f'(x)$
]

#exemple[
  $ f(x) = cases(sin(x) "," x<=0, x e^x "," x>0) $
  est-elle dérivable en $0$\
  Méthode 1: \
  $lim_(x arrow 0^-) (f(x)-f(0))/x = 1$ \
  $lim_(x arrow 0^+) (f(x)-f(0))/x = 1$
  donc $f$ est dérivable en $0$
  et $f'(0) = 1$ \ 
  Méthode 2:\
  $ f'(x)= cases(cos(x) "," x<0, (x+1)e^x "," x>0) $
  $lim_(x arrow 0^-) f'(x) = 1$ \
  $lim_(x arrow 0^+) f'(x) = 1$
  donc $lim_(x arrow 0) f'(x)=1$
  donc $f'(0) = 1$
]

#rem[
  la réciproque n'est pas vraie

  $ f(x) = cases(x^2 sin(1/x) ", " x!=0, 0 ", " x=0) $
  $f$ est dérivable en $0$ mais $f'(x) = 2x sin(1/x) -cos(1/x)$ n'admet pas de limite en $0$
]

= Règle de Bernoulli-l'Hôpital

#thm[
  $1)$ Soit $a in RR$, et $f,g$ tq dans un voisinage épointé de $a$
  - $f,g$ dériables
  - $g(x),g'(x)!=0$

  Si $ lim_(x arrow a) f(x) = lim_(x arrow a) g(x) ) = 0 $
  alors $ lim_(x arrow a) f(x)/g(x) = lim_(x arrow a) (f'(x))/(g'(x)) $
  si cette dernière limite existe ou est $plus.minus oo$ \
  $2)$ résultat analogue pour des limites latérales en $a$ \
  $3)$ résultat analogue si \
  $lim_(x arrow a) f(x) = plus.minus oo$ et $lim_(x arrow a) g(x) = plus.minus oo$ \
  $4)$ résultat analogue pour la limite quand $x arrow plus.minus oo$ 
]

#exemple[
  $ lim_(x arrow 0) (sin(x)-x)/x^3 &= lim_(x arrow 0) (cos(x)-1)/3x^2 \
    &= -1/6 $
]

#exemple[
  $ lim_(x arrow +oo) x/e^x = lim_(x arrow +oo) 1/e^x = 0 $
  Par récurrence $forall n in NN$
  $ lim_(x arrow +oo) x^n/e^x = 0 $
]

#exemple[
  $ lim_(x arrow +oo) ln(x)/x = 1/x = 0 $
  En général $forall n in NN$
  $ lim_(x arrow +oo) ln(x)^n / x = 0 $
]

#exemple[
  $ lim_(x arrow 0^+) x ln(x) &= lim_(x arrow 0^+) ln(x)/(1/x) $
  $ &=^(B H) lim_(x arrow 0^+) (1/x)/(-1/x^2) = 0 $
]

#exemple[
  $ lim_(x arrow 0^+) x^x $
  rappel $a^x = e^(x ln(a))$

  $ lim_(x arrow 0^+) x^x &= lim_(x arrow 0^+) e^(x ln(x)) $
  $ &= e^(lim_(x arrow 0^+) x ln(x)) $
  $ &= e^0 = 1 $
]

#exemple[
  $ lim_(x arrow 0^+) (1+x)^(1/x) &= e^( lim_(x arrow 0^+) ln(1+x) 1/x) $
  $ &= e^( lim_(x arrow 0^+) 1/(1+x)/1  ) = e $
]

#rem[
  On ne peut pas toujours utiliser BH
  $ lim_(x arrow 3) (x-3)/(x^2-3) != lim_(x arrow 3) 1/2x = 1/6 $
  $ lim_(x arrow 3) (x-3)/(x^2-3) = 0 $

  $ lim_(x arrow +oo) sqrt(x+1)/sqrt(x-) =^(B H) lim_(x arrow +oo) sqrt(x+1)/sqrt(x-1) $

  $ lim_(x arrow +oo) (x^999-x^1000)/(2x^1000-x^1001) = 0 $
]
