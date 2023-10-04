#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "SimpleOrdinaryDE",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "4 Octobre, 2023",
)

#set heading(numbering: "1.1.")

#align(center)[#table(
  columns: 1,
  align: (col, row) => (auto,).at(col),
  inset: 6pt,
  [- link:
  https:\/\/www.youtube.com/watch?v\=BjvkBLfvkqY&list\=PLMrJAkhIeNNTYaOnVI3QpH7jgULnAmvPA&index\=4],
)
]

= Simple Ordinary Differential Equation
<simple-ordinary-differential-equation>
== First Order Linear Ordinary D.E
<first-order-linear-ordinary-d.e>
Let’s say that bunnies are procreating \
let x \= bunny population \
and the population grows at a rate $lambda$

$dot(x) eq frac(d x, d t) eq lambda x comma x lr((0)) med i n i t i a l med p o p med s i z e$

We ask the question what is the population as a function of time ? \
x(t) ?

=== Method 1:
<method-1>
$frac(d x, d t) eq lambda x$ \
$frac(d x, x) eq lambda d t$ \
$integral frac(d x, x) eq integral lambda d t$ \
\=\> $l n lr((x lr((t)))) eq lambda t plus C$ \
\=\> $x lr((t)) eq e^(lambda t plus C)$ $e^(a plus b) eq e^a e^b$ \
$x lr((t)) eq e^(lambda t) plus K$ \
K ? $X lr((0)) eq e^0 K arrow.r.double K eq x lr((0))$

== Second Order ODE
<second-order-ode>
=== Example
<example>
The differential equation you’ve written down is a second-order linear
differential equation with constant coefficients, which can be written
in the standard form
$frac(d^2 x, d t^2) plus k / m frac(d x, d t) plus g / m x eq 0$. To
solve this type of differential equation, you can use the characteristic
equation, which is given by the equation
$lambda^2 plus k / m lambda plus g / m eq 0$. The solutions to this
equation are the so-called characteristic roots, which are the values of
$lambda$ that satisfy the equation. In this case, the characteristic
roots are given by the quadratic formula:

$ lambda eq frac(minus k / m plus.minus sqrt(lr((k / m))^2 minus 4 dot.op g / m), 2) dot.basic $

Once you have the characteristic roots, you can find the general
solution to the differential equation by writing it in the form
$x lr((t)) eq c_1 e^(lambda_1 t) plus c_2 e^(lambda_2 t)$, where $c_1$
and $c_2$ are constants and $lambda_1$ and $lambda_2$ are the
characteristic roots. To find the specific solution to the equation, you
need to use initial conditions, which specify the values of $x$ and
$dot(x)$ at a particular time $t_0$. Using these initial conditions, you
can solve for the constants $c_1$ and $c_2$ and obtain the specific
solution to the differential equation.

#link("Maths.pdf")[Maths]
