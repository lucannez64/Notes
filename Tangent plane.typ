#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Tangent plane",
  authors: (
    "Lucas",
  ),
  date: "11 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Tangent Plane
<tangent-plane>
== Definition
<definition>
A tangent plane is a plane that touches a surface at a single point, and
is tangent to the surface at that point. In other words, the tangent
plane is the plane that "just touches" the surface at the given point,
without crossing it.

The equation of a tangent plane can be found by taking the partial
derivatives of the equation of the surface with respect to each
variable, and evaluating them at the given point. These partial
derivatives give us the slope of the surface in each direction, which we
can use to find the equation of the tangent plane.

The tangent plane is a useful concept in calculus, as it allows us to
approximate the behavior of a surface near a given point. It can also be
used to find the maximum and minimum values of a multivariable function.

== Method
<method>
To find the tangent plane of a multivariable function at a given point,
we can take the partial derivatives of the function with respect to each
variable, and evaluate them at the given point. These partial
derivatives will give us the slope of the function in each direction,
and we can use them to find the equation of the tangent plane.

The equation of the tangent plane at a point
$lr((x_0 comma y_0 comma z_0))$ on a surface given by the function
$z eq f lr((x comma y))$ is given by:

$ z minus z_0 eq f_x lr((x_0 comma y_0)) lr((x minus x_0)) plus f_y lr((x_0 comma y_0)) lr((y minus y_0)) $

Where $f_x$ and $f_y$ are the partial derivatives of $f$ with respect to
$x$ and $y$ respectively.To find the equation of the tangent plane, we
simply evaluate the partial derivatives at the given point and plug them
into the equation above.

Example: To find the equation of the tangent plane of the function
$f lr((x comma y)) eq x^2 plus y^2$ at the point $lr((2 comma 2))$, we
need to take the partial derivatives of the function with respect to $x$
and $y$, and evaluate them at the point $lr((2 comma 2))$.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$ frac(diff f, diff x) eq 2 x $ $ frac(diff f, diff y) eq 2 y $

Evaluating these partial derivatives at the point $lr((2 comma 2))$
gives us:

$ frac(diff f, diff x) lr((2 comma 2)) eq 2 dot.op 2 eq 4 $
$ frac(diff f, diff y) lr((2 comma 2)) eq 2 dot.op 2 eq 4 $

We can now plug these values into the equation for the tangent plane to
find the equation of the tangent plane at the point $lr((2 comma 2))$:

$ z minus 4 eq 4 lr((x minus 2)) plus 4 lr((y minus 2)) $

Simplifying this equation gives us:

$ z eq 4 x plus 4 y minus 4 $

So the equation of the tangent plane at the point $lr((2 comma 2))$ on
the surface $z eq x^2 plus y^2$ is $z eq 4 x plus 4 y minus 4$.

== Link
<link>
- #link("Partial Derivative.pdf")[Partial Derivative]
- #link("Maths.pdf")[Maths]
