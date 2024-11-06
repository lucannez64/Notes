#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Materiaux 8 1",
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

= Loi de Goodman

Comment adapter la courbe si $sigma_(m o y)$ n'est pas autour de $sigma_(m o y) = 0$

$ sigma_a(N_f, sigma_(m o y) ) =sigma_a(N_f, 0)(1-sigma_(m o y)/sigma_m) $

$sigma_m = $ contrainte à rupture

= Fatigue avec variation de la contrainte

Dans les cas ou les cycles ne sont pas uniformes

* Règle de Miner * $ sum_i N_i/N_(f,i) = 1 $ 

$N_i$ Le nombre de cycles fait avec l'amplitude $(Delta sigma_i)/2 $ et $N_(f,i)$ le nombre de cycles à rupture pour cette amplitude

= Fatigue d'un matériau fissuré

* Le facteur d'insité de contraite augmente si le matériau est déja fissuré * $ Delta K_1 = K_(1,max)-K_(1,min) = Delta sigma sqrt(pi l) $

== Loi de Paris

$ (d l)/(d N) = A Delta K_1^m = A (Delta sigma sqrt(pi l))^m $

Ainsi $ N_f = 1/(A(Delta sigma)^m pi^(m/2) (1-m/2)) [(l_c)^(1-m/2) -(l_i)^(1-m/2)] $
$ integral_(l_i)^l_c l^(-m/2) d l = [l^(1-m/2)/(1-m/2)]_(l_i)^l_c $

= Cas réelle

Réservoir de rayon $R$, épaisseur $t<< R$, pression $p$


$ sigma_r = sigma_("tangentielle") =  (p R)/t $
car $ sum F_i = 0 = -2F + integral_0^pi P R sin(alpha) l d alpha $
$ F = p R l $
$ sigma_r = F/A = F/(t l) = (p R)/t $
$ sigma_l = sigma_("longitudinale") = 1/2 (p R)/t $

1. Contrainte élastique
$ sigma_r < sigma_y $
$ t > (p R)/sigma_y $

2. Pas de propagation de la fissure$ sigma_r sqrt(pi l_i) = (p R)/t sqrt(pi l_i) <= K_(1c) $

3. Plastification

$ l_max <= 1/pi (K_(1c)/sigma_y)^2 <= 1/pi ( K_(1c)/sigma_r )^2 $
$ M_1 = K_(1c)/sigma_y$ grand
4. Limite de pression

$ t<=l_max<= 1/pi (K_(1c)/sigma_y)^2 $
$ p<= 1/(pi R) K_(1c)^2/sigma_y $
$ M_2 = K_(1c)^2/sigma_y$ grand

4. Minimiser la masse

$ m = rho V = rho L pi ((R+t)^2- R^2) approx rho L pi 2 t R $
$ rho L pi 2 R (p R)/sigma_y = L 2 pi R^2p rho/sigma_y $

$ M_3 = sigma_y / rho$ grand

 
