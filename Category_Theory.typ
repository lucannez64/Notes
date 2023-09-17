#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Category Theory",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "17 Septembre, 2023",
)

#set heading(numbering: "1.1.")

== Outline
<outline>
=== Introduction
<introduction>
- Definition of a category, objects, morphisms, composition, identity
  morphisms
- Examples of categories (sets, groups, topological spaces, etc.)

=== Properties of Categories
<properties-of-categories>
- Initial and terminal objects
- Products and coproducts
- Equalizers and coequalizers
- Limits and colimits
- Functors and natural transformations

=== Adjoint Functors
<adjoint-functors>
- Definition and properties
- Examples

Universal Properties - Definition and motivation - Examples (free
groups, tensor products, etc)

=== Yoneda Lemma
<yoneda-lemma>
- Statement and proof
- Consequences

=== Monads
<monads>
- Definition
- Examples (maybe monad, list monad)
- Kleisli categories

=== Enriched Categories
<enriched-categories>
- Motivation and definition
- Examples of enriched categories

=== Higher Category Theory
<higher-category-theory>
- Motivation
- Definition of 2-categories and n-categories
- Examples

=== Applications
<applications>
- Categories in computer science (type theory, semantics)
- Categories in physics (topological quantum field theories)

#pagebreak()

= Introduction to Category Theory
<introduction-to-category-theory>
\

== What is a Category?
<what-is-a-category>
A category C consists of:

- A collection of objects $upright("ob") lr((C))$
- A collection of morphisms (also called arrows)
  $upright("hom") lr((A comma B))$ between objects A and B
- A composition operation: if $f colon A arrow.r B$ and
  $g colon B arrow.r C$ are morphisms, then there is a composite
  morphism $g compose f colon A arrow.r C$ \
- An identity morphism $upright("id")_A colon A arrow.r A$ for each
  object

Composition must be:

- Associative:
  $h compose lr((g compose f)) eq lr((h compose g)) compose f$
- Unital: $f compose upright("id")_A eq f$ and
  $upright("id")_B compose f eq f$

\

#figure([#image("Category_Theory_dg_1.svg")],
  caption: [
    Simple Category
  ]
)

\

== Examples of Categories
<examples-of-categories>
- Set
  - Objects are sets that satisfy the axioms of set theory:
    - Axiom of extensionality: Two sets are equal if they contain the
      same elements
    - Axiom of pairing: For any a and b, there exists a set {a,b}
      containing a and b
    - Axiom of union: For any sets A and B, there is a set C \= A ∪ B
      containing all elements of A and B
  - Morphisms are functions between sets that map elements of one set to
    another
- Grp
  - Objects are groups that satisfy the group axioms:
    - Closure under an associative binary operation
    - Existence of identity element
    - Existence of inverse for each element
  - Morphisms are group homomorphisms that preserve the group structure
- Top
  - Objects are topological spaces that satisfy the axioms of topology:
    - The union of any number of open sets is open
    - The intersection of a finite number of open sets is open
    - The empty set and the whole space are open
  - Morphisms are continuous maps between topological spaces
- Vect
  - Objects are vector spaces over a field F that satisfy:
    - Closure under vector addition and scalar multiplication
    - Vector addition and scalar multiplication obey field axioms
  - Morphisms are linear maps that preserve vector space structure

== Intuition
<intuition>
Categories formalize mathematical structure and transformations that
preserve that structure. The objects represent mathematical concepts,
while the morphisms represent relationships between objects. \
\
\

= Properties of Categories
<properties-of-categories-1>
Categories can have additional structure and properties that reveal
relationships between objects. We will explain some important properties
and constructions.

\

== Initial and Terminal Objects
<initial-and-terminal-objects>
- An initial object is a special object that has exactly one morphism
  $italic("init")_A colon I arrow.r A$ going to every other object A in
  the category. It is like a "source" object that every object can be
  mapped from in a unique way.

- A terminal object has exactly one morphism
  $italic("term")_A colon A arrow.r T$ coming from every other object A.
  It is like a "sink" or "ending" object that everything maps to
  uniquely.

- For example, in the category of sets, the empty set $nothing$ is
  initial - there is only one function $nothing arrow.r A$ from the
  empty set to any set A. A one element set $brace.l ast.basic brace.r$
  is terminal - there is only one function
  $A arrow.r brace.l ast.basic brace.r$ from any set A to the one
  element set.

\

== Products
<products>
- The product of two objects A and B captures the idea of combining or
  "multiplying" A and B together. It is an object P and two morphisms
  $p_1 colon P arrow.r A$ and $p_2 colon P arrow.r B$.

- P has to satisfy a universal property: for any other object C with
  morphisms $f colon C arrow.r A$ and $g colon C arrow.r B$, there must
  be a unique morphism $h colon C arrow.r P$ that makes the whole
  diagram commute. This uniquely characterizes the product.

- For example, in sets the product of A and B is their cartesian product
  $A times B$. In groups it is the direct product of groups.

\

