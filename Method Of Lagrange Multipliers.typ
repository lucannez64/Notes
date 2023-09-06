#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Method Of Lagrange Multipliers",
  authors: (
    "Lucas",
  ),
  date: "6 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Lagrand Multipliers
<lagrand-multipliers>
== Definition
<definition>
Lagrange multipliers is a method for finding the maximum and minimum
values of a multivariable function subject to one or more constraints.
The method is named after Joseph-Louis Lagrange, who introduced it in
the 18th century.

The idea behind Lagrange multipliers is to introduce a new variable,
called the Lagrange multiplier, which is associated with each constraint
on the function. The value of the Lagrange multiplier at a given point
represents the amount by which the function is constrained at that
point.

To use Lagrange multipliers to find the maximum and minimum values of a
function, we need to first find the partial derivatives of the function
with respect to each of its variables. We then form a system of
equations by setting the partial derivatives equal to the corresponding
Lagrange multipliers and solving for the variables and the multipliers.

For example, consider the problem of finding the maximum and minimum
values of the function $f lr((x comma y)) eq x^2 plus y^2$ subject to
the constraint $g lr((x comma y)) eq x plus y eq 1$. To use Lagrange
multipliers, we first need to find the partial derivatives of the
function $f$:

$ frac(diff f, diff x) eq 2 x $ $ frac(diff f, diff y) eq 2 y $

We then form a system of equations by setting the partial derivatives
equal to the corresponding Lagrange multipliers and solving for the
variables and the multipliers:

$ 2 x & eq lambda med 2 y & eq lambda med x plus y & eq 1 $

Solving this system of equations, we find that the maximum and minimum
values of the function occur at the points $lr((1 / 2 comma 1 / 2))$ and
$lr((minus 1 / 2 comma minus 1 / 2))$, with function values of $1 / 2$
and $1 / 2$.

Lagrange multipliers are a useful tool in multivariable calculus, as
they allow us to find the maximum and minimum values of a function
subject to one or more constraints. They can be applied to a wide range
of problems in mathematics and physics, including optimization problems
and the study of equilibrium points in dynamical systems.

== Links
<links>
- #link("Extrema Multivariable function.pdf")[Extrema Multivariable function]
