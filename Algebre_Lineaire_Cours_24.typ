#import "@preview/dvdtyp:1.0.1": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "@preview/cheq:0.2.2": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/tablem:0.2.0": tablem
#import "@preview/physica:0.9.5": curl, grad, tensor, pdv
#import "@preview/equate:0.3.1": equate

#show: dvdtyp.with(
  title: "Algebre Lineaire Cours 24",
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

#let vect = $"vect"$
#let rg = $"rg"$
#let can = $"can"$
 
= Résumé (Réduction dans $RR^2$) 

$ f: RR^2 arrow RR^2, (x,y) arrow.bar (alpha x + beta y; gamma x + delta y)\
  A_f = mat(alpha,beta;gamma, delta), chi_f (X) = X^2 - tr(f) X + det(A_f)\
  Delta = tr(f)^2 - 4 det(A_f)
$

== $Delta > 0:$
$ chi_f (x) = (x-lambda_1)(x-lambda_2) $
$"Base propre" B = v_1, v_2$
$ v_1 in ker(f-lambda_1 id), Im(f-lambda_2 id)\
  v_2 in ker(f-lambda_2 id), Im(f-lambda_1 id)\
  [f]_B = mat(lambda_1, 0;0,lambda_2)
$

== $Delta = 0$
$ chi_f (x) = (x-lambda)^2 $
$"Base de réduction" B=v_1,v_2 ; v_1 in ker(f-lambda id), Im(f-lambda id), v_2 in.not ker(f-lambda id), Im(f-lambda id)$
$ [f]_B = mat(lambda, 1;0,lambda) $

== $Delta < 0$
$ chi_f (x) = (x-lambda)^2 + mu^2, mu != 0 $
$"Base de réduction" B=v_1,v_2, v_1 in RR^(2 *), v_2 = 1/mu (f-lambda id) (v_1) $
$ [f]_B = mat(lambda, -mu;mu, lambda) = sqrt(lambda^2+mu^2) mat(cos(theta), -sin(theta); sin(theta), cos(theta)) $

= Puissances
Si $B$ est une base de réduction pour $f: RR^2 arrow RR^2$
alors $R_f = P^(-1) A_f P, P=mat([v_1]_B_can, [v_2]_B_can)$
et $A_f = P R_f P^(-1), A_f^2 = P R_f^2 P^(-1) $
$ A_f^n = P R_f^n P^(-1) $
\
#proposition[
  On a les 3 cas de réductions:
  + $ mat(lambda_1, 0;0, lambda_2)^n = mat(lambda_1^n, 0;0, lambda_2^n) $
  + $ mat(lambda,1;0,lambda)^n = mat(lambda^n, n lambda^(n-1); 0, lambda^n) $
  + $ [rho mat(cos(theta), -sin(theta); sin(theta), cos(theta))]^n = rho^n mat(cos(n theta), -sin(n theta); sin(n theta), cos(n theta)) $
]

#proof[
  $ mat(lambda, 1; 0, lambda)^n = (mat(lambda, 0; 0, lambda) + mat(0,1;0,0))^n \
    = sum_(k=0)^n vec(n,k) mat(lambda,0;0,lambda)^k mat(0,1;0,0)^(n-k) \
    = sum_(k=n-1,n)  vec(n,k) mat(lambda,0;0,lambda)^k mat(0,1;0,0)^(n-k)\
    = n mat(lambda^(n-1), 0; 0, lambda^(n-1)) mat(0,1;0,0) + mat(lambda^n, 0;0, lambda^n)\
    = mat(lambda^n, n lambda^(n-1); 0, lambda^n)
  $
]

== Application Résoudre $ m dot.double(x) = -k x$
$t arrow x(t)$
On pose $ X(t) = vec(dot(x)(t), x(t)), dot(X)(t) = vec(dot.double(x) (t), dot(x)(t)) = vec(-k/m x(t), dot(x)(t)) = mat(0, 1; -k/m, 0) X(t)  $
On pose $ X(t) = exp(mat(0,t; -(k t)/m, 0)) X_0 $

$ X(t)/X_0 = sum_0^oo mat(0,t; -(k t)/m, 0)^n/n! = sum_(n=0)^oo P (R^n t^n)/n! P^(-1)\
  = P (sum_(n)^oo R^n t^n/n!) P^(-1)
  = P exp(R t)P^(-1) 
$


$ chi(x) = x^2 + k/m  = x^2 + mu^2, mu = sqrt(k/m) $
$ R = mat(0, -mu; mu, 0) $
$ R t  = mu t mat(0,-1;1,0) $
$ P = mat(1,0;0, sqrt(m/k)), P^(-1) = mat(1, 0; 0, sqrt(k/m)) $
$ exp(R t) = bb(1) + mu t mat(0,-1;1,0) + (mu^2 t^2 mat(-1,0;0,-1))/2 + (mu^3 t^3)/3! mat(0, 1;-1, 0) + (mu^4 t^4)/4! mat(1,0;0,1) + ...\
  = mat(cos(mu t), -sin(mu t); sin(mu t), cos(mu t))
$

$ X(t)/X_0 = mat(1,0;0, sqrt(m/k)) mat(cos(mu t), -sin(mu t); sin(mu t), cos(mu t)) mat(1,0;0, sqrt(k/m))\
  = mat(1,0;0,sqrt(m/k)) mat(cos(mu t), -sqrt(k/m) sin(mu t); sin(mu t), sqrt(k/m) cos(mu t))\
  = mat(cos(mu t), -sqrt(k/m) sin(mu t); sqrt(m/k) sin(t), cos(mu t))
$

$ X_0 = vec(v_0, x_0) \
  vec(v,x) = vec(cos(mu t)v_0 - x_0 sqrt(k/m) sin(mu t), v_0 sqrt(m/k) sin(t) + x_0 cos(mu t) )\
  => x(t) = x_0 cos(mu t) + v_0 sqrt(m/k) sin(mu t)\
  dot.double(x) (t)= -v_0 sin(mu t) sqrt(k/m) - x_0 cos(mu t) k/m = -k/m x(t)
$

$ m dot.double(x) = -k x - c dot(x) $
$ X(t) = vec(dot(x), x), dot(X) = vec(-k/m x-c/m dot(x), dot(x)) = mat(-c/m, -k/m;1,0) X(t) $
$ X(t) = exp(A t) X_0\
  chi (x) = x^2 + c/m x+ k/m \
  Delta = c^2/m^2 - 4k/m
$
