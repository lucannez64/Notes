#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Expertes Ex 19 12 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "17 Décembre, 2023",
)

#set heading(numbering: "1.1.")

=== Exercice 18 p43
<exercice-18-p43>
+ $ z_1 eq minus i $ $ lr(|z_1|) eq sqrt(lr((minus 1))^2) eq 1 $

+ $ z_2 eq minus 2 $ $ lr(|z_2|) eq sqrt(lr((minus 2))^2) eq 2 $

+ $ z_3 eq 3 $ $ lr(|z_3|) eq sqrt(lr((3))^2) eq 3 $

+ $ z_4 eq 18 $ $ lr(|z_4|) eq sqrt(lr((18))^2) eq 18 $

=== Exercice 19 p43
<exercice-19-p43>
$ lr(|z_A|) eq 3 $ $ lr(|z_B|) eq 2 $ $ lr(|z_C|) eq 3 $
$ lr(|z_D|) eq 4 $ $ lr(|z_E|) eq 2 $
$ lr(|z_F|) eq sqrt(2^2 plus lr((minus 2))^2) eq 2 sqrt(2) $

=== Exercice 20 p43
<exercice-20-p43>
+ $ z_1 eq lr((5 plus 2 i)) minus 4 lr((2 plus 3 i)) $
  $ z_1 eq 5 plus 2 i minus 8 minus 12 i $ $ z_1 eq minus 3 minus 10 i $
  $ lr(|z_1|) eq sqrt(lr((minus 3))^2 plus lr((minus 10))^2) eq sqrt(109) $

+ $ z_2 eq sqrt(3) minus 2 i $
  $ lr(|z_2|) eq sqrt(sqrt(3)^2 plus lr((minus 2))^2) eq sqrt(7) $

+ $ z_3 eq lr((1 plus 2 i)) times 5 lr((2 minus 3 i)) $
  $ z_3 eq lr((1 plus 2 i)) lr((10 minus 15 i)) $ $ z_3 eq 40 plus 5 i $
  $ lr(|z_3|) eq sqrt(40^2 plus 5^2) eq 5 sqrt(65) $

+ $ z_4 eq minus 2 lr((sqrt(3) minus i)) plus 4 lr((6 minus i)) $
  $ z_4 eq minus 2 sqrt(3) plus 2 i plus 24 minus 4 i $
  $ z_4 eq 24 minus 2 sqrt(3) minus 2 i $
  $ lr(|z_4|) eq sqrt(lr((24 minus 2 sqrt(3)))^2 plus lr((minus 2 i))^2) eq sqrt(592 minus 96 sqrt(3)) $

=== Exercice 21 p43
<exercice-21-p43>
$ z_(arrow(u)) eq minus 4 plus 2 i $
$ lr(|z_(arrow(u))|) eq sqrt(lr((minus 4))^2 plus 2^2) eq 2 sqrt(5) $
$ lr(|z_(arrow(u))|) eq parallel arrow(u) parallel $
$ parallel arrow(u) parallel eq 2 sqrt(5) $

=== Exercice 22 p43
<exercice-22-p43>
$ z_A eq minus 3 plus i $ $ z_B eq 2 minus 4 i $
$ A B eq parallel arrow(A B) parallel eq lr(|z_(arrow(A B))|) eq lr(|z_B minus z_A|) $
$ lr(|z_B minus z_A|) eq lr(|2 plus 3 minus 4 i minus i|) eq lr(|5 minus 5 i|) $
$ lr(|z_(arrow(A B))|) eq sqrt(5^2 plus lr((minus 5))^2) eq 5 sqrt(2) $
$ A B eq 5 sqrt(2) $

=== Exercice 24 p43
<exercice-24-p43>
+ $ z_1 eq 1 / 4 plus 1 / 4 i $
  $ lr(|z_1|) eq sqrt(lr((1 / 4))^2 plus lr((1 / 4))^2) eq sqrt(2 / 16) eq sqrt(2) / 4 $
  Donc $lr(|z_1|) eq.not 1$ soit $z_1 in.not bb(U)$

+ $ z_2 eq frac(minus 3, 4) plus sqrt(7) / 4 i $
  $ lr(|z_2|) eq sqrt(lr((frac(minus 3, 4)))^2 plus lr((sqrt(7) / 4))^2) eq sqrt(16 / 16) eq 1 $

Donc $lr(|z_2|) eq 1$ soit $z_2 in bb(U)$

#block[
#set enum(numbering: "1.", start: 3)
+ $ z_3 eq frac(2 sqrt(6), 5) plus 1 / 5 i $
  $ lr(|z_3|) eq sqrt(lr((frac(2 sqrt(6), 5)))^2 plus lr((1 / 5))^2) $
  $ lr(|z_3|) eq sqrt(25 / 25) eq 1 $
]

Donc $lr(|z_3|) eq 1$ soit $z_3 in bb(U)$

#block[
#set enum(numbering: "1.", start: 4)
+ $ z_4 eq sqrt(5) / 2 minus 1 / 2 i $
  $ lr(|z_4|) eq sqrt(lr((sqrt(5) / 2))^2 plus lr((minus 1 / 2))^2) $
  $ lr(|z_4|) eq sqrt(6 / 4) eq sqrt(6) / 2 $ Donc $lr(|z_4|) eq.not 1$
  soit $z_4 in.not bb(U)$
]

=== Exercice 32 p43
<exercice-32-p43>
Un losange est un quadrilatère avec ses côtés de même longeur. Il s’agit
donc de montrer que $ A B eq D C $
$ arrow.r.double parallel arrow(A B) parallel eq parallel arrow(D C) parallel $
$ arrow.r.double lr(|z_B minus z_A|) eq lr(|z_C minus z_D|) $

On a d’une part :
$ lr(|z_B minus z_A|) eq lr(|7 plus 2 i minus lr((6 plus 5 i))|) eq lr(|1 minus 3 i|) $
$ lr(|z_B minus z_A|) eq lr(|1 minus 3 i|) eq sqrt(1^2 plus lr((minus 3))^2) eq sqrt(10) $

D’autre part :
$ lr(|z_C minus z_D|) eq lr(|10 plus i minus lr((9 plus 4 i))|) eq lr(|1 minus 3 i|) $
$ lr(|z_C minus z_D|) eq lr(|1 minus 3 i|) eq sqrt(1^2 plus lr((minus 3))^2) eq sqrt(10) $

Par conséquent $ lr(|z_B minus z_A|) eq lr(|z_C minus z_D|) $
$ arrow.r.double A B eq D C $ Les côtés du quadrilatère sont de même
longeur donc ABCD est un losange.
