#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Symmetry Groups and Degeneracy",
  authors: (
    "Lucas",
  ),
  date: "12 Juillet, 2023",
)

#set heading(numbering: "1.1.")

== Symmetry Groups and Degeneracy in Advanced Quantum Mechanics
#label("symmetry-groups-and-degeneracy-in-advanced-quantum-mechanics")
=== 1. Rotational Symmetry:
#label("rotational-symmetry")
-  Rotational symmetry is a fundamental concept in quantum mechanics
  that arises from the isotropy of space, i.e., the laws of physics
  remain unchanged under rotations.
-  Rotational symmetry is closely related to angular momentum, which
  quantifies the rotational motion of a system.
-  Angular momentum operators, denoted by $J$, are defined by the
  commutation relations
  $lr([J_i comma J_j]) eq i planck.reduce epsilon.alt_(i j k) J_k$,
  where $i$, $j$, and $k$ are the Cartesian components and
  $epsilon.alt_(i j k)$ is the Levi-Civita symbol.

=== 2. Angular Momentum:
#label("angular-momentum")
-  Angular momentum is a conserved quantity in quantum mechanics and
  plays a crucial role in the description of particles and their
  interactions.
-  In quantum mechanics, angular momentum is quantized, meaning it can
  only take certain discrete values.
-  The total angular momentum operator, denoted by $J$, is the sum of
  the orbital angular momentum operator ($L$) and the spin angular
  momentum operator ($S$).

=== 3. Commutator:
#label("commutator")
-  The commutator between two operators $A$ and $B$, denoted by
  $lr([A comma B])$, is defined as $lr([A comma B]) eq A B minus B A$.
-  The commutator quantifies the non-commutativity of operators and
  determines the order in which they act.
-  In quantum mechanics, the commutator between two observables
  represents the uncertainty relation between them.

=== 4. Degeneracy:
#label("degeneracy")
-  Degeneracy refers to the phenomenon where multiple states of a
  quantum system have the same energy.
-  Degeneracy arises due to the existence of symmetry in the system,
  leading to multiple states with indistinguishable energies.
-  Degenerate states form a subspace within the larger Hilbert space
  associated with the system.
-  Degeneracy can have profound implications for the behavior and
  properties of quantum systems.

=== 5. Symmetry Generators:
#label("symmetry-generators")
-  Symmetry generators are operators that generate symmetry
  transformations on a quantum system.
-  For rotational symmetry, the symmetry generators are the components
  of angular momentum operators ($J_x comma J_y comma J_z$).
-  Symmetry generators act on quantum states to produce transformed
  states that belong to the same symmetry class.

=== 6. Symmetry Groups:
#label("symmetry-groups")
-  Symmetry groups are mathematical structures that describe the
  collection of all symmetry transformations that leave a physical
  system invariant.
-  In quantum mechanics, symmetry groups play a fundamental role in
  determining the properties and behaviors of quantum systems.
-  The symmetry group associated with rotational symmetry is the special
  unitary group in three dimensions, denoted by $S U lr((2))$.
-  Symmetry groups provide a powerful framework for understanding the
  degeneracy and symmetry-related properties of quantum systems.

=== 7. Lie Algebra:
#label("lie-algebra")
-  The Lie algebra of a symmetry group is a vector space that captures
  the algebraic properties of the group’s generators.
-  In the case of rotational symmetry, the Lie algebra associated with
  the special unitary group in three dimensions ($S U lr((2))$) is the
  algebra of Pauli spin matrices.
-  The Lie algebra provides a mathematical foundation for studying the
  symmetry transformations and their algebraic relations.

=== 8. Raising and Lowering Operators:
#label("raising-and-lowering-operators")
-  Raising and lowering operators are operators that allow the
  generation of new states with different angular momentum quantum
  numbers from a given state.
-  In the context of angular momentum, raising operators ($J_plus$)
  increase the angular momentum quantum number, while lowering operators
  ($J_minus$) decrease it.
-  The action of raising and lowering operators on angular momentum
  eigenstates leads to the construction

of multiplets and facilitates the understanding of degeneracy.
