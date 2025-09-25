
#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv, hbar, braket, ketbra
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Intégrale de Riemann-Darboux",
  subtitle: "Calcul Intégral et Applications Géométriques",
  author: "Notes de Cours - Analyse B",
  accent: latte.green
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

= Construction de l'Intégrale Riemann-Darboux

== Motivation : Calcul d'Aires

Le calcul intégral permet de calculer des aires de régions plus compliquées que les rectangles, triangles ou disques élémentaires.

#definition[
  Soit $n ≥ 1$ un entier. La *subdivision régulière* (à $n$ éléments) de l'intervalle $[a,b]$ est la division de $[a,b]$ en $n$ sous-intervalles de longueurs égales :
  $ I_k = [x_(k-1), x_k], quad k = 1,2,...,n $
  où $x_k = a + k (b-a)/n$ pour $k = 0,1,2,...,n$.
]

== Sommes de Darboux

#definition[
  Pour une fonction continue $f: [a,b] → ℝ$ et une subdivision régulière, on définit :
  - $m_k := min_(x ∈ I_k) f(x)$ et $M_k := max_(x ∈ I_k) f(x)$
  - La *somme de Darboux inférieure* : $s_n := sum_(k=1)^n (b-a)/n · m_k$
  - La *somme de Darboux supérieure* : $S_n := sum_(k=1)^n (b-a)/n · M_k$
]

#rem[
  Géométriquement, $s_n$ et $S_n$ représentent des sommes d'aires de rectangles situés respectivement au-dessous et au-dessus du graphe de $f$.
]

#thm("Convergence des sommes de Darboux")[
  Si $f: [a,b] -> RR$ est continue, alors les suites $(s_n)$ et $(S_n)$ sont convergentes et possèdent la même limite. Cette limite commune est appelée l'*intégrale de $f$* :
  $ integral_a^b f(x) dif x := lim_(n arrow oo) s_n = lim_(n arrow oo) S_n $
]

#exemple[
  Pour $f(x) = x$ sur $[0,b]$ :
  $ s_n = (b^2)/(2n^2) sum_(k=1)^n (k-1) = (b^2)/2 · (n-1)/(2n) $
  $ lim_(n arrow oo) s_n = b^2/2 $
]

= Propriétés de l'Intégrale

== Propriétés Fondamentales

#thm("Propriétés de base")[
  Pour des fonctions continues $f, g: [a,b] → RR$ et des constantes $λ, μ ∈ RR$ 
  
  1. *Relation de Chasles* : Si $a < c < b$, alors
     $ integral_a^c f(x) dif x + integral_c^b f(x) dif x = integral_a^b f(x) dif x $
  
  2. *Linéarité* :
     $ integral_a^b (λ f(x) + μ g(x)) dif x = λ integral_a^b f(x) dif x + μ integral_a^b g(x) dif x $
  
  3. *Inégalités* : Si $f(x) ≤ g(x)$ pour tout $x ∈ [a,b]$, alors
     $ integral_a^b f(x) dif x ≤ integral_a^b g(x) dif x $
]

#corollaire[
  $ abs(integral_a^b f(x) dif x) ≤ integral_a^b abs(f(x)) dif x $
]

== Fonctions Paires et Impaires

#thm[
  - Si $f$ est paire sur $[-a,a]$ : $integral_(-a)^a f(x) dif x = 2 integral_0^a f(x) dif x$
  - Si $f$ est impaire sur $[-a,a]$ : $integral_(-a)^a f(x) dif x = 0$
]

== Théorème de la Moyenne

#thm("Théorème de la moyenne")[
  Si $f: [a,b] → ℝ$ est continue, alors il existe $c ∈ ]a,b[$ tel que :
  $ integral_a^b f(x) dif x = f(c) · (b-a) $
]

#rem[
  La quantité $overline(f) := 1/(b-a) integral_a^b f(x) dif x$ représente la valeur moyenne de $f$ sur $[a,b]$.
]

= Théorème Fondamental de l'Analyse

== Première Partie : Dérivabilité de la Fonction Aire

#definition[
  Pour une fonction continue $f: [a,b] → ℝ$, on définit la *fonction aire* :
  $ A(x) := integral_a^x f(t) dif t, quad x ∈ [a,b] $
]

