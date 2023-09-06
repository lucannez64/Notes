#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Lecture 3 Special Relativity (2)",
  authors: (
    "Lucas",
  ),
  date: "6 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Invariance of the Laws of Nature
<invariance-of-the-laws-of-nature>
Laws take the same form in every reference frame. Definition of a
straight line for example is the "shortest distance between two points"
does not reference a coordinate system. Apply the Pythagorean Theorem at
the infinitesimal level. $ d s eq sqrt(d x^2 plus d y^2) $ The distance
between two points is
$ s eq integral d s eq integral d x sqrt(1 plus lr((frac(d y, d x)))^2) $
find the curve that minimizes the distance $s$. Find quantities which
are invariant under coordinate transformations The vector
$lr((d x comma d y))$ for example is not invariant under a rotation, but
$d s^2$ is invariant. For example, a vector (tensor) rotation
(transformation): $  & A_s eq A_x cos theta minus A_y sin theta\
 & A_y eq A_x sin theta plus A_y cos theta $ Compare to a Lorentz
transformation: $  & x^prime eq x cosh omega minus T sinh omega\
 & T^prime eq minus x sinh omega plus T cosh omega\
 & y^prime eq y\
 & z^prime eq z $ The invariant combination is
$ d tau^2 eq T^2 minus x^2 minus y^2 minus z^2 $ Time $T$ does not
change under a spatial rotation. All 4-vectors transform as indicated
under a Lorentz transformation. How to construct quantities which are
scalar invariants with respect to a Lorentz transformation? Consider the
contravariant 4-vector
$ d x^mu eq lr((d T comma d x comma d y comma d z)) $ Construct the
covariant vector by reversing the sign of the time coordinate.
$ d x_mu eq lr((minus d T comma d x comma d y comma d z)) $ Note that
the product between these two vectors is invariant. Use the summation
convention.
$ d tau^2 eq d x^4 d x_mu eq minus d T^2 plus d x^2 plus d y^2 plus d z^2 $
In general, given the contravariant vector $A^mu$ and the covariant
vector $zws^(B_mu)$, then $zws^(A^mu B_mu)$ is invariant by construction
under the Lorentz Transformation.
$ A^mu B_mu eq minus A_T B_T plus A_x B_x plus A_y B_y plus A_z B_z $
The inertial reference frame implies Cartesian coordinates and that
Newton’s Laws are satisfied.

=== Transformation rule
<transformation-rule>
If $A^mu$ is a 4-vector and $zws^(B_mu)$ has unknown transformation
properties, then if $zws^(A^mu B_mu)$ is a scalar then $zws^(B_mu)$ is a
4-vector.

== Field Theory
<field-theory>
Fields in nature: \* Higgs field is a scalar. \* 4-vector
electromagnetic field is a 4-vector. \* Energy and momentum are parts of
a 4-vector. \* Temperature field in a room is a scalar field.
Lagrangians must be scalars. The partial derivative of a scalar is a
covariant 4 -vector. $ frac(diff phi.alt, diff x^(2 x)) eq phi.alt $ The
quantity $d x^mu$ is a contravariant vector, so then
$ frac(diff phi.alt, diff x^alpha) d x^alpha $ should be a scalar.
Identify this expression as the total derivative.
$ frac(diff phi.alt, diff x^mu) d x^mu eq d phi.alt $ The right hand
side is scalar, therefore the left hand side is a scalar, therefore
$ frac(diff phi.alt, diff x^x) $ is a covariant 4 -vector. Invent
$phi.alt^mu$ by changing the sign of the time component.
$  & phi.alt_(mu mu) eq lr((frac(diff phi.alt, diff t) comma frac(diff phi.alt, diff x) comma frac(diff phi.alt, diff y) comma frac(diff phi.alt, diff z)))\
 & phi.alt_(mu mu) eq lr((minus frac(diff phi.alt, diff t) comma frac(diff phi.alt, diff x) comma frac(diff phi.alt, diff y) comma frac(diff phi.alt, diff z))) $
then $phi.alt_(mu mu) phi.alt^mu$ is a scalar.
$ phi.alt_(mu mu) phi.alt^mu lr((minus lr((frac(diff phi.alt, diff t)))^2 comma lr((frac(diff phi.alt, diff x)))^2 comma lr((frac(diff phi.alt, diff y)))^2 comma lr((frac(diff phi.alt, diff z)))^2)) $

=== The four-dimensional Lagrangian
<the-four-dimensional-lagrangian>
Generalize the action from
$ upright(" Action ") eq integral d t cal(L) $ to a four-dimensional
integration.
$ upright(" Action ") eq integral d x d t L quad upright(" Integrate over spacetime. ") $
Return to the vibrating string problem.
$ L eq phi.alt^2 / 2 minus frac(c^2 lr((diff_x phi.alt))^2, 2) $ The
Lagrangian $L$ is a scalar which implies Lorentz invariant equations of
motion.
$ upright(" Action ") eq integral d x^4 lr([phi.alt_i^2 minus phi.alt_x^2 minus phi.alt_y^2 minus phi.alt_z^2]) $
or
$ upright(" Action ") eq integral d x^4 lr([phi.alt^mu phi.alt_(j mu)]) $
Minimize the action. Start with minimizing a little region… to be
continued.
