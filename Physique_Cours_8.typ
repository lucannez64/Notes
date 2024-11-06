#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem
#import "@preview/physica:0.9.3" :*
#show: bubble.with(
  title: "Physique Cours 8",
  subtitle: "05/11/2024",
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

= Cinématique des référentiels accélérés

$ A P = sum_i y_i hat(y_i) $
$ v_r (P) = sum_i dot(y_i)hat(y_i) $
$ v_a (P) = d/(dd(t)) O P = d/dd(t) O A + d/dd(t) A P $
$ v_a (P) = v_a (A) + v_r (P) + Omega and A P $

$ a_a (P) = a_a (A) + a_r(P) + 2 Omega and v_r (P) + dot(Omega) and A P + Omega and ( Omega and A P) $

= Angle d'Euler

On peut positionner un solide par 3 rotations successives

1. $psi $ autour de l'axe $x_3$
2. $theta$ autour de l'axe $x_1'$
3. $phi.alt$ autour de l'ae $x_3''$

On a alors 

1. $x_3 = x_3 '$
2. $x_1 ' = x_1 ''$
3. $x_3 '' = x_3 '''$

$ vec(x_1 ', x_2 ', x_3 ') = rot3zmat(psi)vec(x_1, x_2, x_3) $
$ vec(x_1 '', x_2 '', x_3 '') = rot3xmat(theta) vec(x_1 ', x_2 ', x_3 ') $
$ vec(x_1 ''', x_2 ''', x_3 ''') = rot3zmat(phi.alt) vec(x_1 '', x_2 '', x_3 '') $

$ Omega = dot(psi)vu(x_3)+ dot(theta)vu(x_1 ')+ dot(phi.alt)vu(x_3 '') $
$ Omega = dot(psi)vu(x_3 ')+ dot(theta)vu(x_1 '')+ dot(phi.alt)vu(x_3 ''') $

$ Omega = vec(dot(psi)sin(theta)sin(phi.alt)+ dot(theta)cos(phi.alt), dot(psi)sin(theta)cos(phi.alt)- dot(theta)sin(phi.alt), dot(psi)cos(theta)+ dot(phi.alt)) $

= Equations d'Euler

$ I_G = dmat(I_1, I_2, I_3, fill: 0) $
$ I_1 dot(Omega_1) = (I_2-I_3)Omega_2Omega_3+M_(G 1) $
$ I_2 dot(Omega_2) = (I_3-I_1)Omega_1Omega_3+M_(G 2) $
$ I_3 dot(Omega_3) = (I_1-I_2)Omega_1Omega_2+M_(G 3) $

$ d(L_G)/dd(t)= M_G $
$ L_G = I_G Omega $

= Conservation de l'énergie cinétique

$ E_c = 1/2 Omega^T I_G Omega $
$ E_c = 1/2 (I_1 Omega_1^2 + I_2 Omega_2^2+I_3Omega_3^2 ) $
$ d/dd(t) E_c = I_1 Omega_1 dot(Omega_1) + I_2 Omega_2 dot(Omega_2)+ I_3 Omega_3 dot(Omega_3) $
$ d/dd(t) E_c = ((I_2 - I_3) + I_3 - I_1 + I_1 - I_2 )Omega_1 Omega_2 Omega_3 $
$ d/dd(t) E_c = 0 $

= Conservation du module de $L_G$

$ L_G = sum_i I_i Omega_i vu(y_i) = vb(I_G)vb(Omega) $
$ ||L_G||^2 = vb(I_G)vb(Omega) dot vb(I_G)vb(Omega) = I_1^2 Omega_1^2 + I_2^2 Omega_2^2 + I_3^2 Omega_3^2 $
$ d/dd(t) ||L_G||^2 = 0 $

Intersection de deux ellipsoïdes

