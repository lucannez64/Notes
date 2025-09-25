#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 21",
  subtitle: "14/05/2025",
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

= Representants simples

#let vect = $"vect"$
 #exemple[
  $ f: RR^3 &arrow RR^2 \
    (x,y,z) &arrow.bar (6x-9y+3z, 2x-3y+z)\
    A_f &= mat(6,-9,3;2,-3,1)\
        &= vec(3,1)mat(2,-3,1)\
  $

  $
    Im(f) = vect(3,1),\
    ker(f) = 2x-3y+z = 0  
  $

  Trouver une base pour le noyau de l'application:

  $
    B_(ker(f)) = (3,2,0), (0,1,3)    
  $
  Compléter pour une base $B$ de $RR^3$:
  $ v_1 = (1,0,0)  $
  On pose
  $ B = (1,0,0), (3,2,0), (0,1,3) , B'=(1,0), (0,1) $
  $ [f]_(B, B_(c a n)) = mat(6, 0, 0; 2, 0, 0)  $
  Trouver une base pour $Im(f)$:
  $ B_(Im(f)) = v_1' = (6,2) $
  Compléter $B'$ pour $RR^2$:
  $ B' = (6,2), (1,0)   $
  $ [f]_(B, B') = mat(1, 0, 0; 0, 0, 0)  $
  Vérifions par le schéma:
  $ P = mat(1,3,0;0,2,1;0,0,3)  $
  $ P' = mat(6,1;2,0) $
  $ Q' = -1/2 mat(0,-1;-2,6) $
  $ Q' = mat(0, 1/2;1, -3)  $
  $ Q' A_f P &= mat(0,1/2;1,-3) mat(6,-9,3;2,-3,1) mat(1,3,0;0,2,1;0,0,3)\
    &= mat(0,1/2;1,-3) mat(6,0,0;2,0,0)\
    &= mat(1,0,0;0,0,0)
  $
]

#proposition[
  Soit $f: RR^n arrow RR^p$ et $r g(f) = r$
  $exists B $ pour $RR^n$ et $exists B'$ pour $RR^p$ tq
  $ [f]_(B,B') = mat(bb(1)_r, 0;0,0) $
]

#proof[
  La $dim(ker(f))=n-r$
  On a $n-r$ vecteur $v_(r+1), dots.h, v_n$
  qui forme une base pour $ker(f)$
  On peut compléter avec $r$ vecteurs en une base pour $RR^n$
  $ B= v_1,...,v_r,v_(r+1),...,v_n $
  Observons que $f(v_1),...,f(v_r)$ sont linéairement indépendant, car si $sum_(k=1)^r lambda_k f(v_k) = 0_(RR^p)$
  $ <=> sum_(k=1)^r lambda_k v_k in ker(f) <=> k in bracket.double 1,r bracket.r.double lambda_k = 0 $
  On complète par $p-r$ vecteurs pour trouver
  $ B'=f(v_1), ..., f(v_r), v'_(r+1), .., v'_(p) $
  $ [f]_(B,B') =  mat([f(v_1)]_B', ...,  [f(v_n)]_B')\
    = mat(bb(1)_r, 0_(RR^p),...,0_(RR^p); )
  $
]

#exemple[
  $ f: (x,y,z) arrow.bar (x-y+3z, 2x-3y+4z, x+y+7z)\
    A_f = mat(1,-1,3;2,-3,4;1,1,7)\
    = vec(1,2,1) mat(1,-1,3)+mat(0,0,0;0,-1,-2;0,2,4)
    = vec(1,2,1)mat(1,-1,3)+ vec(0,-1,2) mat(0,1,2)
   $

  $ ker(f) = cases(x-y+3z = 0, y+2z  = 0) $
  $ B_(ker(f)) = (-5,-2,1) $
  $ B = (1,0,0), (0,1,0), (-5,-2,1) $
  $ B' = (1,2,1), (-1,-3,1), (0,0,1) $
  $ [f]_(B,B') = mat(1,0,0;0,1,0;0,0,0) $
  Vérifions par le schéma
  $ P = mat(1,0,-5;0,1,-2;0,0,1)  $
  $ P' = mat(1,-1,0; 2,-3,0; 1,1,1) $
  $ Q' = mat(3,-1,0;2,-1,0;-5,2,1)  $
  $ Q' A_f P =  mat(3,-1,0;2,-1,0;-5,2,1) mat(1,-1,3;2,-3,4;1,1,7)mat(1,0,-5;0,1,-2;0,0,1)\
    = mat(3,-1,0;2,-1,0;-5,2,1) mat(1,-1,0;2,-3,0;1,1,0)
    = mat(1,0,0;0,1,0;0,0,0)
   $
]
