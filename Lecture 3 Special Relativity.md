# Lecture 3: Relativistic Laws of Motion and $E=mc^2$

## Binomial Development

- When $v$ is much less than $c$, we can use the binomial expansion:
  $$
  \frac{1}{\sqrt{1 - \left(\frac{v}{c}\right)^2}} = 1 + \frac{1}{2}\left(\frac{v}{c}\right)^2 + \frac{3}{8}\left(\frac{v}{c}\right)^4 + \ldots
  $$
- This expansion is useful for understanding relativistic effects when velocities are not extreme.

## Time-like Trajectory

- For a particle moving along a time-like trajectory, the proper time $\tau$ is defined as the time experienced by the particle itself.
- The relation between the proper time $\tau$ and the coordinate time $t$ is given by:
  $$
  \tau = \int \sqrt{1 - \frac{v^2}{c^2}} \, dt
  $$
- The proper time is always positive and is the longest possible time interval between two events.

## Worldline of a Particle

- The worldline of a particle is the trajectory of the particle in spacetime, described by the coordinates $(x, y, z, ct)$.
- The interval $ds^2$ along the worldline is given by:
  $$
  ds^2 = c^2 \, dt^2 - dx^2 - dy^2 - dz^2
  $$
- The spacetime interval is invariant under Lorentz transformations and is independent of the observer's reference frame.

## Relation of 4-Velocity to Regular Velocity

- The 4-velocity $U^\mu$ of a particle is defined as:
  $$
  U^\mu = \frac{dx^\mu}{d\tau} = \gamma \left(c, \frac{d\mathbf{r}}{dt}\right)
  $$
- Here, $\gamma = \frac{1}{\sqrt{1 - \frac{v^2}{c^2}}}$ is the Lorentz factor.
- The components of the 4-velocity relate to the regular velocity $\mathbf{v}$ as:
  $$
  U^0 = \gamma c, \quad U^i = \gamma v^i
  $$

## Least Action

- The principle of least action states that the path taken by a particle between two events minimizes the action, which is the integral of the Lagrangian over the proper time:
  $$
  S = \int L \, d\tau
  $$
- The action is stationary for the actual path taken by the particle.

## Lagrangian

- The Lagrangian $L$ is defined as the difference between the kinetic energy $T$ and the potential energy $V$ of a system: $L = T - V$.
- In special relativity, the Lagrangian is given by:
  $$
  L = -m_0 c^2 \sqrt{1 - \frac{v^2}{c^2}}
  $$
- Here, $m_0$ is the rest mass of the particle.

## Momentum Conservation

- Momentum is defined as the derivative of the Lagrangian with respect to velocity: $\mathbf{p} = \frac{\partial L}{\partial \mathbf{v}}$.


- The conservation of momentum arises from the invariance of the Lagrangian under translations in space.

## Hamiltonian and Energy

- The Hamiltonian $H$ is defined as the Legendre transform of the Lagrangian: $H = \mathbf{p} \cdot \mathbf{v} - L$.
- The Hamiltonian is related to the energy of the system: $H = E - \mathbf{p} \cdot \mathbf{v}$.

## Zero Mass Particles and Positronium

- Zero mass particles, such as photons, follow null trajectories in spacetime.
- The relativistic energy-momentum relation for zero mass particles is given by $E = pc$.
- Positronium is a bound state of an electron and a positron. Its total energy can be expressed as the sum of the electron and positron energies.