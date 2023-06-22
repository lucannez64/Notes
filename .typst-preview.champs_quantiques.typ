#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Champs Quantiques",
  authors: (
    "Lucas",
  ),
  date: "26 Mars, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction
La théorie quantique des champs est une branche de la physique théorique qui traite du comportement des particules subatomiques et de leurs interactions. Il s'agit d'une généralisation de la mécanique quantique, qui traite du comportement des atomes et des molécules. La théorie quantique des champs est nécessaire pour comprendre le comportement des particules élémentaires, telles que les électrons, les protons et les neutrons. Elle est également nécessaire pour comprendre le comportement de la lumière, ainsi que le comportement des forces, telles que la force forte et la force faible.

Ce cours est une introduction aux concepts de base de la théorie quantique des champs. Nous discuterons des champs, du lagrangien et des équations d'Euler-Lagrange. Nous discuterons ainsi des différents types de théories quantiques des champs, telles que la théorie du champ de Dirac et la théorie du champ de Klein-Gordon. Nous discuterons de plus des différents types d'équations des champs quantiques, telles que l'équation de Dirac et l'équation de Klein-Gordon.

Ce cours abordera aussi le modèle standard de la physique des particules. Le modèle standard est une théorie très réussie qui décrit le comportement de toutes les particules élémentaires connues. Il décrit pareillement le comportement des forces qui agissent sur ces particules.
= Cours associés
- #link("mecanique_quantique.pdf", "Mécanique Quantique")

Plan of the course:

== 1. Introduction
#label("introduction")
-  Briefly introduce Quantum Field Theory and its significance in modern
  physics
-  A quick overview of what QFT is and how it expands upon Quantum
  Mechanics
-  The scope and objectives of the paper

== 2. Classical Field Theory
#label("classical-field-theory")
-  Review of classical mechanics and fields
-  Introduction to Lagrangian and Hamiltonian formalisms
-  Derivation of classical field equations

== 3. Quantum Mechanics Review
#label("quantum-mechanics-review")
-  Briefly review essential concepts in Quantum Mechanics (QM) relevant
  to QFT
  -  Wave-particle duality
  -  The Schrödinger equation
  -  Wavefunctions and probability amplitudes
  -  Quantum states, superposition, and entanglement

== 4. Fields and Particles in QFT
#label("fields-and-particles-in-qft")
-  Introduce the concept of fields and their relation to particles
  -  Classical fields (e.g., electromagnetic field)
  -  Quantum fields
-  Explain how particles are excitations of their corresponding fields
-  The role of fields in QFT

== 5. The Basics of QFT: Canonical Quantization and Path Integral
Formalisms
#label("the-basics-of-qft-canonical-quantization-and-path-integral-formalisms")
-  Introduce the process of quantizing a field and its significance in
  QFT
-  Explain canonical quantization and its properties, including the
  commutation relations between fields and their canonical momenta, the
  Hamiltonian formulation, etc.
-  Discuss the path integral formalism as an alternative quantization
  approach. Show how it leads to the same results as canonical
  quantization. The path integral is a useful conceptual tool and
  relates quantum field theory to statistical mechanics.

== 6. The Klein-Gordon Equation and the Dirac Equation
#label("the-klein-gordon-equation-and-the-dirac-equation")
-  Introduce the Klein-Gordon equation as the relativistic counterpart
  to the Schrödinger equation
-  Explain the significance of the equation in QFT
-  Derive the Klein-Gordon equation from classical field theory
-  Introduce the Dirac equation and its importance in QFT
-  Connect the Dirac field to fermions and the concept of spin
-  Relativistic invariance of the Dirac equation

== 7. The Quantization of Fields
#label("the-quantization-of-fields")
-  Introduce creation and annihilation operators
-  The Fock space and multi-particle states

== 8. Interactions and Perturbation Theory
#label("interactions-and-perturbation-theory")
-  Introduce the concept of interactions in QFT
-  The role of gauge symmetries in determining interactions
-  Introduce perturbation theory as a way to approximate interaction
  processes
-  Feynman diagrams as a visual representation of particle interactions

== 9. Propagators, Scattering Amplitudes, and Renormalization
#label("propagators-scattering-amplitudes-and-renormalization")
-  Discuss propagators and their relation to the scattering matrix and
  Feynman diagrams. Propagators encode the core properties of a quantum
  field.
-  Discuss the issue of infinities in QFT and the need for
  renormalization
-  Introduce the concept of renormalization and regularization methods
-  The physical interpretation of renormalized quantities
-  Discuss the definition and calculation of transition rates,
  cross-sections, decay rates and scattering amplitudes in more detail
  using the path integral and Feynman diagram approaches. These are key
  applications of quantum field theory.

== 10. Symmetries, Topology, and Applications
#label("symmetries-topology-and-applications")
-  Discuss the relationship between symmetries and conservation laws in
  more detail. This includes topics like gauge symmetries, global
  symmetries, Noether’s theorem, etc. Symmetries are fundamental to
  quantum field theory.
-  Discuss the topological aspects of quantum field theory
-  Describe some key applications and experimental evidence supporting
  QFT
  -  The Standard Model of particle physics
  -  Quantum Electrodynamics (QED)
  -  Quantum Chromodynamics (QCD)
  -  The Higgs mechanism and the Higgs boson discovery

== 11. Advanced Topics
#label("advanced-topics")
-  Discuss the renormalization group and how it relates to phase
  transitions and universality. This provides a powerful framework for
  studying scale invariance.
-  Discuss the lattice formulation of quantum field theory and how it
  relates to numerical simulations. This is an important
  non-perturbative approach.
