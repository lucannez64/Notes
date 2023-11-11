#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Physique Ex 14 11 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "11 Novembre, 2023",
)

#set heading(numbering: "1.1.")

== Exercice 16 page 252
<exercice-16-page-252>
\
$cases(x eq 4 comma 08 t, y eq minus 4 comma 88 t^2 plus 4 comma 91 t plus 2 comma 27)$ \
\
$arrow.r.double$ $cases(t eq frac(x, 4 comma 08), y eq minus 4 comma 88 t^2 plus 4 comma 91 t plus 2 comma 27)$ \
\
$arrow.r.double$
$y eq minus 4 comma 88 frac(x^2, 4 comma 08^2) plus 4 comma 91 frac(x, 4 comma 08) plus 2 comma 27$
\
\
$y eq minus frac(4 comma 88, 4 comma 08^2) x^2 plus 491 / 408 x plus 2 comma 27$

== Exercice 18 page 252
<exercice-18-page-252>
En primitivant on obtient \
\
$arrow(v)$ $cases(v_x eq v_(x 0) eq v c o s alpha, v_y eq minus g t plus v_(y 0) eq minus g t plus v s i n alpha)$

En primitivant une deuxième fois on obtient \
\
$arrow(O M)$ $cases(x eq v c o s lr((alpha)) t plus x_0, y eq minus g / 2 t^2 plus v s i n lr((alpha)) t plus y_0)$ Or
$x_0 eq y_0 eq 0$ Donc les équations horaires du mouvement sont :
$x eq v_0 c o s alpha t$ et
$y eq minus 1 / 2 g t^2 plus v_0 s i n alpha t$

== Exercice 21 page 253
<exercice-21-page-253>
+ On sait que l’énergie mécanique se conserve pour un système dans
  lequel seul le poids influe soit la chute libre. Donc l’énergie
  mécanique se conserve pour le système
  $brace.l upright("barycentre de la balle") brace.r$
+ Au point $t eq 0 s$ $E_(p 0) eq 0 comma 60 J$ d’après le graphique Or
  $E_(p 0) eq m g h_0$ avec h\_0 la hauteur initiale de la balle. Donc
  $h_0 eq frac(E_(p 0), m g) eq frac(0 comma 60 J, 25 times 10^3 k g times 9 comma 81 m s^(minus 2)) eq 2.4 m$
+ $E_m eq E_c plus E_p$ donc $E_c eq E_m minus E_p$ au point $t eq 0 s$
  on a $E_m eq 1 comma 1 J$ d’après le graphique et
  $E_p eq 0 comma 60 J$ d’après la question précédente donc
  $E_c eq 1 comma 1 J minus 0 comma 60 J eq 0 comma 5 J$
