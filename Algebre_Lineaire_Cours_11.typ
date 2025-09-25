#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Algebre Lineaire Cours 11",
  subtitle: "02/04/2025",
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

== Plans affines dans $RR^3$ 
Soient $a,b,c,d in RR$ tq $(a,b,c) != (0,0,0)$

$ a x+b y+ c z = d $
est l'équation d'un plan affine $V$

$ V = {(x,y,z) in RR^3 | a x + b y + c z = d}$

Remarque:

Si $d != 0$, V n'est plus un espace vectoriel

Si $c != 0 , (0,0, d/c) in V$ \
Si $a != 0 , (d/a, 0 ,0) in V$ \ 
Si $b != 0 , (0,d/b, 0) in V$ \
$(lambda, mu, sigma) = v_0 in V$

$ V &= v_0 + W $
$ &= v_0 + v e c t (v_1,v_2), v_1, v_2 in W $

=== Exemple

$ V: 2x+y-z = 3 $
$ (0,5,2) in V $
$ (0,1,1), (1,1,3) in W $
$ V = (0,5,2) + v e c t ({(0,1,1), (1,1,3)}) $
$ = {(t_2, 5+t_1+t_2, 2+t_1+3 3t_2) | t_1,t_2 in RR} $
$v e c t (v_1,v_2)$  est la solution homogène
$v_0$ est un solution particulière

=== Exemple 2

$ V = {(-2+t_1+2t_2, 3+3t_1-t_2, 1+t_1+3t_2 ) | t_1, t_2 in RR} $
$ v_0 = (-2,3,1) $
$ v_1,v_2 = (1,3,1),(2,-1,3) $

$ W : mat(delim: "|",x , 1 ,2;y,3,-1;z,1,3) = 0 $
$ <=> 0 = 10x-y-7z $
$ V: 10x - y - 7z =  -30 $

== Droite affine dans $RR^3$

Il faut $v_0 in RR^3, v_1 in RR^3\{(0,0,0)}$


$ V = v_0 + v e c t (v_1 ) $
$ V =  v_0 + W $
$ V = {alpha_1 + t beta_1, alpha_2 + t beta_2 , alpha_3 + t beta_3} $

V est la droite affine passant par $v_0$ dirigée par $v_1$

$ v = (x,y,z) in V $
$ <=> v= v_0 + t v_1 $
$ <=> v-v_0 = t v_1 $
$ <=> v-v_0 in W $
$ (x,y,z) = (alpha_1, alpha_2, alpha_3) +  t ( beta_1, beta_2, beta_3) $

$ beta_1, beta_2, beta_3 != 0 => (x-alpha_1)/beta_1 = (y-alpha_2)/beta_2 = (z-alpha_3)/beta_3 $
$ beta_1 = 0, beta_2, beta_3 != 0 => (y-alpha_2)/beta_2 = (z-alpha_3)/beta_3) => x = alpha_1 $
$ beta_1, beta_2 = 0, beta_3 != 0 => x = alpha_1, y = alpha_2 $

=== Exemple

$ V = {(3+t, -2, 1 + t)| t in RR} $
$ v_0 = (3,-2,1) $
$ v_1 = (1, 0, 1) $
$ V : (x-3) = z - 1, y = -2 $

$P = mat(-4,0;0,1), det(v_1') = -4det(v_1)$
