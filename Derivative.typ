#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Derivative",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "24 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= The Derivative
<the-derivative>
== Definition
<definition>
The Derivative is the rate of change of function f(x) with respect to an
independent variable 'x'. It’s the slope of the tangent line at a point
x

$ frac(d f, d x) eq lim_(Delta x arrow.r 0) frac(f lr((x plus Delta x)) minus f lr((x)), Delta x) $

Example :

$ f lr((x)) eq x^2 $

$ frac(d f, d x) eq lim_(Delta x arrow.r 0) frac(lr((x plus Delta x))^2 plus minus x^2, Delta x) $
$ lim_(Delta x arrow.r 0) frac(x^2 plus 2 x Delta x plus Delta x^2 minus x^2, Delta x) $
$ lim_(Delta x arrow.r 0) frac(2 x Delta x, Delta x) plus frac(Delta x^2, Delta x) $
$ lim_(Delta x arrow.r 0) 2 x plus Delta x $
$ lim_(Delta x arrow.r 0) 2 x $

Power law: derivative of $f lr((x)) eq x^n$ \= $n x^(n minus 1)$

Chain law: Two function f(x),g(x)
$frac(d, d x) f lr((g lr((x)))) eq frac(d f, d x) lr((g lr((x)))) dot.basic frac(d g, d x) lr((x))$
$eq f prime lr((g lr((x)))) dot.basic g prime lr((x))$

Example:

$f lr((x)) eq s i n lr((x))$ \
$g lr((x)) eq x^3$ \
$f lr((g lr((x)))) eq s i n lr((x^3))$ \
$f prime lr((g lr((x)))) eq 3 c o s lr((x^3)) x^2$

== Links
<links>
- #link("https://tutorial.math.lamar.edu/getfile.aspx?file=B,44,N")[Identities]
