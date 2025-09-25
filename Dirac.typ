#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, hbar, braket, ketbra
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Équation de Dirac en Environnement Non-Trivial",
  subtitle: "22/05/2025",
  author: "Lucas Duchet-Annez",
  accent: latte.blue
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)
#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1)")
#let definition-style = builder-thmline(color: latte.sapphire)
#let example-style = builder-thmline(color: latte.flamingo)
#let theorem-style = builder-thmbox(color: latte.blue, shadow: (offset: (x: 3pt, y: 3pt), color: luma(70%)))
#let remark-style = builder-thmline(color: latte.yellow)
#let langle = $angle.l$
#let rangle = $angle.r$
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = remark-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
#let problem = theorem-style("problem", "Problème")
#let proof(body, name: none) = {
  thmtitle[Preuve]
  if name != none {
    [ #thmname[#name]]
  }
  thmtitle[.]
  body
  h(1fr)
  $square$
}

#outline()

#let slashed(x) = $cancel(#x)$ // Using cancel for strike-through
#let Dslash = $cancel(D)$
#let pslash = $cancel(p)$
#let Aslash = $cancel(A)$

= Introduction : L'Équation de Dirac

#definition[
  L'équation de Dirac libre s'écrit :
  $ (i cancel(partial) - m) psi = 0 $
  où $cancel(partial) = gamma^mu partial_mu$ avec les matrices de Dirac $gamma^mu$ satisfaisant l'algèbre de Clifford :
  $ bracket.l gamma^mu, gamma^nu bracket.r = 2 eta^(mu nu) bb(1)_(4) $ // Changed { } to lbrace rbrace and re-checked bb(1)_(4)
]

#rem[
  En représentation chirale, les matrices de Dirac sont :
  $ gamma^0 = mat(0, bb(1)_2; bb(1)_2, 0), quad gamma^i = mat(0, sigma^i; -sigma^i, 0) $
  où $sigma^i$ sont les matrices de Pauli.
]

= Couplage Minimal : Champs Électromagnétiques

== Principe du Couplage Minimal

#definition[
  Le couplage minimal avec un champ électromagnétique se fait par la substitution :
  $ partial_mu arrow D_mu = partial_mu + i q A_mu $
  où $A_mu$ est le potentiel électromagnétique et $q$ la charge de la particule.
]

L'équation de Dirac en présence d'un champ électromagnétique devient :
$ (i cancel(D) - m) psi = 0 $
soit explicitement :
$ [i gamma^mu (partial_mu + i q A_mu) - m] psi = 0 $

== Solutions dans un Champ Constant

#problem[
  Considérons un électron dans un champ électrique constant $E = E hat(z)$.
]

Dans cette configuration, $A_mu = (phi(z), 0, 0, 0)$ avec $phi(z) = -E z$.

#exemple[
  Pour un champ électrique uniforme $A_0 = -E z$, l'équation devient :
  $ [gamma^0 (i partial_t + q E z) + i gamma^i partial_i - m] psi = 0 $
  
  En cherchant des solutions de la forme $psi = e^(i p_x x + i p_y y) u(z,t)$, on obtient :
  $ [gamma^0 (i partial_t + q E z) + gamma^3 i partial_z + gamma^1 p_x + gamma^2 p_y - m] u = 0 $
]

== Oscillateur Harmonique Relativiste

#thm[
  Pour un potentiel harmonique $V(x) = (1/2) m omega^2 x^2$, les niveaux d'énergie sont :
  $ E_n = sqrt(m^2 + omega(2n + 1)), quad n = 0, 1, 2, ... $
]

#proof[
  En posant $A_0 = (1/2) m omega^2 x^2$ et cherchant des solutions stationnaires, on se ramène à l'oscillateur harmonique avec correction relativiste.
]

= Champs Magnétiques : Niveaux de Landau

== Champ Magnétique Uniforme

#definition[
  Pour un champ magnétique uniforme $B = B hat(z)$, on choisit la jauge $A_mu = (0, -B y, 0, 0)$.
]

L'équation de Dirac devient :
$ [gamma^0 i partial_t + gamma^1 (i partial_x + q B y) + gamma^2 i partial_y + gamma^3 i partial_z - m] psi = 0 $

#thm("Niveaux de Landau de Dirac")[
  Les énergies propres pour un fermion de Dirac dans un champ magnétique uniforme sont :
  $ E_((n,p_z)) = plus.minus sqrt(m^2 + p_z^2 + 2 q B (n + 1/2)) $
  avec $n = 0, 1, 2, ...$ et l'exception du niveau $n = 0$ qui donne $E = plus.minus sqrt(m^2 + p_z^2)$.
]

