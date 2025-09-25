#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Algebre Lineaire Cours 13",
  subtitle: "09/04/2025",
  author: "Lucas Duchet-Annez",
  affiliation: "EPFL",
  year: "2024/2025",
  class: "Génie Mécanique",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text("page "+ counter(page).display())
  ]
)

#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

== Rappel

$ j: RR^n arrow RR^m $

avec $A_j in M_(m times n) (RR)$ associée
$ [j(x_1, .., x_n)]_B_(c a n) = A_j vec(x_1, dots.v , x_n) $
$ forall v_1, v_2 in RR^n, j(x_1+x_2) = j(x_1)  + j(x_2) $
$ forall lambda in RR, j(lambda x_1) = lambda j(x_1) $

== Noyau

Soit $f: RR^n arrow RR^m $ une application linéaire, le noyau de $f$, $ker(f)$
est donné par $ ker(f) = {v in RR^n | f(v) = 0_RR^m } subset RR^n $

=== Proposition

$ ker(f)$ est un sous-espace vectoriel de $RR^n$ \
De plus, $n=dim(ker(f))+r g(f)$
$r g(f) = dim(I m(f)) = "#colonne" = r g(A_f)$

=== Preuve

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

=== Exemple

$ f: (x,y) arrow.bar (x+3y, 2x+6y) $
$ A_f = mat(1,3;2,6) $
$ => r g(f) = 1, ker(f): x+3y = 0 $

=== Question

$ Pi_1: z = 0 $
$ Pi_2: x + z = 0 $
$ Pi_3: x-z = 0 $


=== Exemple 2

Trouver $f: RR^2 arrow RR^2$ tq $(1,2) in ker(f)$ et $(3,4) in I m(f)$
$ A_f = mat(3,-3/2; 4, -2) $
$f: (x,y) arrow.bar (3x-3/2 y , 4 x-2y)$

== Colonnes-lignes

Si $A_f$ qui est de rang $r$
La décomosition minimale de $A_f$ est du type $A_f = C_1 L_1 + dots.h + C_r L_r $

$ A_f vec(x_1, dots.v, x_n) = C_1 L_1 vec(x_1, dots.v, x_n) + dots.h + C_r L_r vec(x_1, dots.v, x_n)$

$ => im(f) = v e c t(C_1, dots.h, C_r) => dim(im(f)) =r $
$ ker(f) : cases(L_1 vec(x_1, dots.v, x_n) = 0, dots.v, L_r vec(x_1, dots.v, x_n) = 0 ) => dim(ker(f)) = n-r $

=== Exemple

$ A_f = mat(-1,3,1;1,1,-3;1,-4,2) $
$ A_f = vec(-1,1,1) mat(1,-3,-1) + mat(0,0,0; 0, 4, -2; 0, -1, 3) $
$ A_f = vec(-1,1,1) mat(1,-3,-1) + vec(0,4,-1) mat(0,1,-1/2) + mat(0,0,0;0,0,0;0,0,7/2) $
$ A_f = vec(-1,1,1) mat(1,-3,-1) + vec(0,4,-1) mat(0,1,-1/2) + vec(0,0,1/2) mat(0,0,5) $

$ im(f) = v e c t({mat(-1,1,1), mat(0,4,-1), mat(0,0,1/2) }) $
$ ker(f): cases(x-3y-z = 0, y-1/2 z = 0, 5z = 0) $

=== Exemple 2

$ f(x,y,z) = (2x-3y+z, -4x+6y-2z) $
$ A_f = mat(2,-3,1;-4,6,-2) $
$ A_f = vec(-1,2) mat(-2,3,-1) $
$ im(f) = v e c t({(-1,2)}) $
$ ker(f): -2x+3y -z = 0 $ 

== Cas inversible

$f: RR^n -> RR^m$ est dite inversible $<=> exists f^(-1), RR^m -> RR^n $ tq $ f compose f^(-1) = f^(-1) compose f = id$

=== Corollaire

Si $f$ est inversible $n=m$ et $A_f$ est inversible, $r g(A_f) = n$, $ker(f)= {0_(RR^n)}$

==== Exemple

$ f(x,y) = (2x-y, x+y), A_f = mat(2,-1, 1,1) $
$ A_f^(-1) = A_(f^(-1)) = 1/3 mat(1,1; -1,2) $
$ j^(-1) (x,y) = (x+y, -x+2y) $