-  Include open questions like the renormalization of gravity, the
  problem of time, the cosmological constant problem, etc. This
  highlights some deep challenges in quantum field theory.

== 12. Conclusion
#label("conclusion")
-  Summarize the key points and concepts covered in the paper
-  Discuss the current state of QFT and its future prospects
-  Encourage further study and exploration of QFT

== 1. Introduction
#label("introduction")
Quantum Field Theory (QFT) is a theoretical framework that describes the
behavior of elementary particles and their interactions in terms of
quantum fields. It is a fundamental theory of modern physics that
unifies Quantum Mechanics and Special Relativity, and is crucial for
understanding a wide range of phenomena, from the behavior of subatomic
particles to the properties of materials.

According to the book "Quantum Field Theory and the Standard Model" by
Matthew D. Schwartz, QFT is based on the principles of Quantum Mechanics
and Special Relativity, and it extends the laws of Quantum Mechanics to
the realm of fields, where particles are conceived as excitations of
fields. In QFT, particles and fields are treated as two sides of the
same coin, and the dynamics of particles are described by the properties
of the fields that they interact with.

QFT has played a central role in the development of theoretical physics
in the last century, and it has led to many important discoveries, such
as the prediction of the Higgs boson, the discovery of the strong and
weak nuclear forces, and the formulation of the Standard Model of
particle physics, which is currently the most accurate description of
the known elementary particles and their interactions.

The significance of QFT in modern physics cannot be overstated, and it
is a topic of active research and investigation in theoretical physics.
This paper aims to provide a comprehensive overview of QFT, from its
foundations to its applications, with a focus on clarity and accuracy.

== 2. Classical Field Theory
#label("classical-field-theory")
Classical Field Theory provides a framework for understanding the
behavior of classical fields, such as the electromagnetic field, in
terms of mathematical equations. The mathematical description of
classical fields is typically based on the Lagrangian and Hamiltonian
formalisms.

The Lagrangian for a classical field is typically expressed in terms of
the fields and their derivatives, and the equations of motion are
derived by varying the Lagrangian with respect to the fields. For
example, the Maxwell’s equations, which describe the behavior of the
electromagnetic field, can be derived from the Lagrangian for the
electromagnetic field.

The Maxwell’s equations consist of four equations that describe the
behavior of the electric and magnetic fields in terms of their sources,
which are charges and currents. They are given by:

$ nabla dot.op bold(E) eq rho / epsilon.alt_0 $

$ nabla dot.op bold(B) eq 0 $

$ nabla times bold(E) eq minus frac(diff bold(B), diff t) $

$ nabla times bold(B) eq mu_0 lr((bold(J) plus epsilon.alt_0 frac(diff bold(E), diff t))) $

The first two Maxwell’s equations describe the behavior of the electric
field, while the last two describe the behavior of the magnetic field.
The first equation states that the electric field diverges from charges,
while the second equation states that there are no magnetic monopoles.
The third equation is the Faraday’s law, which states that a changing
magnetic field induces an electric field, and the fourth equation is the
Ampere’s law with Maxwell’s correction, which relates the magnetic field
to the current density and the rate of change of the electric field.

The Lagrangian and Hamiltonian formalisms provide a systematic way of
deriving the equations of motion for fields, and they serve as the
foundation for QFT, which extends the principles of Quantum Mechanics to
fields.

== 3. Quantum Mechanics Review
#label("quantum-mechanics-review")
Quantum Mechanics is a fundamental theory that describes the behavior of
particles at the microscopic level. It is the foundation of Quantum
Field Theory, and a review of essential concepts in QM is necessary to
understand QFT.

According to the book "Principles of Quantum Mechanics" by R. Shankar,
the key principles of QM include wave-particle duality, the Schrödinger
equation, wavefunctions and probability amplitudes, quantum states,
superposition, and entanglement.

Wave-particle duality is the concept that particles can exhibit both
wave-like and particle-like behavior, depending on the experimental
setup. The Schrödinger equation is the fundamental equation of QM, which
describes the evolution of a quantum system over time. The wavefunction
is a mathematical function that describes the state of a quantum system,
and the probability amplitude is a complex number that determines the
probability of obtaining a particular measurement outcome. Quantum
states can be in a superposition of multiple states simultaneously, and
entanglement is a phenomenon where particles can be correlated in such a
way that the state of one particle depends on the state of the other,
even if they are far apart.

The Schrödinger equation is given by:

$ i planck.reduce frac(diff, diff t) lr(|psi lr((t)) ⟩ eq H^̂|) psi lr((t)) ⟩ $

where $planck.reduce$ is the reduced Planck constant,
$bar.v psi lr((t)) ⟩$ is the wavefunction of the quantum system at time
$t$, and $H^̂$ is the Hamiltonian operator, which describes the total
energy of the system.

The wavefunction $bar.v psi lr((t)) ⟩$ can be expanded in terms of a
complete set of basis functions, such as the eigenfunctions of the
Hamiltonian operator, which leads to the time-independent Schrödinger
equation:

$ H^̂ lr(|psi_n ⟩ eq E_n|) psi_n ⟩ $

where $bar.v psi_n ⟩$ is an eigenstate of the Hamiltonian with energy
$E_n$.

The probability of measuring a particular observable, such as position
or momentum, is given by the Born rule:

$ P lr((x)) eq lr(|psi lr((x))|)^2 $

where $psi lr((x))$ is the wavefunction evaluated at position $x$.

Quantum Mechanics provides a theoretical framework for understanding the
behavior of particles at the microscopic level, and it serves as the
foundation for QFT, which extends the principles of QM to fields.