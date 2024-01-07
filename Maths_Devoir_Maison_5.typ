#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Devoir Maison 5",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "7 Janvier, 2024",
)

#set heading(numbering: "1.1.")

== Exercice 1
<exercice-1>
==== Question 1
<question-1>
#block[
#set enum(numbering: "a.", start: 2)
+
]

==== Question 2
<question-2>
#block[
#set enum(numbering: "a.", start: 1)
+
]

==== Question 3
<question-3>
#block[
#set enum(numbering: "a.", start: 3)
+
]

==== Question 4
<question-4>
#block[
#set enum(numbering: "a.", start: 2)
+
]

==== Question 5
<question-5>
#block[
#set enum(numbering: "a.", start: 2)
+
]

==== Question 6
<question-6>
#block[
#set enum(numbering: "a.", start: 2)
+
]

== Exercice 2
<exercice-2>
=== Partie A
<partie-a>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + $ l i m_(x arrow.r minus oo) x eq minus oo $
    $ l i m_(x arrow.r minus oo) 0.5 x minus 2 eq minus oo $
    $ l i m_(x arrow.r minus oo) e^(0.5 x minus 2) eq l i m_(X t o minus oo) e^X eq 0 $
    $ l i m_(x arrow.r minus oo) 1 plus x minus e^(0.5 x minus 2) eq minus oo $
  + $ f lr((x)) eq 1 plus x plus e^(0.5 x minus 2) eq 1 plus 0.5 x lr((2 minus 2 e^(0.5 x minus 2))) eq 1 plus 0.5 x lr((2 minus frac(e^(0.5 x), 0.5 x) times e^(minus 2))) $
  ]

+ #block[
  #set enum(numbering: "a.", start: 1)
  +
  ]

$ f lr((x)) eq 1 plus x minus e^X $
$ f prime lr((x)) eq 1 minus X prime lr((x)) e^X $
$ X lr((x)) eq 0.5 x minus 2 $ $ X prime lr((x)) eq 0.5 $
$ f prime lr((x)) eq 1 minus 0.5 lr((e^(0.5 x minus 2))) $
b.$ 1 minus 0.5 lr((e^(0.5 x minus 2))) lt 0 $
$ minus 0.5 lr((e^(0.5 x minus 2))) lt minus 1 $
$ e^(0.5 x minus 2) gt 2 $ $ 0.5 x minus 2 gt l n lr((2)) $
$ x gt 2 lr((l n lr((2)) plus 2)) $ $ x gt 4 plus 2 l n lr((2)) $

Donc $f prime lr((x)) lt 0$ quand
$x in bracket.r 4 plus 2 l n lr((2)) semi plus oo bracket.l$

3.#image("DM5_1.png")

#block[
#set enum(numbering: "1.", start: 4)
+ On montre que la fonction
  $f lr((x)) eq 1 plus x minus e^(0.5 x minus 2)$ est continue sur
  l’intervalle $lr([minus 1 semi 0])$.
]

La fonction $x arrow.r.bar 1 plus x$ est continue sur $bb(R)$. La
fonction $x arrow.r.bar e^(0.5 x minus 2)$ est continue sur $bb(R)$ car
c’est une fonction exponentielle. La somme, la composition et la
multiplication de fonctions continues sont continues, donc
$f lr((x)) eq 1 plus x minus e^(0.5 x minus 2)$ est continue sur
$bb(R)$.

En particulier, $f lr((x))$ est continue sur $lr([minus 1 semi 0])$.

D’après le tableau de variation $f lr((x))$ est croissante sur
$lr([minus 1 semi 0])$ car $0 lt 4 plus 2 l n lr((2)) approx 5.4$
Finalement $f lr((0)) eq 1 minus e^(minus 2) approx 0.9$ et
$f lr((1)) eq 2 minus e^(minus 1.5) approx minus 0.08$ Donc
$0 in lr([1 minus e^(minus 2) semi 2 minus e^(minus 1.5)])$

Selon le théorème des valeurs intermédiaires l’équation $f lr((x)) eq 0$
a une unique solution sur l’intervalle $lr([minus 1 semi 0])$

=== Partie B
<partie-b>
+ #block[
  #set enum(numbering: "a.", start: 1)
  +
  ]
