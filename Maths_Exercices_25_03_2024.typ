#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Exercices",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "25 Mars, 2024",
)

#set heading(numbering: "1.1.")

== Exercice 61 p 263

=== 1.

$F$ représente la primitive de la fontion $t->(2-t)ln (t)$ qui s'annule en $x=1$

=== 2.

On a donc $F$ dérivable sur $[1;2]$ et qui a pour dérivée la fonction $F(x)'=(2-x)ln (x)$

$(2-x)ln (x) gt.eq 0$

$forall x in [1;2], 2-x gt.eq 0$ 
et $forall x in [1;2], ln(x) gt.eq 0$

Donc $F'$ est positive ou nulle sur $[1;2]$ et ainsi $F$ est croissante sur $[1;2]$

=== 3.

On a $F(1)=0$ et $F$ croissante sur $[1;2]$ par conséquent $forall x in [1;2], F(x) gt.eq F(1) gt.eq 0$


