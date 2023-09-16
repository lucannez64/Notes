#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Multivariable Function",
  authors: (
    "Lucas",
  ),
  date: "16 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Multivariable Function
<multivariable-function>
== Definition
<definition>
A multivariable function is a function of more than one variable. For
example, if $f lr((x comma y))$ is a function of two variables $x$ and
$y$, then it is a multivariable function.

Multivariable functions are useful in mathematics and physics, as they
allow us to model phenomena that depend on more than one variable. For
example, the position of a particle in three-dimensional space can be
represented by a function of three variables, such as
$f lr((x comma y comma z)) eq x^2 plus y^2 plus z^2$.

In order to find the value of a multivariable function at a given point,
we need to specify the values of all of its variables. For example, to
find the value of $f lr((x comma y))$ at the point $lr((1 comma 2))$, we
would plug in $x eq 1$ and $y eq 2$ into the function to get
$f lr((1 comma 2))$.

Multivariable functions can be analyzed using the tools of multivariable
calculus, such as partial derivatives, gradient vectors, and tangent
planes. These allow us to study the behavior of the function near a
given point, and to find maximum and minimum values of the function.

#image("Multivariable Function Countour plot.png")
#image("Multivariable Function 3D.png")

== Links
<links>
- #link("Partial Derivative.pdf")[Partial Derivative]
- #link("Gradient Vector.pdf")[Gradient Vector]
- #link("Tangent plane.pdf")[Tangent Plane]
- #link("Directional Derivative.pdf")[Directional Derivative]
- #link("Extrema Multivariable function.pdf")[Extrema Multivariable function]
- #link("Method Of Lagrange Multipliers.pdf")[Method Of Lagrange Multipliers]
- #link("Maths.pdf")[Maths]
