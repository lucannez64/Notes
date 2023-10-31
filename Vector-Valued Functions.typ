#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Vector-Valued Functions",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Vector-Valued functions
<vector-valued-functions>
== Definition
<definition>
Tangent vectors and normal vectors are two types of vectors that are
associated with vector-valued functions. A tangent vector is a vector
that is tangent to the curve or surface defined by the vector-valued
function, while a normal vector is a vector that is perpendicular to the
curve or surface.

Tangent vectors and normal vectors are important because they provide
information about the local behavior of a vector-valued function. For
example, the direction of the tangent vector at a point on a curve can
be used to determine the direction of the curve at that point, while the
direction of the normal vector at a point on a surface can be used to
determine the orientation of the surface at that point.

Tangent vectors and normal vectors can be calculated using a variety of
mathematical techniques. In general, the tangent vector at a point on a
curve is found by taking the derivative of the vector-valued function at
that point, while the normal vector at a point on a surface is found by
taking the gradient of the function at that point. These vectors can
then be used to study the properties of the function at that point, such
as its curvature or its rate of change.

=== Formula
<formula>
The main formula for vector-valued functions is:

f(t) \= x(t)i + y(t)j + z(t)k

where t is the input variable, i, j, and k are the unit vectors in the
x, y, and z directions, respectively, and x(t), y(t), and z(t) are
functions that determine the magnitude of the vector in each direction.
This formula is known as the parametric representation of a
vector-valued function, because it expresses the vector as a function of
a single input variable, t, which is called the parameter.

This formula can be used to represent a wide variety of vector-valued
functions, including those that describe curves in two- or
three-dimensional space, or surfaces in three-dimensional space. It
provides a convenient way to represent and manipulate vector-valued
functions using mathematical operations, such as differentiation and
integration.

Note that this formula is just one of many possible ways to represent
vector-valued functions. Other representations are also commonly used,
depending on the specific problem being considered and the tools and
techniques being used to study the function.

== Tangent and Normal Vector
<tangent-and-normal-vector>
Tangent vectors and normal vectors are two types of vectors that are
associated with vector-valued functions. A tangent vector is a vector
that is tangent to the curve or surface defined by the vector-valued
function, while a normal vector is a vector that is perpendicular to the
curve or surface.

Tangent vectors and normal vectors are important because they provide
information about the local behavior of a vector-valued function. For
example, the direction of the tangent vector at a point on a curve can
be used to determine the direction of the curve at that point, while the
direction of the normal vector at a point on a surface can be used to
determine the orientation of the surface at that point.

Tangent vectors and normal vectors can be calculated using a variety of
mathematical techniques. In general, the tangent vector at a point on a
curve is found by taking the derivative of the vector-valued function at
that point, while the normal vector at a point on a surface is found by
taking the gradient of the function at that point. These vectors can
then be used to study the properties of the function at that point, such
as its curvature or its rate of change.

=== Formula
<formula-1>
===== Tangent Vector
<tangent-vector>
The main formula for calculating the tangent vector at a point on a
curve defined by a vector-valued function is:

T(t) \= f’(t)

where f(t) is the vector-valued function, and f’(t) is the derivative of
the function with respect to the input variable t. This formula
expresses the tangent vector as the derivative of the function, which
provides information about the local slope or rate of change of the
function at the point in question.

==== Normal Vector
<normal-vector>
The main formula for calculating the normal vector at a point on a
surface defined by a vector-valued function is:

N(t) \= ∇f(t)

where f(t) is the vector-valued function, and ∇f(t) is the gradient of
the function at the point in question. The gradient is a vector that
points in the direction of greatest rate of increase of the function,
and is perpendicular to the surface at the point in question. This
formula expresses the normal vector as the gradient of the function,
which provides information about the orientation of the surface at the
point in question.

Note that these formulas are just two examples of many possible ways to
calculate the tangent and normal vectors of vector-valued functions.
There are many other techniques and methods that can be used to
calculate these vectors, depending on the specific problem being
considered and the tools and techniques being used to study the
function.

===== Gradient
<gradient>
The main formula for calculating the gradient of a vector-valued
function is:

∇f(t) \= \[f1’(t), f2’(t), f3’(t)\]

where f(t) is the vector-valued function, f1(t), f2(t), and f3(t) are
the components of the function in the x, y, and z directions,
respectively, and f1’(t), f2’(t), and f3’(t) are the derivatives of
these components with respect to the input variable t. This formula
expresses the gradient of the function as a vector whose components are
the partial derivatives of the function with respect to each input
variable.

The gradient is a vector that points in the direction of greatest rate
of increase of the function, and is perpendicular to the surface defined
by the function at the point in question. It can be used to calculate
the normal vector at a point on a surface, and is an important tool in
vector calculus and other branches of mathematics.

Note that this formula is just one of many possible ways to calculate
the gradient of a vector-valued function. There are many other
techniques and methods that can be used to calculate the gradient,
depending on the specific problem being considered and the tools and
techniques being used to study the function.

=== Arc Length and Curvature
<arc-length-and-curvature>
The arc length of a vector-valued function is a measure of the distance
along the curve defined by the function. It is calculated by dividing
the length of the curve by the number of intervals into which the curve
is divided, and is often denoted by the symbol s. The formula for the
arc length of a vector-valued function is:

s \= ∫∣f’(t)∣dt

where f(t) is the vector-valued function, f’(t) is the derivative of the
function with respect to the input variable t, and the integral is taken
over the range of t for which the function is defined. This formula
expresses the arc length as the integral of the magnitude of the
derivative of the function, which provides a way to calculate the
distance along the curve defined by the function.

The curvature of a vector-valued function is a measure of the degree to
which the curve defined by the function deviates from a straight line.
It is calculated by taking the magnitude of the derivative of the
tangent vector at a point on the curve, and is often denoted by the
symbol k. The formula for the curvature of a vector-valued function is:

k \= ∣f’’(t)∣

where f(t) is the vector-valued function, f’(t) is the derivative of the
function with respect to the input variable t, and f’’(t) is the second
derivative of the function. This formula expresses the curvature as the
magnitude of the second derivative of the function, which provides a way
to calculate the degree to which the curve defined by the function is
curved at a given point.

Both the arc length and curvature of a vector-valued function are
important concepts in vector calculus and other branches of mathematics.
They provide information about the local behavior of the function, and
can be used to study the properties of the curve or surface defined by
the function.
