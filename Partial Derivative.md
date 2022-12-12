# Partial Derivative

## Definition

In calculus, a partial derivative of a function of several variables is the derivative of the function with respect to one of the variables, with the others treated as constants. For example, if $f(x,y)$ is a function of two variables, then the partial derivative of $f$ with respect to $x$ is the derivative of $f$ with respect to $x$ while holding $y$ constant, and is denoted $\frac{\partial f}{\partial x}$.

Partial derivatives are useful in multivariable calculus, as they allow us to find the rates of change of a function with respect to each of its variables independently. They are also used in the gradient vector, which points in the direction of the greatest rate of increase of a function at a given point.

The partial derivative of a function $f(x,y)$ with respect to $x$ is given by:

$$\frac{\partial f}{\partial x} = \lim_{h \to 0} \frac{f(x+h,y) - f(x,y)}{h}$$

Similarly, the partial derivative of $f$ with respect to $y$ is given by:

$$\frac{\partial f}{\partial y} = \lim_{h \to 0} \frac{f(x,y+h) - f(x,y)}{h}$$

These expressions can be used to find the partial derivatives of a function by directly computing the limits, or by using the rules of calculus to simplify the expressions.

## Example

To find the partial derivatives of the function $f(x,y) = \sin x \cos y^2$, we need to use the rules of calculus to take the derivatives with respect to $x$ and $y$ while holding the other variable constant.

The partial derivative of $f$ with respect to $x$ is given by:

$$\frac{\partial f}{\partial x} = \frac{\partial}{\partial x} (\sin x \cos y^2) = \frac{\partial}{\partial x} (\sin x) \cos y^2 + \sin x \frac{\partial}{\partial x} (\cos y^2) = \cos x \cos y^2$$

The partial derivative of $f$ with respect to $y$ is given by:

$$\frac{\partial f}{\partial y} = \frac{\partial}{\partial y} (\sin x \cos y^2) = \frac{\partial}{\partial y} (\sin x) \cos y^2 + \sin x \frac{\partial}{\partial y} (\cos y^2) = -2y \sin x \sin y^2$$


## Links
- [Derivative](Derivative.md)
