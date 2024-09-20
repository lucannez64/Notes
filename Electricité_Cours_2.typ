#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Electricité Cours 2",
  subtitle: "20/09/2024",
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

= Loi d'Ohm

== Résistance électrique

Ne pas utiliser la norme américaine.

En appliquant une tension aux bornes d'un composant conducteur, les charge vont se mettre en mouvement mais pas à une vitesse infini à cause des frottements.

$ I = (d q)/(d t) "et" d q = n e S dot d x $
$ I = n e S dot v_d $

$ v_d = I/(n e S) $

$ m arrow(a) = arrow(F)_(e s) - f arrow(v) $

Ainsi en régime statique : $v_d = F_(e s)/f $
Ainsi
$ v_d = alpha U $ et $ v_d = beta I $
Par transitivité
$ U = R I $

== Résistance

- Dépend du matériau $arrow rho$ résistivité
- De la distance parcourue $arrow L$
- De la section transversale $ arrow S$

$ R = rho L / S $

== Conducteur parfait

$ R = 0 Omega$

== Isolant

$ R  =+infinity Omega $

== Conductance

$ G = 1/R $

= Convention graphiques

On représente courants et tensions par des flèches

$ U_(A arrow B) = V(A) - V(B) $

Courant et tension fléchés dans le même sens : pas de changement dans la formule

Sinon $ U = -R I $

= Les sources

- Sources de tension idéales : fournissent une tension fixée par l'utilisateur
- Sources de courant idéales : fournissent un courant fixé par l'utilisateur

= Les lois de Kirchhoff

== Circuits électriques

- Des sources
- Des composants passifs

- On relie les composants par des conducteurs parfaits
- On représente les grandeurs physiques

== Connexion

- En série les éléments sont connectés les uns à la suite des autres
  - Même courant et $U = sum U_i$
- En parallèle les éléments sont connectés aux mêmes bornes
  - La tension est la même et $I = sum I_i$ 
On ne branche jamais deux sources de tension en parallèle ou deux sources de courant en série

== Vocabulaire

- Noeud : point de connexion de 3 conducteurs ou plus
- Branche : ensemble d'éléments situés entre deux noeuds
- Maille : boucle d'éléments partant d'un noeud pour y revenir

== Loi
- Loi des noeuds: conservation de la matière  $ arrow.l.r.long.double$ conservation du courant $ arrow.l.r.long.double sum_(k=1)^N i_k=0  = sum i_(i n) - sum i_(o u t) $

=== Exemple Source de courant réelle

$ i_0 = i_1 + i $
$ R_g dot i_1 = U $
$ i_0 = U/R_g + i $
$ i = i_0 - U/R_g $

- Loi des mailles : conservation de l'énergie  $ arrow.l.r.long.double$ conservation de la tension le long d'une maille $ arrow.l.r.long.double sum_(k=1)^N U_k=0 $

=== Exemple Source de tension réelle

$ U_0 = U_1 + U $
$ U_1 = R_g dot i $
$ U_0 = R_g dot i + U $
$ U = U_0 - R_g dot i $
$ i = (U_0 - U)/R_g $

== Mailles indépendantes
Une maille peut en contenir d’autres. On parle de mailles indépendantes lorsque l’on définit des mailles qui ne contiennent pas les autres déjà mises en équations.

= Mesures
- L'ampèremètre mesure le courant et se branche en série $R_A = 0$
- Le voltmètre mesure la tension et il se branche en parallèle $R_V = +infinity$

