#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Analyse A Cours 11",
  subtitle: "12/05/2025",
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
#let definition = definition-style("definition", "Définition")
#let exemple = example-style("example", "Exemple")
#let corollaire = theorem-style("proposition", "Corollaire")
#let rem = remark-style("remark", "Remarque") 
#let thm = theorem-style("theorem", "Théorème")
#let problem = problem-style("problem", "Problème")
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
#let arccot = $"arccot"$
= Arcan & Arccotan

#rem[
  La fonction $tan: RR arrow RR$ n'est pas injective mais surjective par contre $tan: ]-pi/2, pi/2[ arrow RR$ est bijective elle admet donc une réciproque: \
  $ arctan: RR arrow ]-pi/2, pi/2[$
]

== Propriétés

+ $forall x in RR, tan(arctan(x)) = x$
+ $forall x in ]-pi/2,pi/2[, arctan(tan(x)) = x$
+ $forall a in RR tan(x)=a <=> x = arctan(a)+ k pi, k in ZZ$
+ $arctan(-x)=-arctan(x) forall x in RR$
+ $forall x in RR, arctan(x)=1/(1+x^2)$

== Valeurs remarquables
- $ arctan(0)=0$
- $arctan(1)=pi/4$
- $arctan(sqrt(3))=pi/3$
- $arctan(1/sqrt(3))=pi/6$

#figure[
  #image("tan.svg")
]
\
#exemple[
  $s = arctan(2) + arctan(3)$
  $arctan(2), arctan(3) in ]0,pi/2[]$
  $s in ]0, pi[$
  $ tan(alpha+beta)= (tan(alpha)+tan(beta))/(1-tan(alpha)tan(beta)) $
  $tan(s) = (2+3)/(1-2 times 3 ) = -1$
  $cases(s in  \] 0\,pi\[,tan(s)=-1)  $
]

= $cot, arccot$

#figure[
  #image("cot.svg")
]

$cot: ]0,pi[ arrow RR arrow.squiggly arccot RR arrow ]0,pi[$ 
= Nombres complexes
\
Intro au nombres complexes via $M_(2 times 2) (RR)$\
On considère $CC:= {mat(a,-b;b,a) | a,b in RR}$\ \
pour $z in CC, z = a bb(1)_2 + b mat(0,-1;1,0) $\
On note $i = mat(0,-1;1,0)$\
Notation on associe $a in RR, mat(a,0;0,a) in CC$\
$z = a + b i$\
$i^2 = - bb(1) = -1 $
$i$ représente la rotation autour de $(0,0)$ d'angle $pi/2$
et $i dot i = "rotation d'angle" pi $
$ R_theta = mat(cos(theta), -sin(theta); sin(theta), cos(theta)) $
$ forall z in CC, |(z)| = sqrt(det(z)) = sqrt(a^2 + b^2) $
$ forall z in R_theta <=> cases(z in CC, |(z)|=1) $

== Vocabulaire et propriétés de $CC$

On écrit $z=a+i b, z in CC$, la forme algébrique/cartésienne de $z$\ 
On pose $Re(z) = a, Im(z)=b$\
$i RR := {z in CC | Re(z) = 0}$\
Identification de $CC$ avec $RR^2$ (plan de Gauss) :
$ CC &arrow RR^2\ z=a+i b &arrow.bar (a,b) $
$ z in R_theta <=> (a,b) = (cos(theta), sin(theta)) = cos(theta)+ i sin(theta), (a,b) in Gamma(1) $

== Opérations sur $CC$
Conjugaison
#let conj(x) = $overline(#x)$

$ bar.h: CC arrow CC \ z=a+i b arrow.bar conj(z) = a-i b = z^t $
les opérations arithmétiques découles du corps $(M_2(RR),+,dot)$
$ z+z' = (a+a')+i(b+b') $
$ z times z' = mat(a,-b;b,a)mat(a',-b';b',a') = mat(a a'-b b', -a'b -a b';a'b + a b', -b b' + a a') = (a a' - b b') + (a'b+ a b')i $

== Produits particuliers

$ z = a+i b in CC $
amplification par $i$
$ i z = i a - b $ 
$ z^2 = (a^2-b^2)+ i (2a b) $
$ |(z)| = sqrt(z conj(z)) $

#proposition[
  $ (z+conj(z))/2 = Re(z) = a $
  $ (z-conj(z))/(2i) = Im(z)= b $
  $ conj(conj(z)) = z $
  $ Re(z) = Re(conj(z)), Im(z) = -Im(conj(z)) $
  $ conj(z+z') = conj(z)+conj(z') $
  $ conj(z z') = conj(z) conj(z') $
  $ |Re(z)| <= |z|, abs(Im(z) ) <= abs(z) $
  $ abs(z) = abs(conj(z)) $
  $ forall z in CC^*, 1/z in CC, 1/z = conj(z)/abs(z)^2  $
  $ abs(z_1 z_2) = abs(z_1) abs(z_2) $
  $ abs(z_1+z_2) <= abs(z_1) + abs(z_2) $
]


$ NN subset ZZ subset QQ subset RR subset CC subset HH subset OO $
