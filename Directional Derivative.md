# Directional Derivative

## Definition

The directional derivative of a multivariable function at a given point is a measure of the rate of change of the function in a particular direction at that point. It is a generalization of the concept of the derivative of a function of one variable, which measures the rate of change of the function in the direction of the x-axis.

The directional derivative of a function $f(x,y)$ at a point $(x_0,y_0)$ in the direction of a unit vector $\mathbf{u} = \begin{pmatrix} a \ b \end{pmatrix}$ is given by:

$$\frac{\partial f}{\partial \mathbf{u}}(x_0,y_0) = \nabla f(x_0,y_0) \cdot \mathbf{u} = \begin{pmatrix} \frac{\partial f}{\partial x}(x_0,y_0) \ \frac{\partial f}{\partial y}(x_0,y_0) \end{pmatrix} \cdot \begin{pmatrix} a \ b \end{pmatrix}$$

Where $\nabla f(x_0,y_0)$ is the <a href="Gradient Vector.md">gradient vector</a> of the function at the point $(x_0,y_0)$, and $\frac{\partial f}{\partial x}(x_0,y_0)$ and $\frac{\partial f}{\partial y}(x_0,y_0)$ are the partial derivatives of the function with respect to $x$ and $y$ respectively.

The directional derivative can be thought of as the projection of the gradient vector onto the direction specified by the unit vector $\mathbf{u}$. It tells us the rate of change of the function in the direction of $\mathbf{u}$ at the point $(x_0,y_0)$.

## Example

To find the directional derivative of the function $f(x,y) = x^2 \sin 2y$ in the direction of the vector $\mathbf{u} = \begin{pmatrix} \cos \ \sin \end{pmatrix}$, we need to first find the gradient vector of the function at the given point.

The partial derivatives of $f$ with respect to $x$ and $y$ are:

$$\frac{\partial f}{\partial x} = 2x \sin 2y$$
$$\frac{\partial f}{\partial y} = 2x^2 \cos 2y$$

The gradient vector of the function at a point $(x_0,y_0)$ is given by:

$$\nabla f(x_0,y_0) = \begin{pmatrix} \frac{\partial f}{\partial x}(x_0,y_0) \ \frac{\partial f}{\partial y}(x_0,y_0) \end{pmatrix} = \begin{pmatrix} 2x_0 \sin 2y_0 \ 2x_0^2 \cos 2y_0 \end{pmatrix}$$

The directional derivative of the function in the direction of $\mathbf{u}$ at the point $(x_0,y_0)$ is then given by:

$$\frac{\partial f}{\partial \mathbf{u}}(x_0,y_0) = \nabla f(x_0,y_0) \cdot \mathbf{u} = \begin{pmatrix} 2x_0 \sin 2y_0 \ 2x_0^2 \cos 2y_0 \end{pmatrix} \cdot \begin{pmatrix} \cos \ \sin \end{pmatrix}$$

We can evaluate this expression to find the directional derivative. For example, if $(x_0,y_0) = (1,1)$, then the directional derivative is:

$$\frac{\partial f}{\partial \mathbf{u}}(1,1) = \begin{pmatrix} 2 \cdot 1 \cdot \sin 2 \cdot 1 \ 2 \cdot 1^2 \cos 2 \cdot 1 \end{pmatrix} \cdot \begin{pmatrix} \cos \ \sin \end{pmatrix} = \begin{pmatrix} \sin 2 \ \cos 2 \end{pmatrix} \cdot \begin{pmatrix} \cos \ \sin \end{pmatrix} = \sin^2 2 + \cos^2 2 = 1$$

## Link
- <a href="Gradient Vector.md">Gradient Vector</a>
- <a href="Partial Derivative.md">Partial Derivative</a>

