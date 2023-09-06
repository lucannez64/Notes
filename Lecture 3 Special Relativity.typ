#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Lecture 3 Special Relativity",
  authors: (
    "Lucas",
  ),
  date: "6 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Lecture 3: Relativistic Laws of Motion and $E eq m c^2$
<lecture-3-relativistic-laws-of-motion-and-emc2>
== Binomial Development
<binomial-development>
- When $v$ is much less than $c$, we can use the binomial expansion:
  $ 1 / sqrt(1 minus lr((v / c))^2) eq 1 plus 1 / 2 lr((v / c))^2 plus 3 / 8 lr((v / c))^4 plus dots.h $
- This expansion is useful for understanding relativistic effects when
  velocities are not extreme.

== Time-like Trajectory
<time-like-trajectory>
- For a particle moving along a time-like trajectory, the proper time
  $tau$ is defined as the time experienced by the particle itself.
- The relation between the proper time $tau$ and the coordinate time $t$
  is given by: $ tau eq integral sqrt(1 minus v^2 / c^2) thin d t $
- The proper time is always positive and is the longest possible time
  interval between two events.

== Worldline of a Particle
<worldline-of-a-particle>
- The worldline of a particle is the trajectory of the particle in
  spacetime, described by the coordinates
  $lr((x comma y comma z comma c t))$.
- The interval $d s^2$ along the worldline is given by:
  $ d s^2 eq c^2 thin d t^2 minus d x^2 minus d y^2 minus d z^2 $
- The spacetime interval is invariant under Lorentz transformations and
  is independent of the observer’s reference frame.

== Relation of 4-Velocity to Regular Velocity
<relation-of-4-velocity-to-regular-velocity>
- The 4-velocity $U^mu$ of a particle is defined as:
  $ U^mu eq frac(d x^mu, d tau) eq gamma lr((c comma frac(d bold(r), d t))) $
- Here, $gamma eq 1 / sqrt(1 minus v^2 / c^2)$ is the Lorentz factor.
- The components of the 4-velocity relate to the regular velocity
  $bold(v)$ as: $ U^0 eq gamma c comma quad U^i eq gamma v^i $

== Least Action
<least-action>
- The principle of least action states that the path taken by a particle
  between two events minimizes the action, which is the integral of the
  Lagrangian over the proper time: $ S eq integral L thin d tau $
- The action is stationary for the actual path taken by the particle.

== Lagrangian
<lagrangian>
- The Lagrangian $L$ is defined as the difference between the kinetic
  energy $T$ and the potential energy $V$ of a system: $L eq T minus V$.
- In special relativity, the Lagrangian is given by:
  $ L eq minus m_0 c^2 sqrt(1 minus v^2 / c^2) $
- Here, $m_0$ is the rest mass of the particle.

== Momentum Conservation
<momentum-conservation>
- Momentum is defined as the derivative of the Lagrangian with respect
  to velocity: $bold(p) eq frac(diff L, diff bold(v))$.

- The conservation of momentum arises from the invariance of the
  Lagrangian under translations in space.

== Hamiltonian and Energy
<hamiltonian-and-energy>
- The Hamiltonian $H$ is defined as the Legendre transform of the
  Lagrangian: $H eq bold(p) dot.op bold(v) minus L$.
- The Hamiltonian is related to the energy of the system:
  $H eq E minus bold(p) dot.op bold(v)$.

== Zero Mass Particles and Positronium
<zero-mass-particles-and-positronium>
- Zero mass particles, such as photons, follow null trajectories in
  spacetime.
- The relativistic energy-momentum relation for zero mass particles is
  given by $E eq p c$.
- Positronium is a bound state of an electron and a positron. Its total
  energy can be expressed as the sum of the electron and positron
  energies.