#figure([#image("Category_Theory_dg_2.svg")],
  caption: [
    Product
  ]
)

\

== Equalizers
<equalizers>
- An equalizer of $f comma g colon A arrow.r B$ embodies the idea of $f$
  and $g$ "being equal". It is an object E and morphism
  $e colon E arrow.r A$ such that $f compose e eq g compose e$. So E
  "equalizes" f and g.

- E has a universal property like products. Intuitively, E contains
  elements of A that f and g map identically.

\

#figure([#image("Category_Theory_dg_5.svg")],
  caption: [
    Equalizer
  ]
)

\

\
\
\

Here are draft sections on adjoint functors and universal properties:

= Adjoint Functors
<adjoint-functors-1>
Adjoint functors are a powerful concept in category theory that
formalize a relationship between two functors.

- Two functors $F colon cal(C) arrow.r cal(D)$ and
  $G colon cal(D) arrow.r cal(C)$ between categories $cal(C)$ and
  $cal(D)$ are adjoints if there is a natural bijection:

$ hom_(cal(D)) lr((F lr((c)) comma d)) tilde.equiv hom_(cal(C)) lr((c comma G lr((d)))) $

for all objects $c in cal(C) comma d in cal(D)$.

- $F$ is called the left adjoint and $G$ the right adjoint. Intuitively,
  F preserves sources and G preserves sinks.

- Examples of adjoint functor pairs:

  - Free/forgetful functors between Sets and Grps
  - Hom/tensor product between vector spaces
  - Direct/inverse image functors in topology

Adjoints formalize the idea of two functors being "inverses" in a
constructive way that is weaker than isomorphism. They show up often in
mathematics and imply many deeper properties.

\

#figure([#image("Category_Theory_dg_3.svg")],
  caption: [
    Adjoint Functors
  ]
)

\

\
\
\

= Universal Properties
<universal-properties>
Many constructions in categories are defined by universal properties,
which capture the essence of an object or morphism uniquely up to
isomorphism.

- Products, equalizers, limits, and other concepts are defined by
  universal properties. These specify a mapping property that an object
  or morphism must satisfy.

- For example, a product $P$ of objects $A$ and $B$ has projections
  $p_1 colon P arrow.r A$ and $p_2 colon P arrow.r B$ such that for any
  other object $X$ with maps $f colon X arrow.r A$ and
  $g colon X arrow.r B$, there exists a unique map $h colon X arrow.r P$
  making the diagram commute.

- Universal properties allow defining concepts intrinsically without
  referring to concrete representations. This is powerful for proving
  theorems.

- Many basic algebraic constructions are characterized by universal
  properties:

  - Free groups, rings, modules
  - Tensor products
  - Kernels and images of morphisms

Universal properties abstract the key aspects of mathematical notions
and their relationships. Understanding objects and morphisms via
universal properties is fundamental to categorical thinking.

\
\
\

= Yoneda Lemma
<yoneda-lemma-1>
The Yoneda lemma relates an object in a category to the functor it
generates.

- For an object $A$ in a category $cal(C)$, there is a
  #strong[representable functor] $y_A colon cal(C) arrow.r sans(S e t)$
  defined by $y_A lr((B)) eq hom lr((A comma B))$.

- That is, $y_A$ maps an object $B$ to the set of all morphisms from $A$
  to $B$. We can visualize this mapping as:

- The Yoneda lemma states that the natural transformations from $y_A$ to
  any other functor $F colon cal(C) arrow.r sans(S e t)$ are in
  bijection with the elements of $F lr((A))$.

- So the object A is uniquely determined up to isomorphism by its
  associated representable functor $y_A$. Objects are characterized by
  their mapping properties.

\

#figure([#image("Category_Theory_dg_4.svg")],
  caption: [
    Yoneda Lemma
  ]
)

\

\
\
\

= Monads
<monads-1>
A monad on a category $cal(C)$ is a triple $lr((T comma eta comma mu))$:

- $T colon cal(C) arrow.r cal(C)$ is an #strong[endofunctor], mapping
  objects and morphisms to themselves.

- $eta colon 1_(cal(C)) arrow.r T$ is a #strong[unit] natural
  transformation from the identity functor to T.

- $mu colon T^2 arrow.r T$ is a #strong[multiplication] natural
  transformation, mapping from $T$ applied twice to once.

These satisfy monad axioms. Intuitively:

- T "enhances" objects in $cal(C)$
- $eta$ embeds an object into its T-enhanced version
- $mu$ "flattens" double enhancement $T^2$ to single T

Examples formalize data augmentation, effects, semantics.

\

#figure([#image("Category_Theory_dg_6.svg")],
  caption: [
    Monad
  ]
)

\

\
\
\

= Applications
<applications-1>
- #strong[Programming languages]: Category theory used in type theory,
  semantics. Monads in functional programming.

- #strong[Physics]: Topological quantum field theories are functorial
  theories based on higher categories.

- #strong[Mathematics]: Category theory clarifies foundations and
  connections between diverse fields.

#link("Maths.pdf")[Maths]