#thm("Théorème Fondamental - 1ère partie")[
  Si $f: [a,b] → ℝ$ est continue et $A: [a,b] → ℝ$ est la fonction aire associée, alors $A(x)$ est dérivable sur $]a,b[$ et :
  $ A'(x) = f(x) quad ∀x ∈ ]a,b[ $
]

#proof[
  Pour $h > 0$ :
  $ (A(x+h) - A(x))/h = 1/h integral_x^(x+h) f(t) dif t $
  Par le théorème de la moyenne, il existe $c_h ∈ ]x, x+h[$ tel que :
  $ integral_x^(x+h) f(t) dif t = f(c_h) · h $
  Donc $(A(x+h) - A(x))/h = f(c_h)$. Quand $h → 0^+$, $c_h → x^+$, et par continuité de $f$ :
  $ lim_(h->0^+) (A(x+h) - A(x))/h = f(x) $
]

== Deuxième Partie : Calcul d'Intégrales par Primitives

#definition[
  Une fonction dérivable $F$ telle que $F' = f$ est appelée une *primitive* de $f$.
]

#thm("Théorème Fondamental - 2ème partie")[
  Si $f: [a,b] → ℝ$ est continue et $F$ est une primitive de $f$, alors :
  $ integral_a^b f(x) dif x = F(b) - F(a) $
]

#rem[
  On note souvent $F(x)|_a^b := F(b) - F(a)$.
]

= Primitives et Intégration

== Primitives Usuelles

#exemple[
  Quelques primitives fondamentales :
  - $integral x^n dif x = x^(n+1)/(n+1) + C$ (pour $n ≠ -1$)
  - $integral 1/x dif x = ln|x| + C$ (pour $x ≠ 0$)
  - $integral cos(x) dif x = sin(x) + C$
  - $integral sin(x) dif x = -cos(x) + C$
  - $integral e^x dif x = e^x + C$
]

== Recherche de Primitives

#rem[
  Propriétés importantes :
  - $(integral f(x) dif x)' = f(x)$
  - $integral f'(x) dif x = f(x) + C$
  - Linéarité : $integral (λ f(x) + μ g(x)) dif x = λ integral f(x) dif x + μ integral g(x) dif x$
  - En général : $integral (f(x) · g(x)) dif x ≠ integral f(x) dif x · integral g(x) dif x$
]

= Techniques d'Intégration

== Intégration par Parties

#thm("Formule d'intégration par parties")[
  Si $f$ et $g$ sont dérivables avec $f'$ et $g'$ continues :
  $ integral f'(x) · g(x) dif x = f(x) · g(x) - integral f(x) · g'(x) dif x $
]

#exemple[
  $ integral x sin(x) dif x = -x cos(x) + integral cos(x) dif x = -x cos(x) + sin(x) + C $
]

== Intégration par Changement de Variable

#thm("Changement de variable")[
  Si $g$ est dérivable avec $g'$ continue et $f$ continue :
  $ integral f(g(x)) · g'(x) dif x = integral f(u) dif u quad text("où ") u = g(x) $
]

#exemple[
  $ integral cos(3x) dif x = 1/3 integral 3cos(3x) dif x = 1/3 sin(3x) + C $
]

== Fonctions Trigonométriques

#exemple[
  Pour des intégrales contenant $sqrt(a^2 - b^2 x^2)$, utiliser :
  - $x = a/b cos(t)$ ou $x = a/b sin(t)$
  
  Pour $sqrt(a^2 + b^2 x^2)$, utiliser :
  - $x = a/b sinh(t)$
  
  Pour $sqrt(b^2 x^2 - a^2)$, utiliser :
  - $x = ± a/b cosh(t)$
]

== Intégration de Fonctions Rationnelles

#thm("Décomposition en éléments simples")[
  Toute fonction rationnelle $P(x)/Q(x)$ (avec $deg(P) < deg(Q)$) peut se décomposer selon les facteurs de $Q(x)$ :
  
  - Facteur $(a x + b)$ : terme $A/(a x + b)$
  - Facteur $(a x + b)^r$ : termes $A_1/(a x + b) + ... + A_r/(a x + b)^r$
  - Facteur irréductible $a x^2 + b x + c$ : terme $(A x + B)/(a x^2 + b x + c)$
]

