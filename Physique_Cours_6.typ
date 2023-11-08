#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Physique Cours 6",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "8 Novembre, 2023",
)

#set heading(numbering: "1.1.")

D’après le théorème de l’énergie cinétique : $E_c eq 1 / 2 m v^2$ où
$E_c$ est l’énergie cinétique, $m$ la masse et $v$ la vitesse.

L’énergie cinétique acquise par l’électron est égale à l’opposé de la
variation d’énergie potentielle électrique :
$E_c eq minus lr((e Delta V))$ avec
$Delta V eq minus 2 comma 0 times 10^3 upright(V)$ la tension appliquée.

En combinant les deux équations et en utilisant les données numériques,
on obtient : $ 1 / 2 m_e v^2 eq minus e Delta V $
$ 1 / 2 times 9 comma 11 times 10^(minus 31) upright(k g) times v^2 eq minus lr((1 comma 6 times 10^(minus 19) upright(C) times lr((minus 2000 upright(V))))) $
$ v^2 eq frac(minus 2 lr((e Delta V)), m_e) $
$ v eq 2 comma 5 times 10^7 upright(m slash s) $

La vitesse de l’électron accéléré par une tension de -2,0 kV est donc de
5,93×10^6 m/s.a
