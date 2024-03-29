#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Integral",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= The Integral (AntiDerivative)
<the-integral-antiderivative>
== Definition
<definition>
Theorem: \
If F a antiderivative of f then F+C is the most general antiderivative

Ex: \
$f lr((x)) eq c o s lr((x))$ \
$F lr((x)) eq s i n x plus c$ \
Ex: \
$f lr((x)) eq x^n comma n eq.not minus 1$ \
Power Chain Rule : \
$F eq frac(x^(n plus 1), n plus 1) plus C$ \
Ex: \
n\=-1 : $f lr((x)) eq 1 / x$ \
$F lr((x)) eq l n lr(|x|) plus c$

== Links
<links>
- #link("http://www.lrcb.ch/litterature/integrales.pdf")[Identities]
- #link("https://tutorial.math.lamar.edu/Classes/CalcII/IntTechIntro.aspx")[Techniques]
- #link("https://tutorial.math.lamar.edu/Problems/CalcII/IntTechIntro.aspx")[Nice Exercices]
- #link("Maths.pdf")[Maths]