#rem[
  Le niveau de Landau $n = 0$ est particulier car il ne se divise pas en deux sous-niveaux comme les autres, reflétant l'anomalie chirale.
]

= Approximation WKB Relativiste

#definition[
  L'approximation WKB pour l'équation de Dirac consiste à chercher des solutions de la forme :
  $ psi = A(x) exp(i S(x)/hbar) $
  où $S(x)$ est l'action classique et $A(x)$ varie lentement.
]

== Condition de Quantification

#thm[
  La condition de quantification WKB pour l'équation de Dirac est :
  $ integral_ (x_1)^ (x_2) sqrt((E - V(x))^2 - m^2) diff x = (n + 1/2) pi hbar $
  où $V(x)$ est le potentiel effectif.
]

= Équation de Dirac en Espace-Temps Courbe

== Formalisme Général

#definition[
  En espace-temps courbe avec métrique $g_((mu nu))$, l'équation de Dirac s'écrit :
  $ [i gamma^a e_a^mu (partial_mu + Gamma_mu) - m] psi = 0 $
  où $e_a^mu$ sont les vierbein et $Gamma_mu$ la connexion spinorielle.
]

La connexion spinorielle est donnée par :
$ Gamma_mu = (1/4) gamma^a gamma^b omega_((mu a b)) $
où $omega_((mu a b))$ sont les coefficients de connexion.

== Métrique de Schwarzschild

#exemple[
  Dans la métrique de Schwarzschild :
  $ diff s^2 = -(1 - (2M)/r) diff t^2 + (1 - (2M)/r)^(-1) diff r^2 + r^2 (diff theta^2 + sin^2 theta diff phi^2) $
  
  L'équation de Dirac radiale devient complexe et nécessite des méthodes numériques pour les solutions générales.
]

= Effet Tunnel de Klein

#definition[
  L'effet tunnel de Klein est un phénomène où une particule relativiste peut traverser une barrière de potentiel avec une probabilité qui augmente avec la hauteur de la barrière.
]

#thm[
  Pour une barrière rectangulaire de hauteur $V_0 > m + E$ et de largeur $a$, le coefficient de transmission est :
  $ T = (4 k_1 k_2)/((k_1 + k_2)^2) $
  où $k_1 = sqrt(E^2 - m^2)$ et $k_2 = sqrt((E - V_0)^2 - m^2)$.
]

#rem[
  Contrairement au cas non-relativiste, $T$ peut être proche de 1 même pour des barrières très hautes, ce qui constitue le paradoxe de Klein.
]

= Zitterbewegung

#definition[
  La Zitterbewegung (mouvement tremblant) est un mouvement oscillatoire rapide prédit pour les électrons libres par l'équation de Dirac.
]

== Évolution Temporelle

#thm[
  Pour un paquet d'ondes initial localisé, la position moyenne oscille avec :
  $ angle.l hat(x)(t) angle.r = langle hat(x)(0) rangle + v_"groupe" t + (hbar)/(4 langle E rangle) sin((2 langle E rangle t)/hbar) $
  où la fréquence de Zitterbewegung est $omega_Z = (2 langle E rangle)/hbar approx (2 m c^2)/hbar$.
]

= Applications et Extensions

== Graphène et Fermions de Dirac 2D

#exemple[
  Dans le graphène, les excitations de basse énergie satisfont une équation de Dirac 2D :
  $ [v_F (sigma_x p_x + sigma_y p_y) - Delta sigma_z] psi = E psi $
  où $v_F approx c/300$ est la vitesse de Fermi et $Delta$ un gap éventuel.
]

== Systèmes Topologiques

#rem[
  L'équation de Dirac modifiée apparaît naturellement dans l'étude des isolants topologiques et des supraconducteurs topologiques, où les états de surface sont décrits par des fermions de Dirac sans masse.
]

== Méthodes Numériques

#problem[
  Pour résoudre numériquement l'équation de Dirac en environnement complexe :
  
  1. Discrétisation sur grille avec préservation de la symétrie chirale
  2. Méthodes de différences finies adaptées aux matrices $gamma$
  3. Algorithmes de décomposition en ondelettes pour les solutions oscillantes
]

= Conclusion

L'équation de Dirac en environnement non-trivial révèle des phénomènes physiques riches :
- Couplage minimal avec les champs gauge
- Niveaux de Landau avec anomalie chirale  
- Effet tunnel de Klein paradoxal
- Zitterbewegung et tremblements quantiques
- Applications aux matériaux topologiques

Ces aspects soulignent l'importance fondamentale de l'équation de Dirac au-delà de la physique des particules, notamment en physique de la matière condensée et cosmologie.
