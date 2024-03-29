#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Expertes Ex 14 11 2023",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "11 Novembre, 2023",
)

#set heading(numbering: "1.1.")

== Démonstration 1
<démonstration-1>
+ L’équation az+b\=0 à une seule solution $minus b / a$ avec
  $a eq.not 0$ ou aucune solution si $a eq 0$ donc L’équation a bien au
  plus une solution. Or l’équation est de degré 1 donc l’équation a au
  plus n solutions.
+ Si $P$ n’a pas de solution l’équatio $P lr((z)) eq 0$ n’a pas de
  solution donc elle a bien moins de $lr((n plus 1))$ solutions.
+ On sait que $P lr((z))$ est un polynôme de degré $n plus 1$ et peut
  être écris sous la forme $lr((z minus a)) Q lr((z))$, le polynôme
  $lr((z minus a))$ est de degré 1 car z est à la première puissance Or
  deux polynôme multiplié on pour degré leur puissance respective
  additionnée soit pour trouver $P lr((z))$ avec un degré $n plus 1$ le
  polynôme $Q lr((z))$ a un degré $n$.
+ $P lr((z)) eq 0 arrow.r.double lr((z minus a)) Q lr((z)) eq 0$ donc
  $z eq a$ ou $Q lr((z)) eq 0$ or d’après l’hypothèse de récurrence un
  polynôme de degré n a au plus n solutions donc $P lr((z)) eq 0$ a au
  plus $lr((n plus 1))$ solutions
+ Car les racines d’un polynôme $P$ sont les solutions de
  $P lr((z)) eq 0$

== Démonstration 2
<démonstration-2>
+ Lorsque $q eq.not 1$ on a
  $1 plus q plus dot.basic dot.basic dot.basic plus q^(n minus 2) plus q^(n minus 1) eq frac(q^n minus 1, q minus 1)$
  donc par produit en croix des fractions on obtient
  $q^n minus 1 eq lr((q minus 1)) lr((1 plus q plus dot.basic dot.basic dot.basic plus q^(n minus 2) plus q^(n minus 1)))$
  et pour $q eq 1$ on a $q^n minus 1 eq 0$ et $q minus 1 eq 0$. Quand
  $a eq 0$ on a $z^n eq z^(n minus 1) z$ donc la propriété est vraie.
  Quand $a eq.not 0$
  $z^n / a^n minus 1 eq lr((z / a minus 1)) lr((1 plus z / a plus dot.basic dot.basic dot.basic plus z^(n minus 2) / a^(n minus 2) plus z^(n minus 1) / a^(n minus 1)))$
  $z^n minus a^n eq lr((z minus a)) lr((z^(n minus 1) plus a z^(n minus 2) plus dot.basic dot.basic dot.basic plus a^(n minus 2) z plus a^(n minus 2)))$
+ Soit $P$ un polynôme de degré n
  $ P lr((z)) eq a_n z^n plus a_(n minus 1) z^(n minus 1) plus dot.basic dot.basic dot.basic plus a_1 z plus a_0 $
  $ P lr((a)) eq a_n a^n plus a_(n minus 1) a^(n minus 1) plus dot.basic dot.basic dot.basic plus a_1 a plus a_0 eq 0 $
  $ P lr((z)) minus P lr((a)) eq a_n lr((z^n minus a^n)) plus a_(n minus 1) lr((z^(n minus 1) minus a^(n minus 1))) plus dot.basic dot.basic dot.basic plus a_1 lr((z minus a)) $
  $ P lr((z)) minus P lr((a)) eq a_n lr((z minus a)) lr((sum_(k eq 0)^(n minus 1) z^(n minus 1 minus k) a^k)) plus a_(n minus 1) lr((z minus a)) lr((sum_(k eq 0)^(n minus 2) z^(n minus 1 minus k) a^k)) plus dot.basic dot.basic dot.basic plus a_1 lr((z minus a)) $
  $ P lr((z)) eq P lr((z)) minus P lr((a)) eq lr((z minus a)) lr((a_n sum_(k eq 0)^(n minus 1) z^(n minus 1 minus k) a^k plus a_(n minus 1) sum_(k eq 0)^(n minus 2) z^(n minus 1 minus k) a^k plus dot.basic dot.basic dot.basic plus a_1)) $
  Donc il existe bien un polynôme $Q$ tel que
  $P lr((z)) eq lr((z minus a)) Q lr((z))$ avec
  $Q lr((z)) eq a_n sum_(k eq 0)^(n minus 1) z^(n minus 1 minus k) a^k plus a_(n minus 1) sum_(k eq 0)^(n minus 2) z^(n minus 1 minus k) a^k plus dot.basic dot.basic dot.basic plus a_1$

