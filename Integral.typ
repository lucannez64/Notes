#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Integral",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "10 Août, 2024",
)

#set heading(numbering: "1.1.")

= The Integral (AntiDerivative)
<the-integral-antiderivative>
== Definition
<definition>
Theorem: \
If F a antiderivative of f then F+C is the most general antiderivative

Ex: \
$f (x) = c o s (x)$ \
$F (x) = s i n x + c$ \
Ex: \
$f (x) = x^n , n eq.not - 1$ \
Power Chain Rule : \
$F = frac(x^(n + 1), n + 1) + C$ \
Ex: \
n=-1 : $f (x) = 1 / x$ \
$F (x) = l n lr(|x|) + c$

== Links
<links>
- #link("http://www.lrcb.ch/litterature/integrales.pdf")[Identities]
- #link("https://tutorial.math.lamar.edu/Classes/CalcII/IntTechIntro.aspx")[Techniques]
- #link("https://tutorial.math.lamar.edu/Problems/CalcII/IntTechIntro.aspx")[Nice Exercices]
- #link("Maths.pdf")[Maths]
