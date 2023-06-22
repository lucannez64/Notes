# Invariance of the Laws of Nature
Laws take the same form in every reference frame.
Definition of a straight line for example is the "shortest distance between two points" does not reference a coordinate system.
Apply the Pythagorean Theorem at the infinitesimal level.
$$
d s=\sqrt{d x^2+d y^2}
$$
The distance between two points is
$$
s=\int d s=\int d x \sqrt{1+\left(\frac{d y}{d x}\right)^2}
$$
find the curve that minimizes the distance $s$.
Find quantities which are invariant under coordinate transformations
The vector $(d x, d y)$ for example is not invariant under a rotation, but $d s^2$ is invariant.
For example, a vector (tensor) rotation (transformation):
$$
\begin{aligned}
& A_s=A_x \cos \theta-A_y \sin \theta \\
& A_y=A_x \sin \theta+A_y \cos \theta
\end{aligned}
$$
Compare to a Lorentz transformation:
$$
\begin{aligned}
& x^{\prime}=x \cosh \omega-T \sinh \omega \\
& T^{\prime}=-x \sinh \omega+T \cosh \omega \\
& y^{\prime}=y \\
& z^{\prime}=z
\end{aligned}
$$
The invariant combination is
$$
d \tau^2=T^2-x^2-y^2-z^2
$$
Time $T$ does not change under a spatial rotation. All 4-vectors transform as indicated under a Lorentz transformation.
How to construct quantities which are scalar invariants with respect to a Lorentz transformation? Consider the contravariant 4-vector
$$
d x^\mu=(d T, d x, d y, d z)
$$
Construct the covariant vector by reversing the sign of the time coordinate.
$$
d x_\mu=(-d T, d x, d y, d z)
$$
Note that the product between these two vectors is invariant. Use the summation convention.
$$
d \tau^2=d x^4 d x_\mu=-d T^2+d x^2+d y^2+d z^2
$$
In general, given the contravariant vector $A^\mu$ and the covariant vector ${ }^{B_\mu}$, then ${ }^{A^\mu B_\mu}$ is invariant by construction under the Lorentz Transformation.
$$
A^\mu B_\mu=-A_T B_T+A_x B_x+A_y B_y+A_z B_z
$$
The inertial reference frame implies Cartesian coordinates and that Newton's Laws are satisfied.

### Transformation rule

If $A^\mu$ is a 4-vector and ${ }^{B_\mu}$ has unknown transformation properties, then if ${ }^{A^\mu B_\mu}$ is a scalar then ${ }^{B_\mu}$ is a 4-vector.

## Field Theory

Fields in nature:
	* Higgs field is a scalar.
	* 4-vector electromagnetic field is a 4-vector.
	* Energy and momentum are parts of a 4-vector.
	* Temperature field in a room is a scalar field.
Lagrangians must be scalars.
The partial derivative of a scalar is a covariant 4 -vector.
$$
\frac{\partial \phi}{\partial x^{2 x}}=\phi
$$
The quantity $d x^\mu$ is a contravariant vector, so then
$$
\frac{\partial \phi}{\partial x^\alpha} d x^\alpha
$$
should be a scalar. Identify this expression as the total derivative.
$$
\frac{\partial \phi}{\partial x^\mu} d x^\mu=d \phi
$$
The right hand side is scalar, therefore the left hand side is a scalar, therefore
$$
\frac{\partial \phi}{\partial x^x}
$$
is a covariant 4 -vector.
Invent $\phi^\mu$ by changing the sign of the time component.
$$
\begin{aligned}
& \phi_{\mu \mu}=\left(\frac{\partial \phi}{\partial t}, \frac{\partial \phi}{\partial x}, \frac{\partial \phi}{\partial y}, \frac{\partial \phi}{\partial z}\right) \\
& \phi_{\mu \mu}=\left(-\frac{\partial \phi}{\partial t}, \frac{\partial \phi}{\partial x}, \frac{\partial \phi}{\partial y}, \frac{\partial \phi}{\partial z}\right)
\end{aligned}
$$
then $\phi_{\mu \mu} \phi^\mu$ is a scalar.
$$
\phi_{\mu \mu} \phi^\mu\left(-\left(\frac{\partial \phi}{\partial t}\right)^2,\left(\frac{\partial \phi}{\partial x}\right)^2,\left(\frac{\partial \phi}{\partial y}\right)^2,\left(\frac{\partial \phi}{\partial z}\right)^2\right)
$$

### The four-dimensional Lagrangian

Generalize the action from
$$
\text { Action }=\int d t \mathcal{L}
$$
to a four-dimensional integration.
$$
\text { Action }=\int d x d t L \quad \text { Integrate over spacetime. }
$$
Return to the vibrating string problem.
$$
L=\frac{\phi^2}{2}-\frac{c^2\left(\partial_x \phi\right)^2}{2}
$$
The Lagrangian $L$ is a scalar which implies Lorentz invariant equations of motion.
$$
\text { Action }=\int d x^4\left[\phi_i^2-\phi_x^2-\phi_y^2-\phi_z^2\right]
$$
or
$$
\text { Action }=\int d x^4\left[\phi^\mu \phi_{j \mu}\right]
$$
Minimize the action. Start with minimizing a little region... to be continued.