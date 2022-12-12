# Lagrand Multipliers

## Definition

Lagrange multipliers is a method for finding the maximum and minimum values of a multivariable function subject to one or more constraints. The method is named after Joseph-Louis Lagrange, who introduced it in the 18th century.

The idea behind Lagrange multipliers is to introduce a new variable, called the Lagrange multiplier, which is associated with each constraint on the function. The value of the Lagrange multiplier at a given point represents the amount by which the function is constrained at that point.

To use Lagrange multipliers to find the maximum and minimum values of a function, we need to first find the partial derivatives of the function with respect to each of its variables. We then form a system of equations by setting the partial derivatives equal to the corresponding Lagrange multipliers and solving for the variables and the multipliers.

For example, consider the problem of finding the maximum and minimum values of the function $f(x,y) = x^2 + y^2$ subject to the constraint $g(x,y) = x + y = 1$. To use Lagrange multipliers, we first need to find the partial derivatives of the function $f$:

$$\frac{\partial f}{\partial x} = 2x$$
$$\frac{\partial f}{\partial y} = 2y$$

We then form a system of equations by setting the partial derivatives equal to the corresponding Lagrange multipliers and solving for the variables and the multipliers:

$$\begin{aligned} 2x &= \lambda \ 2y &= \lambda \ x+y &= 1 \end{aligned}$$

Solving this system of equations, we find that the maximum and minimum values of the function occur at the points $(\frac{1}{2},\frac{1}{2})$ and $(-\frac{1}{2},-\frac{1}{2})$, with function values of $\frac{1}{2}$ and $\frac{1}{2}$.

Lagrange multipliers are a useful tool in multivariable calculus, as they allow us to find the maximum and minimum values of a function subject to one or more constraints. They can be applied to a wide range of problems in mathematics and physics, including optimization problems and the study of equilibrium points in dynamical systems.

## Links
- <a href="Extrema Multivariable function.md">Extrema Multivariable function</a>