== Exercice 38
<exercice-38>
$ R lr((z)) eq 8 z^3 minus 1 $
$ R lr((z)) eq lr((root(3, 8) z))^3 minus 1^3 eq lr((root(3, 8) z minus 1)) lr((lr((root(3, 8) z))^2 plus root(3, 8) z plus 1)) $
$ R lr((z)) eq lr((2 z))^3 minus 1^3 eq lr((2 z minus 1)) lr((4 z^2 plus 2 z plus 1)) $
$R lr((z)) eq 0 arrow.r.double$ $cases(2 z minus 1 eq 0, 4 z^2 plus 2 z plus 1 eq 0)$ \
$arrow.r.double$ $cases(z_0 eq 1 / 2, Delta eq minus 12 eq lr((2 sqrt(3) i))^2 lt 0 upright("Donc il existe deux solutions complexes conjuguées") z_1 eq minus 1 / 4 plus sqrt(3) / 4 i quad z_2 eq overline(z_1) eq minus 1 / 4 minus sqrt(3) / 4 i)$
\
$S_(bb(C)) eq brace.l 1 / 2 semi minus 1 / 4 plus sqrt(3) / 4 i semi minus 1 / 4 minus sqrt(3) / 4 brace.r i$

== Exercice 39
<exercice-39>
+ Il existe un racine réelle évidente de $R$
  $R lr((1)) eq lr((1))^3 minus 1 eq 0$ donc 1 est racine de $R$
+ Donc $R lr((z))$ peut s’écrire sous la forme
  $R lr((z)) eq lr((z minus 1)) lr((z^2 plus z plus 1))$ et les racines
  de $lr((z^2 plus z plus 1))$ sont
  $Delta eq minus 3 eq lr((sqrt(3) i))^2 lt 0$ donc il y a deux
  solutions complexes conjuguées
  $z_1 eq minus 1 / 2 plus sqrt(3) / 2 i quad z_2 eq minus 1 / 2 minus sqrt(3) / 2 i$
  donc $z^2 plus z plus 1$ peut s’écrire sous la forme
  $lr((z plus 1 / 2 plus sqrt(3) / 2 i)) lr((z plus 1 / 2 minus sqrt(3) / 2 i))$
  donc on
  $R lr((z)) eq lr((z minus 1)) lr((z plus 1 / 2 plus sqrt(3) / 2 i)) lr((z plus 1 / 2 minus sqrt(3) / 2 i))$

== Exercice 48
<exercice-48>
+ Il existe une racine entière évidente de $P$
  $P lr((3)) eq 3^3 minus 9 lr((3))^2 plus 31 lr((3)) minus 39 eq 27 minus 81 plus 93 minus 39 eq 0$
+ On peut donc écrire $P$ sous la forme
  $P lr((z)) eq lr((z minus 3)) lr((a z^2 plus b z plus c)) eq a z^3 plus lr((b minus 3 a)) z^2 plus lr((c minus 3 b)) z minus 3 c$
  avec $a eq 1 comma b eq minus 6 comma c eq 13$ soit
  $P lr((z)) eq lr((z minus 3)) lr((z^2 minus 6 z plus 13))$ Les racines
  de $z^2 minus 6 z plus 13$ peut s’obtenir en calculant le discriminant
  $Delta eq minus 16 eq lr((4 i))^2 lt 0$ donc il existe deux solutions
  complexes conjuguées $z_1 eq 3 plus 2 i quad z_2 eq 3 minus 2 i$. On
  remarque que toutes les racines de $P lr((z))$ on $R e lr((a)) eq 3$
  donc les points correspondant aux affixes des racines sont alignés sur
  la droite vertical passant par le point d’affixe 3 sur le plan
  complexe et d’équation cartésienne $x eq 3$.
