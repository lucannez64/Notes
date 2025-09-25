#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 13",
  subtitle: "08/04/2025",
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

=== Tangente Commune à deux courbes
$ f(x) = x^2+2, g(x) = -x^2+6x - 7 $
$t$ tangente:
- à $f$ en $(a,a^2+2)$
- à $g$ en $(b, -b^2+6b-7)$
$ m = f'(a) = g'(b) $
$ 2a = -2b +6  $
$ <=> a = -b+3 $
$ m = (g(b) - f(a))/(b-a) $
$ m = -(2(b-3)^2)/(2b-3) $

$ -2(b-3)^2 = (2b-3)(-2b+6) $
$ = -4b+18b-18 $
$ <=> b^2-6b + 9 = 2b^2 -9b + 9 $
$ <=> b^2 -3b = 0 $
$ <=> b(b-3) = 0 $
$ cases(b = 0, a=3), cases(b=3, a=0) $
$ t_1 : y+7 = 6x $
$ t_2 : y = 2 $

== Théorème de Rolle
Soit $f$ continue sur $[a,b]$ dérivable sur $]a,b[$
et tq $f(a)=f(b)$

Alors $exists c in ]a,b[ "tq" f'(c) = 0$

=== Preuve

Utilise le théorème des valeurs extrêmes
Soit $f: [a,b] -> RR$ continue alors $f$ atteint son maximum et son minimum sur $[a,b]$

Si un maximum ou un minimum se trouve en un point intérieur $x_0 in ]a,b[ $, alors par le résultat précédent, on a $ f′(x_0)=0$.
Si il n'y a pas de maximum ou de minimum en un point intérieur, alors la valeur $f(a)=f(b)$ est à la fois le maximum et le minimum de $f$ sur $[a,b]$. Ceci implique que $f$ est constante sur $[a,b]$ et donc $f′(x)=0$ pour tout $x in ]a,b[$. 


== Théorème des accroissements finis

Soit $f$ continue sur $[a,b]$ dérivable sur $]a,b[$ alors $exists c in ]a,b[ "tq"$
$ f'(c) = (f(b)-f(a))/(b-a)  $

=== Preuve


Soit $f$ continue sur $[a,b]$ dérivable sur $]a,b[$ \ 
La sécante passant par $(a,f(a)),(b,f(b))$ est $ y = f(a)+ (f(b)-f(a))/(b-a) (x-a) = h(x) $ \
On pose $g(x) = f(x) -h(x)$ \
Alors $g(a) = g(b) = 0$ \
De plus $g$ est continue sur $[a,b]$ et dérivable sur $]a,b[$ par la dérivabilité et la continuité de $f$ 
Ainsi d'après le théorème de Rolle $ exists c in ]a,b[ "tq" g'(c) = 0 $ 
Or $ g'(x) = f'(x) - h'(x) = f'(x) - (f(b)-f(a))/(b-a) $ 
donc $ f'(c) = (f(b)-f(a))/(b-a) $
