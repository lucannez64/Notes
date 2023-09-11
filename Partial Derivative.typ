#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Partial Derivative",
  authors: (
    "Lucas",
  ),
  date: "11 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Partial Derivative
<partial-derivative>
== Definition
<definition>
In calculus, a partial derivative of a function of several variables is
the derivative of the function with respect to one of the variables,
with the others treated as constants. For example, if
$f lr((x comma y))$ is a function of two variables, then the partial
derivative of $f$ with respect to $x$ is the derivative of $f$ with
respect to $x$ while holding $y$ constant, and is denoted
$frac(diff f, diff x)$.

Partial derivatives are useful in multivariable calculus, as they allow
us to find the rates of change of a function with respect to each of its
variables independently. They are also used in the gradient vector,
which points in the direction of the greatest rate of increase of a
function at a given point.

The partial derivative of a function $f lr((x comma y))$ with respect to
$x$ is given by:

$ frac(diff f, diff x) eq lim_(h arrow.r 0) frac(f lr((x plus h comma y)) minus f lr((x comma y)), h) $

Similarly, the partial derivative of $f$ with respect to $y$ is given
by:

$ frac(diff f, diff y) eq lim_(h arrow.r 0) frac(f lr((x comma y plus h)) minus f lr((x comma y)), h) $

These expressions can be used to find the partial derivatives of a
function by directly computing the limits, or by using the rules of
calculus to simplify the expressions.

== Example
<example>
To find the partial derivatives of the function
$f lr((x comma y)) eq sin x cos y^2$, we need to use the rules of
calculus to take the derivatives with respect to $x$ and $y$ while
holding the other variable constant.

The partial derivative of $f$ with respect to $x$ is given by:

$ frac(diff f, diff x) eq frac(diff, diff x) lr((sin x cos y^2)) eq frac(diff, diff x) lr((sin x)) cos y^2 plus sin x frac(diff, diff x) lr((cos y^2)) eq cos x cos y^2 $

The partial derivative of $f$ with respect to $y$ is given by:

$ frac(diff f, diff y) eq frac(diff, diff y) lr((sin x cos y^2)) eq frac(diff, diff y) lr((sin x)) cos y^2 plus sin x frac(diff, diff y) lr((cos y^2)) eq minus 2 y sin x sin y^2 $

== Links
<links>
- #link("Derivative.pdf")[Derivative]
- #link("Maths.pdf")[Maths]
