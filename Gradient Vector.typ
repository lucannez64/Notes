#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Gradient Vector",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "8 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Gradient Vector
<gradient-vector>
== Definition
<definition>
In multivariable calculus, the gradient vector of a scalar-valued
function is a vector-valued function that points in the direction of the
greatest rate of increase of the function at a given point. It is a
generalization of the concept of the derivative of a function of one
variable, which points in the direction of the greatest rate of increase
of the function at a given point.

The gradient vector of a function $f lr((x comma y))$ at a point
$lr((x_0 comma y_0))$ is given by:

$ nabla f lr((x_0 comma y_0)) eq vec(frac(diff f, diff x) lr((x_0 comma y_0)) med frac(diff f, diff y) lr((x_0 comma y_0))) $

Where $frac(diff f, diff x) lr((x_0 comma y_0))$ and
$frac(diff f, diff y) lr((x_0 comma y_0))$ are the partial derivatives
of the function with respect to $x$ and $y$ respectively.

The gradient vector is a useful concept in multivariable calculus, as it
allows us to find the direction of maximum increase of a function at a
given point, and to calculate the directional derivative of a function
in a particular direction.

== Example
<example>
To find the gradient vector of the function
$f lr((x comma y)) eq y ln x plus x y^2$ at a point
$lr((x_0 comma y_0))$, we need to take the partial derivatives of the
function with respect to $x$ and $y$ and evaluate them at the point
$lr((x_0 comma y_0))$.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$ frac(diff f, diff x) eq y^2 plus y 1 / x $
$ frac(diff f, diff y) eq ln x plus 2 x y $

The gradient vector of the function at the point $lr((x_0 comma y_0))$
is then given by:

$ nabla f lr((x_0 comma y_0)) eq vec(frac(diff f, diff x) lr((x_0 comma y_0)) med frac(diff f, diff y) lr((x_0 comma y_0))) eq vec(y_0^2 plus y_0 / x_0 med ln x_0 plus 2 x_0 y_0) $

For example, if $lr((x_0 comma y_0)) eq lr((1 comma 1))$, then the
gradient vector is:

$ nabla f lr((1 comma 1)) eq vec(1^2 plus 1 / 1 med ln 1 plus 2 dot.op 1 dot.op 1) eq vec(2 med 2) $

Evaluating these partial derivatives at the point $lr((1 comma 2))$
gives us:

$ frac(diff f, diff x) lr((1 comma 2)) eq 2^2 plus 2 dot.op 1 / 1 eq 6 $
$ frac(diff f, diff y) lr((1 comma 2)) eq ln 1 plus 2 dot.op 1 dot.op 2 eq 4 $

The gradient vector at the point $lr((1 comma 2))$ is then given by:

$ nabla f lr((1 comma 2)) eq vec(frac(diff f, diff x) lr((1 comma 2)) med frac(diff f, diff y) lr((1 comma 2))) eq vec(6 med 4) $

Therefore, the gradient vector at the point $lr((1 comma 2))$ is
$vec(6 med 4)$.

== Link
<link>
- #link("Partial Derivative.pdf")[Partial Derivative]
