#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Physique Mecanique 1",
  subtitle: "18/09/2024",
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

= Rappels

La résistance à la mise en mouvement dépend de la géométrie.
$mat(p, F; L_0, M_0)$
$L_0 = m vec(v) and d$

= Action-Réaction

$ arrow(F)^(i arrow j) = - arrow(F)^(j arrow i) $
$ m_1dot(arrow(v))_1 = arrow(F)_1^("ext") + arrow(F)^(2 arrow 1) + arrow(F)^(3 arrow 1) $
$ m_2dot(arrow(v))_2 = arrow(F)_2^("ext") + arrow(F)^(1 arrow 2) + arrow(F)^(3 arrow 2) $
$ m_3dot(arrow(v))_3 = arrow(F)_3^("ext") + arrow(F)^(2 arrow 3) + arrow(F)^(1 arrow 3) $

= Moment de force

$ arrow(M)_0 colon.eq sum_alpha arrow(O P)_alpha and arrow(F)_alpha $

= Moment cinétique

$ arrow(L_0) colon.eq sum_alpha arrow(O P)_alpha and m arrow(v)_alpha $

= Loi de Newton en rotation

$ d/(d t) (arrow(L)_0) = arrow(M)_0 $
$ = sum dot(arrow( O P)) and m arrow(v) + sum arrow(O P) and m dot(arrow(v)) $
$ = sum arrow(v) and m arrow(v) + sum arrow(O P) and arrow(F) $

= Dérivée du produit scalaire

$ d/(d t) (arrow(a) dot arrow(b) ) = dot(arrow(a)) dot arrow(b) + arrow(a) dot dot(arrow(b))) $

= Dérivée du produit vectoriel

$ d/(d t) (arrow(a) and arrow(b) ) = dot(arrow(a)) and arrow(b) + arrow(a) and dot(arrow(b))) $

= Exercice le singe et la balle

$ dot(v_x) = 0 $
$ dot(v_z) = -g $

$ dot(x) = C_1 $
$ dot(z) = -g t + C_2 $

$ x = C_1 t + E $
$ z = -g/2 t² + C_2 t + E_2 $

$ C_1 = v_(x 0) = v_0 cos(theta) $
$ C_2 = v_(z 0) = v_0 sin(theta) $

$ E = x_0 $
$ E_2 = z_0 $


