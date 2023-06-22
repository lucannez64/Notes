#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Divergence",
  authors: (
    "Lucas",
  ),
  date: "22 Juin, 2023",
)

#set heading(numbering: "1.1.")

= Divergence
#label("divergence")
Divergence is a measure of how much a vector field "flows" outward from
a given point. It is calculated by taking the dot product of the
gradient of the vector field with the unit normal vector at a point.

$ upright("div") lr((F^⃗)) eq nabla dot.op F^⃗ $

A vector field has positive divergence at a point if the flow is outward
from that point, negative divergence if the flow is inward, and zero
divergence if the flow is balanced.

In three dimensions, the divergence of a vector field
$F^⃗ eq lr((P comma Q comma R))$ is calculated using the following
formula:

$ upright("div") lr((F^⃗)) eq frac(diff P, diff x) plus frac(diff Q, diff y) plus frac(diff R, diff z) $

Divergence is an important concept in calculus 3, as it allows us to
understand the behavior of vector fields in relation to surface and
volume integrals. For example, the divergence theorem states that the
flux of a vector field across a closed surface is equal to the volume
integral of the divergence of that field within the surface.

$ integral.double_S F^⃗ dot.op d S^⃗ eq integral.triple_V upright("div") lr((F^⃗)) comma d V $