#exemple[
  $ 1/(x^2 - 1) = 1/((x-1)(x+1)) = 1/2 · 1/(x-1) - 1/2 · 1/(x+1) $
  $ integral 1/(x^2 - 1) dif x = 1/2 ln|(x-1)/(x+1)| + C $
]

= Applications Géométriques

== Aires de Régions du Plan

#definition[
  - L'*aire analytique* sous le graphe de $f$ : $integral_a^b f(x) dif x$
  - L'*aire géométrique* : $integral_a^b |f(x)| dif x$
]

#exemple[
  Pour l'aire entre deux courbes $y = f(x)$ et $y = g(x)$ :
  $ A = integral_a^b |f(x) - g(x)| dif x $
]

== Volumes de Solides de Révolution

#thm("Volume par rotation autour de l'axe $x$")[
  Le volume du solide obtenu par rotation du graphe de $f: [a,b] → RR$ autour de l'axe $O x$ est :
  $ V = integral_a^b π[f(x)]^2 dif x $
]

#exemple[
  Volume d'une sphère de rayon $R$ (rotation de $y = sqrt(R^2 - x^2)$) :
  $ V = integral_(-R)^R π(R^2 - x^2) dif x = 4/3 π R^3 $
]

== Longueurs d'Arcs

#thm("Longueur d'arc")[
  La longueur de l'arc du graphe de $f: [a,b] → ℝ$ (avec $f'$ continue) est :
  $ L = integral_a^b sqrt(1 + [f'(x)]^2) dif x $
]

#thm("Courbe paramétrée")[
  Pour une courbe paramétrée $t ↦ (x(t), y(t))$ avec $t ∈ [α,β]$ :
  $ L = integral_α^β sqrt((dot(x)(t))^2 + (dot(y)(t))^2) dif t = integral_α^β ||dot(arrow(r))(t)|| dif t $
]

#exemple[
  Circonférence d'un cercle de rayon $R$ :
  $ L = integral_0^(2π) sqrt((-R sin(t))^2 + (R cos(t))^2) dif t = integral_0^(2π) R dif t = 2π R $
]

== Surfaces de Révolution

#thm("Aire de surface de révolution")[
  L'aire de la surface obtenue par rotation du graphe de $f: [a,b] → RR$ autour de l'axe $O x$ est :
  $ S = integral_a^b 2π f(x) sqrt(1 + [f'(x)]^2) dif x $
]

#rem[
  Formule générale : $S = integral dif S = integral 2π r dif ℓ$ où $r$ est la distance à l'axe de rotation et $dif ℓ$ l'élément de longueur.
]

= Méthodes Numériques et Extensions

== Approximations

#rem[
  Méthodes d'approximation numérique :
  - Méthode des rectangles (sommes de Riemann)
  - Méthode des trapèzes
  - Méthode de Simpson
  - Quadrature de Gauss
]

== Extensions

#problem[
  L'intégrale de Riemann-Darboux s'étend à :
  - Intégrales impropres (bornes infinies, discontinuités)
  - Intégrales multiples (surfaces, volumes)
  - Intégrales de ligne et de surface
  - Intégrale de Lebesgue (théorie de la mesure)
]

= Applications Physiques

#exemple[
  Applications du calcul intégral :
  - Calcul de travail : $W = integral_a^b F(x) dif x$
  - Centre de masse : $overline(x) = (integral x ρ(x) dif x)/(integral ρ(x) dif x)$
  - Moment d'inertie : $I = integral r^2 dif m$
  - Flux et circulation en électromagnétisme
  - Probabilités (fonctions de densité)
]

= Conclusion

L'intégrale de Riemann-Darboux constitue un outil fondamental pour :

- Le calcul d'aires, volumes, longueurs
- La résolution d'équations différentielles
- La modélisation de phénomènes physiques
- L'analyse de fonctions et leurs propriétés

Les techniques d'intégration (parties, changement de variable, éléments simples) permettent de calculer explicitement de nombreuses intégrales, tandis que les applications géométriques illustrent la puissance conceptuelle du calcul intégral dans la description quantitative de l'espace.
