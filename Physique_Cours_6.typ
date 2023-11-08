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

+ D’après le théorème de l’énergie cinétique : $E_c eq 1 / 2 m v^2$ où
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

#block[
#set enum(numbering: "1.", start: 2)
+ D’après le théorème de l’énergie cinétique :
  $Delta E_c eq 1 / 2 m lr((v_B^2 minus v_A^2)) eq sum_i W_(A arrow.r B) lr((arrow(F_i)))$
  où $E_c$ est l’énergie cinétique, $m$ la masse et $v$ la vitesse.
]

$ W_(A arrow.r B) lr((arrow(P))) eq m times g times lr((z_A minus z_B)) eq 9.45 times 10^2 upright(J) $

$ 1 / 2 m lr((v_B^2 minus v_A^2)) eq W_(A arrow.r B) lr((arrow(P))) $
$ v_B^2 eq frac(2 W_(A arrow.r B) lr((arrow(P))), m) plus v_A^2 $
$ v_B eq sqrt(frac(2 times 9 comma 45 times 10^2 plus lr((35))^2 m, m)) $
$ v_B eq frac(1.89 ast.basic 10^3, m) plus 1225 $

D’après la conservation de l’énergie mécanique:
$ Delta E_m eq 0 eq Delta E_c plus Delta E_p $
$ Delta E_c eq minus Delta E_p $
$ 1 / 2 m lr((v_B^2 minus v_A^2)) eq minus lr((minus m times g times lr((z_A minus z_B)))) $
$ v_B^2 eq frac(2 m g lr((z_A minus z_B)), m) plus v_A^2 $
$ v_B eq frac(1.89 ast.basic 10^3, m) plus 1225 $
