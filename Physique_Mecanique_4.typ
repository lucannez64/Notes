#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Physique Mecanique 4",
  subtitle: "01/10/2024",
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

= Travail

$ W_(A B) = norm(a)norm(b)cos(angle(A O B)) = sum_(i=0)^(n-1) arrow(F_i) dot arrow(A_i A_(i+1))= integral_(t_1)^(t_2) arrow(F) dot d arrow(r) = integral_(Gamma) arrow(F) dot d arrow(r) $

$ delta W = arrow(F) dot d arrow(r) $

= Potentiel

On peut introduire une fonction génératrice de la force si le travail de dépend pas du chemin emprunté lors d'un déplacement entre A et B

$ forall C integral.cont_C arrow(F) dot arrow(d r) = 0 $

$ V = - integral_0^P arrow(F) dot arrow(d r) $

== Exemple

$ V_("Gravité") = m g h $
$ V_("Ressort") = 1/2 k (l-l_0)² $

== Preuve ressort

$ F = -k(O P + P Q - I_0 hat(x) ) $
$ F = -k epsilon.alt(l -l_0) hat(x) $
$ (d r)/(d epsilon.alt) =arrow( P_0 Q) = (I-I_0)hat(x) $ 
$ V  = - integral_0^1 arrow(F) dot arrow(d r) $
$ V = (1/2 epsilon.alt²)|^1_0 k(l-l_0)^2 $

== Preuve gravité

$ arrow(O P) = h hat(y) $
$ arrow(r) = epsilon.alt h hat(y) $
$ arrow(d r) = h hat(y) d epsilon.alt $
$ m arrow(g) dot arrow(d r) = -m g h d epsilon.alt $
$ V = -(-m g h)|^1_0 $

== Critère pour le potentiel

$ arrow(F) = - arrow(nabla) V arrow.l.r.double.long integral.cont_C arrow(F) dot arrow(d r) = 0 space forall C "dans un ensemble simplement connexe" $

$ (partial F_i)/ (partial x_j) = (partial F_j)/(partial x_i) forall i!=j $
