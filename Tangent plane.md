# Tangent Plane

## Definition

A tangent plane is a plane that touches a surface at a single point, and is tangent to the surface at that point. In other words, the tangent plane is the plane that "just touches" the surface at the given point, without crossing it.

The equation of a tangent plane can be found by taking the partial derivatives of the equation of the surface with respect to each variable, and evaluating them at the given point. These partial derivatives give us the slope of the surface in each direction, which we can use to find the equation of the tangent plane.

The tangent plane is a useful concept in calculus, as it allows us to approximate the behavior of a surface near a given point. It can also be used to find the maximum and minimum values of a multivariable function.

## Method
To find the tangent plane of a multivariable function at a given point, we can take the partial derivatives of the function with respect to each variable, and evaluate them at the given point. These partial derivatives will give us the slope of the function in each direction, and we can use them to find the equation of the tangent plane.

The equation of the tangent plane at a point $(x_0,y_0,z_0)$ on a surface given by the function $z = f(x,y)$ is given by:

$$z - z_0 = f_x(x_0,y_0)(x-x_0) + f_y(x_0,y_0)(y-y_0)$$

Where $f_x$ and $f_y$ are the partial derivatives of $f$ with respect to $x$ and $y$ respectively.To find the equation of the tangent plane, we simply evaluate the partial derivatives at the given point and plug them into the equation above.

Example:
To find the equation of the tangent plane of the function $f(x,y) = x^2 + y^2$ at the point $(2,2)$, we need to take the partial derivatives of the function with respect to $x$ and $y$, and evaluate them at the point $(2,2)$.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$$\frac{\partial f}{\partial x} = 2x$$
$$\frac{\partial f}{\partial y} = 2y$$

Evaluating these partial derivatives at the point $(2,2)$ gives us:

$$\frac{\partial f}{\partial x}(2,2) = 2 \cdot 2 = 4$$
$$\frac{\partial f}{\partial y}(2,2) = 2 \cdot 2 = 4$$

We can now plug these values into the equation for the tangent plane to find the equation of the tangent plane at the point $(2,2)$:

$$z - 4 = 4(x-2) + 4(y-2)$$

Simplifying this equation gives us:

$$z = 4x + 4y - 4$$

So the equation of the tangent plane at the point $(2,2)$ on the surface $z = x^2 + y^2$ is $z = 4x + 4y - 4$.

## Link
- [Partial Derivative](Partial Derivative.md)
- [Maths](Maths.md)
