#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Physique Ex 23 11 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "23 Novembre, 2023",
)

#set heading(numbering: "1.1.")

== Ex 5
<ex-5>
+ $arrow(F) eq minus G frac(M_S m_v, r^2) arrow(u)_(S arrow.r V)$

+ D’après la deuxième loi de newton dans un référentiel galiléen on a:
  $ sum lr((arrow(F))) eq m_v arrow(a) $ $ arrow(F) eq m_v arrow(a) $
  $ minus G frac(M_S m_v, r^2) arrow(u)_(S arrow.r V) eq m_v arrow(a) $
  $ minus G M_S / r^2 arrow(u)_(S arrow.r V) eq arrow(a) $ Donc le
  vecteur accélération est colinéaire au vecteur champ de pesanteur donc
  il a pour direction la droite vénus soleil et pour sens de vénus au
  soleil et pour valeur
  $G M_S / r^2 eq frac(6.67 E minus 11 times 1.99 E 30, lr((1.08 E 8))^2) eq 1.14 E 4 N$

== Ex 7
<ex-7>
+ La vitesse de P sera plus élevé car la vitesse est inversement
  proportionnelle à la racine de la distance entre les centres de masse
  de Saturne et du constituant.
+ $T^2 / r^3 eq frac(4 p i^2, G M)$ donc
  $T eq s q r t frac(4 pi^2 r^3, G M)$ Donc la période sera différente
  car elle dépend de la distance avec le centre de masse de Saturne

== Ex 11
<ex-11>
+ D’après la troisième loi de kepler $T^2 / a^3 eq k$ avec k une
  constante donc on peut calculer k pour le satellite de Jupiter

$k eq lr((1.77 times 24 times 3600))^2 / lr((4.22 E 2))^3 eq lr((7.15 times 24 times 3600))^2 / lr((1.07 E 3))^3 eq 3.11 E 2 s^2 m^(minus 3)$
donc pour $r eq 6.71 E 2 m$ on a
$T eq sqrt(k times a^3) eq sqrt(3.11 E 2 times lr((6.71 E 2))^3) eq 3.07 E 5 s eq 3.55 j o u r s$
