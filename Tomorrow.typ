#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Tomorrow",
  subtitle: "09/04/2025",
  author: "Lucas Duchet-Annez",
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

#outline()

== Application linéaire

#definition[
  Soit $f: RR^n arrow RR^m$ on dit que $f$ est une application linéaire ssi
  $ f(lambda v_1+ mu v_2) = lambda f(v_1) + mu f(v_2) $
]

#definition[
  Soit $f: RR^n arrow RR^m$ on appelle noyau,
  $ ker(f) = {v in RR^n | f(v) = 0_(RR^m)} $ 
]

#theorem[
  Le noyau est un sous-espace vectoriel de $RR^n$ et $n = dim(ker(f)) + r g(f)$
]

#proof[
  
$ker(f)$ est un ss-vectoriel de $RR^n$ car :

- $O_(RR^n) in ker(f), f(0_(RR^n)) = 0_(RR^m)$
- $forall v_1, v_2 in ker(f), v_1+v_2 in ker(f)$ car $f(v_1+v_2) = f(v_1)+f(v_2) = 0_(RR^m)$ 
- Si $v_1 in ker(f), lambda in RR, f(lambda v_1) = lambda f(v_1) = 0_(RR^m)$

Si $n=3=m$

$ A_f = mat(alpha_11,alpha_12, alpha_13; alpha_21,alpha_22, alpha_23; alpha_31,alpha_32, alpha_33 ) $

$ (x,y,z) in ker(f) $ $ <=> cases(alpha_11 x + alpha_12 y + alpha_13 z = 0, alpha_21 x + alpha_22 y + alpha_23 z = 0, alpha_31 x + alpha_32 y + alpha_33 z = 0) $

Si $r g(A_f) = 0$ alors $ker(f) = RR^3$

Si $r g(A_f) = 1$ alors $ (x,y,z) in ker(f) <=> alpha_11 x + alpha_12 y + alpha_13 z = 0 => dim(ker(f))= 2,"et " 3 = 2+1 $

Si $r g(A_f) = 2$ alors $ (x,y,z) in ker(f) $ $ <=> "SPG" alpha_11 x + alpha_12 y + alpha_13 z = 0 "et" alpha_21 x + alpha_22 y + alpha_23 z = 0 $ $ => ker(f) "est une droite et" dim(ker(f)) =1, 3 = 1+2  $ 

Si $r g (A_f) = 3$ alors $ (x,y,z) in ker(f) $ $ <=> ker(f) "est" 0_(RR^n) $ $ <=> dim(ker(f)) = 0, 3= 3+0 $

]

#example[
$ f: (x,y) arrow.bar (x+3y, 2x+6y) $
$ A_f = mat(1,3;2,6) $
$ => r g(f) = 1, ker(f): x+3y = 0 $
]


#example[
  
Trouver $f: RR^2 arrow RR^2$ tq $(1,2) in ker(f)$ et $(3,4) in I m(f)$
$ A_f = mat(3,-3/2; 4, -2) $
$f: (x,y) arrow.bar (3x-3/2 y , 4 x-2y)$

]

== Colonne-lignes


Si $A_f$ qui est de rang $r$ \
La décomosition minimale de $A_f$ est du type

$ A_f = C_1 L_1 + dots.h + C_r L_r \ 
A_f vec(x_1, dots.v, x_n) = C_1 L_1 vec(x_1, dots.v, x_n) + dots.h + C_r L_r vec(x_1, dots.v, x_n) $

$ => im(f) = v e c t(C_1, dots.h, C_r) => dim(im(f)) =r $
$ ker(f) : cases(L_1 vec(x_1, dots.v, x_n) = 0, dots.v, L_r vec(x_1, dots.v, x_n) = 0 ) => dim(ker(f)) = n-r $

