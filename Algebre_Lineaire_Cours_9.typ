#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Algebre Lineaire Cours 9",
  subtitle: "26/03/2025",
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

== Intersections de plans

On se donne deux plans

$ V: a x+b y+c z = 0 $
$ V': a' x + b' y + c'z = 0 $

Proposition
$ V = V' <=> (a,b,c) "est proportionnel à " (a', b', c') $

Preuve

$ <== "Les équations pour " V "et " V' "sont proportionnelles, donc ont les mêmes solutions et " V = V' $
$ ==> V = V' <=> ((b,-a, 0), (c, 0, -a), (0,c,-b)) in V^3 "et" in V'^3 $
$ => a'b -b'a = 0 "et " a'c -c'a = 0 "et" b'c-c'b = 0 $
$ <=> mat(delim: "|", a', b'; a, b) = mat(delim: "|", a', c'; a, c) = mat(delim: "|", b', c'; b, c) $
$ => (a,b,c) "colinéaire" à (a',b',c') $


Proposition
$ V sect V' = v e c t(v) $ avec $ v = (mat(delim: "|", b, B; c, C),-mat(delim: "|", a, A; c, C), mat(delim: "|", a, A; b, B)) $

Preuve
On vérifie que le vecteur appartient aux deux plans
$ a x_v + b y_v + c z_v = a mat(delim: "|", b, B; c, C) -b mat(delim: "|", a, A; c, C) + c mat(delim: "|", a, A; b, B) $
$ = mat(delim: "|", a, a, A; b,b,B; c,c, C) = 0 => v in V $
$ A x_v + B y_v + C z_v = mat(delim: "|", A, a, A; B, b, B; C, c, C) = 0 => v in V' $


=== Exemple

$ V: x-3y + z = 0 $
$ V': 2x + y + 3z = 0 $

$ v = (mat(delim: "|", -3, 1; 1, 3), -mat(delim: "|",1,2; 1,3 ), mat(delim: "|",1,2; -3,1 )) $
$ v = (-10, -1, 7) $

Vérifions

$ V(v) : -10 +3 + 7 = 0 $
$ V'(v) : -20 -1 + 21 = 0 $

$ => V sect V' = v e c t({(-10, -1, 7)}) $
On a les équations pour $v e c t (v) = 0 $
$ <=> lambda = -x/10 = -y/1 = z/7 $

== Bases dans $RR^3$

Si $d e t(v_1 | v_2 | v_3) != 0$
alors $ B = v_1, v_2, v_3$ forme une base pour $RR^3$ \
$RR^3 = v e c t(v_1, v_2, v_3)$

$ [v]_B = Q[v]_B_(c a n) $
$ B = B_(c a n) P $
$ P = Q^(-1) $
$ P = mat(alpha_1, beta_1, gamma_1; alpha_2, beta_2, gamma_2; alpha_3, beta_3, gamma_3) $

=== Exemples

$ v_1 = (3, 0, 0), v_2 = (0,0,1/2), v_3 = (0,-1,0) $

$ (x,y,z) = x/3 v_1 - y v_3 + 2 v_2 $
$ => [(x,y,z)]_B = vec(x/3, 2z, -y) $
$ P = mat(3, 0, 0; 0, 0, -1; 0, 1/2, 0) $
$ Q = 2/3 mat(1/3, 0,  0; 0, 0, 2; 0, -1, 0) $

