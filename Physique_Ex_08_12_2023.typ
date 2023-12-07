#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Physique Ex 08 12 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "7 Décembre, 2023",
)

#set heading(numbering: "1.1.")

=== Exercice 21 p 315
<exercice-21-p-315>
+ D’après la première loi de la thermodynamique quand le système ne
  subit pas de variation énergétique au plan macroscopique. Pour le
  système $brace.l upright("eau") brace.r$ incompressible on a:
  $ Delta U_(i arrow.r f) eq W plus Q eq m c Delta theta eq m c lr((theta_f minus theta_i)) $
  $W eq 0$ car le système de subit pas de travail non conservatif.

+ $ m c theta_f minus m c theta_i eq Delta U_(i arrow.r f) $
  $ theta_f eq frac(Delta U_(i arrow.r f), m c) plus theta_i $
  $ theta_f eq frac(4.2 times 10^4 upright("J"), 150 times 10^(minus 3) upright("kg") times 4.18 times 10^3 upright("J") upright("kg") ""^(minus 1) upright("°C") ""^(minus 1)) $
  $ theta_f eq 67 upright("°C") $

=== Exercice 27 p 316
<exercice-27-p-316>
+ D’après la première loi de la thermodynamique quand le système ne
  subit pas de variation énergétique au plan macroscopique. Pour le
  système $brace.l upright("eau contenue dans le ballon") brace.r$
  incompressible on a:
  $ Delta U_1 eq W plus Q eq m c Delta theta eq m c lr((theta_f minus theta_i)) eq rho_(e a u) v_(e a u) c_(e a u) lr((theta_f minus theta_i)) $
  $W eq 0$ car le système de subit pas de travail non conservatif.
  $ Delta U_1 eq 1000 upright("kg") ""^(minus 1) upright("m") ""^3 times 80.0 times 10^(minus 3) upright("m") ""^3 times 4.18 times 10^3 upright("J") upright("kg") ""^(minus 1) upright("°C") ""^(minus 1) lr((65.0 upright("°C") minus 17.0 upright("°C"))) $
  $ Delta U_1 eq 1.61 times 10^7 upright("J") $

+ $Delta U_(i arrow.r f) eq Q plus W$ or $W eq 0$ donc
  $Delta U_1 eq Q_1 gt 0$ c’est-à-dire l’eau reçoit de l’énergie.

+ $ upright("Energie") upright("J") eq upright("Puissance") upright("W") times upright("Temps (Durée)") upright("s") $
  $ arrow.r.double Q_1 eq Delta U_1 eq P_(é l e c t r i q u e) times Delta t_1 $

+ $ Delta t_1 eq frac(Delta U_1, P_(é l e c t r i q u e)) $
  $ Delta t_1 eq frac(1.61 times 10^7 upright("J"), 1500 upright("W") eq 1.07 times 10^4 upright("s")) eq 2 h med 58 m i n med 20 s $

+ $ Delta t_1 eq 2 h med 58 m i n med 20 s approx 3 h $ Par conséquent
  la durée de chauffe annoncée est correcte

=== Exercice 2p334
<exercice-2p334>
+ Modes de transfert thermique :
  - entre l’eau et le Soleil ” par rayonnement
  - entre l’eau et le sable ” par conduction
  - entre l’eau et l’air ” par convection
+ Pour le système $brace.l upright("eau du lac") brace.r$ :
  - entre l’eau et le Soleil $Q gt 0$ le système reçoit de l’énergie
  - entre l’eau et le sable $Q gt 0$ le système reçoit de l’énergie
  - entre l’eau et l’air $Q gt 0$ le système reçoit de l’énergie

=== Exercice 5 p334
<exercice-5-p334>
+
+ $ phi.alt eq frac(theta_i minus theta_e, R_(T h)) $
  $ R_(T h) eq frac(theta_i minus theta_e, phi.alt) eq frac(19 minus 10, 30) eq 0.30 upright("°C") upright("W") ""^(minus 1) $

=== Exercice 21 p338
<exercice-21-p338>
+ #block[
  #set enum(numbering: "a.", start: 1)
  + D’après la première loi de la thermodynamique quand le système ne
    subit pas de variation énergétique au plan macroscopique. Pour le
    système $brace.l upright("eau contenue dans le ballon") brace.r$
    incompressible on a:
    $ Delta U_1 eq W plus Q eq m c Delta theta eq m c lr((theta_f minus theta_i)) eq rho_(e a u) v_(e a u) c_(e a u) lr((theta_f minus theta_i)) $
    $W eq 0$ car le système de subit pas de travail non conservatif.
    $ Q eq 1000 times 0.200 times 4180 times lr((65 minus 15)) eq 4.2 times 10^7 upright("s") $
    $ P_(é l e c t r i q u e) eq frac(W_(é l e c t r i q u e), Delta t) $
    $ Delta t eq Q / P_(é l e c t r i q u e) eq frac(4.2 times 10^7, 2200) eq 1.90 times 10^4 upright("s") eq 5 h med 16 m i n med 40 s $

  + $Delta t eq 5 h med 16 m i n med 40 s approx 5 h med 17 m i n$ Par
    conséquent la durée est conforme aux caractéristiques fournies par
    le fabriquant.
  ]

+ #block[
  #set enum(numbering: "a.", start: 1)
  + $ R_(T h) eq frac(e, lambda S) eq frac(70 times 10^(minus 3), 0.036 times 2.9) eq 0.67 upright("°C") upright("W") ""^(minus 1) $
    $ phi.alt eq frac(theta minus theta_e, R_(T h)) eq frac(65 minus 20, 0.67) eq 67 upright("W") $

  + $Q_(upright("perdue")) eq phi.alt Delta t eq 67 times 24 eq 1.6 times 10^3 med upright(W) times upright(h)$
  ]

+ $ C_r eq frac(1.6 times 10^3, 200 lr((65 minus 20))) eq 0.18 med upright("W") upright("°C") ""^(minus 1) upright("L") ""^(minus 1) upright("d") ""^(minus 1) $
  ce qui est la valeur fournie par le fabriquant

+ $ C_(r m a x) eq 2 times V^(minus 0.4) eq 2 times 200^(minus 0.4) eq 0.24 upright("W") upright("°C") ""^(minus 1) upright("L") ""^(minus 1) upright("d") ""^(minus 1) gt 0.18 upright("W") upright("°C") ""^(minus 1) upright("L") ""^(minus 1) upright("d") ""^(minus 1) arrow.r.double C_r lt C_(r m a x) $
  Par conséquent la réglementation est respectée.
