# Gradient Vector

## Definition 

In multivariable calculus, the gradient vector of a scalar-valued function is a vector-valued function that points in the direction of the greatest rate of increase of the function at a given point. It is a generalization of the concept of the derivative of a function of one variable, which points in the direction of the greatest rate of increase of the function at a given point.

The gradient vector of a function $f(x,y)$ at a point $(x_0,y_0)$ is given by:

$$\nabla f(x_0,y_0) = \begin{pmatrix} \frac{\partial f}{\partial x}(x_0,y_0) \ \frac{\partial f}{\partial y}(x_0,y_0) \end{pmatrix}$$

Where $\frac{\partial f}{\partial x}(x_0,y_0)$ and $\frac{\partial f}{\partial y}(x_0,y_0)$ are the partial derivatives of the function with respect to $x$ and $y$ respectively.

The gradient vector is a useful concept in multivariable calculus, as it allows us to find the direction of maximum increase of a function at a given point, and to calculate the directional derivative of a function in a particular direction.

## Example

To find the gradient vector of the function $f(x,y) = y \ln x + xy^2$ at a point $(x_0,y_0)$, we need to take the partial derivatives of the function with respect to $x$ and $y$ and evaluate them at the point $(x_0,y_0)$.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$$\frac{\partial f}{\partial x} = y^2 + y \frac{1}{x}$$
$$\frac{\partial f}{\partial y} = \ln x + 2xy$$

The gradient vector of the function at the point $(x_0,y_0)$ is then given by:

$$\nabla f(x_0,y_0) = \begin{pmatrix} \frac{\partial f}{\partial x}(x_0,y_0) \ \frac{\partial f}{\partial y}(x_0,y_0) \end{pmatrix} = \begin{pmatrix} y_0^2 + \frac{y_0}{x_0} \ \ln x_0 + 2x_0y_0 \end{pmatrix}$$

For example, if $(x_0,y_0) = (1,1)$, then the gradient vector is:

$$\nabla f(1,1) = \begin{pmatrix} 1^2 + \frac{1}{1} \ \ln 1 + 2 \cdot 1 \cdot 1 \end{pmatrix} = \begin{pmatrix} 2 \ 2 \end{pmatrix}$$

Evaluating these partial derivatives at the point $(1,2)$ gives us:

$$\frac{\partial f}{\partial x}(1,2) = 2^2 + 2 \cdot \frac{1}{1} = 6$$ $$\frac{\partial f}{\partial y}(1,2) = \ln 1 + 2 \cdot 1 \cdot 2 = 4$$

The gradient vector at the point $(1,2)$ is then given by:

$$\nabla f(1,2) = \begin{pmatrix} \frac{\partial f}{\partial x}(1,2) \ \frac{\partial f}{\partial y}(1,2) \end{pmatrix} = \begin{pmatrix} 6 \ 4 \end{pmatrix}$$

Therefore, the gradient vector at the point $(1,2)$ is $\begin{pmatrix} 6 \ 4 \end{pmatrix}$.

## Link
- <a href="Partial Derivative.md">Partial Derivative</a>
