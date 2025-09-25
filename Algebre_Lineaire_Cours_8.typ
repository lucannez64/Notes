#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Algebre Lineaire Cours 8",
  subtitle: "20/03/2025",
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

== Plans vectoriels dans $ RR^3$

$ v_1  = mat(alpha_1, alpha_2, alpha_3), v_2 = mat(beta_1, beta_2, beta_3 ) in RR^3 $
Le plan vectoriel engendré par $v_1 "et" v_2$ est $"vect"(v_1, v_2) = {t_1 v_1 + t_2 v_2 | t_1, t_2 in RR}$
$ cal(B) = v_1,v_2 $
$ [v]_cal(B) = mat(t_1; t_2) $
$ cal(B)' = v_1^', v_2^' $
$ [v]_cal(B)' = mat(t_1^'; t_2^') $

Pour passer de $cal(B)$ à $cal(B)'$ on utilise $mat(v_1^', v_2^') = mat(v_1, v_2)P$ 
et $[v]_cal(B)' = Q[v]_cal(B) $ $Q = P^(-1)$ \
 avec $P, Q in M_(2 times 2) (RR)$


=== Description par équation

$ v in "vect"(v_1,v_2) <=> exists t_1, t_2 in RR "tq" t_1 v_1 + t_2 v_2 = v $
$ <==> mat(delim: "|",alpha_1, beta_1, x; alpha_2, beta_2, y; alpha_3, beta_3, z) = 0 $
$ <==> a x + b y +c z  = 0 $

=== Examples

$ 2x -y + z = 0  $
$ y = 2x+z $
$ <==> v = mat(x, 2x+z, z) $
$ <==> v = x mat(1,2,0)+ z mat(0,1,1) $
$ B = ((1,2,0), (0,1,1)) $
$ [v]_B = vec(x, z) $
Mais $ z = y-2x $
$ v = mat(x,y,z) in V <==> z = y - 2x $
$ <=> v = mat(x,y,y-2x) $
$ <=> B' = mat(1,0,-2), mat(0,1,1) $
$ <=> [v]_B' = vec(x, y) $
Mais $ x = (y-z)/2 $
$ v = mat(x,y,z) in V <==> z = (y-z)/2 $
$ <=> v = mat((y-z)/2,y,z) $
$ <=> B'' = mat(1/2,1,0), mat(-1/2,0,1) $
$ <=> [v]_B'' = vec(y, z) $
$ [v]_B' = vec(x, y) = vec(x, 2x+z) = mat(1,0;2,1) vec(x,z) $
$ Q = mat(1,0;2,1) $
$ P = Q^(-1) = mat(1,0; -2,1) $
Vérifions:
$ mat(v_1,v_2)P = B' $
$ <=> v_1 -2v_2 = v_1' "et"  v_2 = v_2' $

