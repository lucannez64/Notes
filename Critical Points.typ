#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Critical Points",
  authors: (
    "Lucas",
  ),
  date: "16 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Critical Points
<critical-points>
== Definition
<definition>
A critical point of a multivariable function is a point at which the
partial derivatives of the function are either zero or undefined. In
other words, it is a point at which the function is not changing along
one or more of its variables.

Critical points are important in multivariable calculus, as they are the
points where the behavior of the function changes. For example, the
maximum and minimum values of a function may occur at a critical point.

To find the critical points of a function $f lr((x comma y))$, we need
to take the partial derivatives of the function with respect to $x$ and
$y$ and set them equal to zero. This gives us a system of equations that
can be solved to find the values of $x$ and $y$ at the critical points.

For example, consider the function $f lr((x comma y)) eq x^2 plus y^2$.
The partial derivatives of this function are:

$ frac(diff f, diff x) eq 2 x $ $ frac(diff f, diff y) eq 2 y $

Setting these partial derivatives equal to zero, we get the equations
$2 x eq 0$ and $2 y eq 0$. Solving these equations gives us the critical
points $lr((0 comma 0))$ and $lr((0 comma 0))$.

In general, finding the critical points of a multivariable function can
be more complex than in the one-dimensional case, as the function may
have multiple partial derivatives and the critical points may not be
unique. However, the tools of multivariable calculus can be used to
analyze the behavior of the function near these critical points and to
determine their importance.

== Links
<links>
- #link("Partial Derivative.pdf")[Partial Derivative]
