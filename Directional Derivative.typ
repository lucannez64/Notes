#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Directional Derivative",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "9 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Directional Derivative
<directional-derivative>
== Definition
<definition>
The directional derivative of a multivariable function at a given point
is a measure of the rate of change of the function in a particular
direction at that point. It is a generalization of the concept of the
derivative of a function of one variable, which measures the rate of
change of the function in the direction of the x-axis.

The directional derivative of a function $f lr((x comma y))$ at a point
$lr((x_0 comma y_0))$ in the direction of a unit vector
$bold(u) eq vec(a med b)$ is given by:

$ frac(diff f, diff bold(u)) lr((x_0 comma y_0)) eq nabla f lr((x_0 comma y_0)) dot.op bold(u) eq vec(frac(diff f, diff x) lr((x_0 comma y_0)) med frac(diff f, diff y) lr((x_0 comma y_0))) dot.op vec(a med b) $

Where $nabla f lr((x_0 comma y_0))$ is the
#link("Gradient Vector.pdf")[gradient vector] of the function at the
point $lr((x_0 comma y_0))$, and
$frac(diff f, diff x) lr((x_0 comma y_0))$ and
$frac(diff f, diff y) lr((x_0 comma y_0))$ are the partial derivatives
of the function with respect to $x$ and $y$ respectively.

The directional derivative can be thought of as the projection of the
gradient vector onto the direction specified by the unit vector
$bold(u)$. It tells us the rate of change of the function in the
direction of $bold(u)$ at the point $lr((x_0 comma y_0))$.

== Example
<example>
To find the directional derivative of the function
$f lr((x comma y)) eq x^2 sin 2 y$ in the direction of the vector
$bold(u) eq vec(cos med sin)$, we need to first find the gradient vector
of the function at the given point.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$ frac(diff f, diff x) eq 2 x sin 2 y $
$ frac(diff f, diff y) eq 2 x^2 cos 2 y $

The gradient vector of the function at a point $lr((x_0 comma y_0))$ is
given by:

$ nabla f lr((x_0 comma y_0)) eq vec(frac(diff f, diff x) lr((x_0 comma y_0)) med frac(diff f, diff y) lr((x_0 comma y_0))) eq vec(2 x_0 sin 2 y_0 med 2 x_0^2 cos 2 y_0) $

The directional derivative of the function in the direction of $bold(u)$
at the point $lr((x_0 comma y_0))$ is then given by:

$ frac(diff f, diff bold(u)) lr((x_0 comma y_0)) eq nabla f lr((x_0 comma y_0)) dot.op bold(u) eq vec(2 x_0 sin 2 y_0 med 2 x_0^2 cos 2 y_0) dot.op vec(cos med sin) $

We can evaluate this expression to find the directional derivative. For
example, if $lr((x_0 comma y_0)) eq lr((1 comma 1))$, then the
directional derivative is:

$ frac(diff f, diff bold(u)) lr((1 comma 1)) eq vec(2 dot.op 1 dot.op sin 2 dot.op 1 med 2 dot.op 1^2 cos 2 dot.op 1) dot.op vec(cos med sin) eq vec(sin 2 med cos 2) dot.op vec(cos med sin) eq sin^2 2 plus cos^2 2 eq 1 $

== Link
<link>
- #link("Gradient Vector.pdf")[Gradient Vector]
- #link("Partial Derivative.pdf")[Partial Derivative]
