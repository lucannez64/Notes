#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Extrema Multivariable function",
  authors: (
    "Lucas",
  ),
  date: "12 Juillet, 2023",
)

#set heading(numbering: "1.1.")

= Extrema Multivariable function
#label("extrema-multivariable-function")
== Definition
#label("definition")
The extrema of a multivariable function are the maximum and minimum
values of the function over a given domain. In other words, they are the
points at which the function takes on its highest and lowest values.

In order to find the extrema of a multivariable function, we need to
first find the critical points of the function, which are the points at
which the partial derivatives of the function are zero or undefined. We
can then evaluate the function at each of these critical points to find
the maximum and minimum values.

For example, consider the function $f lr((x comma y)) eq x^2 plus y^2$.
The partial derivatives of this function are:

$ frac(diff f, diff x) eq 2 x $ $ frac(diff f, diff y) eq 2 y $

The critical points of the function are the points where the partial
derivatives are zero, which are the points $lr((0 comma 0))$ and
$lr((0 comma 0))$. Evaluating the function at these points gives us
$f lr((0 comma 0)) eq 0$ and $f lr((0 comma 0)) eq 0$, so the maximum
and minimum values of the function are $0$.

In general, finding the extrema of a multivariable function can be more
complex than in the one-dimensional case, as the function may have
multiple critical points and the extrema may not be unique. However, the
tools of multivariable calculus can be used to analyze the behavior of
the function near these critical points and to determine the maximum and
minimum values.

== Links
#label("links")
-  #link("Partial Derivative.pdf")[Partial Derivative]
-  #link("Critical Points.pdf")[Critical Points]
