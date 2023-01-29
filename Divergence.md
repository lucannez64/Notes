# Divergence
Divergence is a measure of how much a vector field "flows" outward from a given point. It is calculated by taking the dot product of the gradient of the vector field with the unit normal vector at a point.

$$ \text{div}(\vec{F}) = \nabla \cdot \vec{F} $$

A vector field has positive divergence at a point if the flow is outward from that point, negative divergence if the flow is inward, and zero divergence if the flow is balanced.

In three dimensions, the divergence of a vector field $\vec{F} = (P,Q,R)$ is calculated using the following formula:

$$ \text{div}(\vec{F}) = \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} $$

Divergence is an important concept in calculus 3, as it allows us to understand the behavior of vector fields in relation to surface and volume integrals. For example, the divergence theorem states that the flux of a vector field across a closed surface is equal to the volume integral of the divergence of that field within the surface.

$$ \iint_S \vec{F} \cdot d\vec{S} = \iiint_V \text{div}(\vec{F}) , dV $$
