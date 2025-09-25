#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Analyse B Cours 12",
  subtitle: "04/04/2025",
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

== Fonction dérivée
Soit $f$ une fonction et $I subset D_f$
$ f "dérivable" $
$ <=> forall x in I, f "dérivable en " x $
On peut définir
$ f': I arrow.long RR $
$ f': x |--> lim_(h arrow 0) (f(x+h)-f(x))/h = f'(x) = (d f)/(d x) $

=== Exemple

$ f(x) = sqrt(x) $
$ => f'(x) = 1/(2sqrt(x)) $
$ D_f' = ]0, +oo[ subset [0, +oo[ $

=== Exemple 2
$ lambda in RR, f_lambda(x) = lambda, D_f_lambda  = RR $
Soit $x in RR$
$ lim_(h arrow 0) (f_lambda(x+h) - f_lambda(x))/h = (lambda-lambda)/h = 0 $

=== Exemple 3
$ f(x)= abs(x), x in RR $
Soit $ x in RR^+_* $
$ lim_(h arrow 0) (abs(x + h) - abs(x))/h = h/h = 1 $

Soit $ x in RR^-_* $
$ lim_(h arrow 0) (abs(x + h) - abs(x))/h = -h/h = -1 $

$ f'(x) = cases( 1 "," x>0, -1 "," x < 0 ) $

=== Exemple 4

$ f(x) = x, D_f = RR $
$ forall x in RR, lim_(h arrow 0) (f(x+h)-f(x))/h = h/h = 1 $
$ f'(x) = 1, D_f' = RR $

=== Exemple 5

$ f(x) = x^2, D_f = RR $
$ forall x in RR, lim_(h arrow 0) (f(x+h)-f(x))/h = lim_(h arrow 0) (2h x + h^2)/h = lim_(h arrow 0) (2x+h) = 2x $
$ f'(x) = 2x, D_f' = RR $

=== Exemple 6

$ f(x) = sin(x), D_f = RR $
$ forall x in RR, lim_(h arrow 0) (f(x+h)-f(x))/h $
$ = lim_(h arrow 0) (sin(x+h) - sin(x))/h $
$ = lim_(h arrow 0) (sin(x) cos(h) + cos(x) sin(h) - sin(x))/h $
$ = lim_(h arrow 0) (sin(x) (cos(h)- 1)/h + cos(x) sin(h)/h ) $
$ = cos(x) times 1 $
car $ lim_(h arrow 0) (cos(h)-1)/h = -lim_(h arrow 0) h^2/2/h = 0 $

$ f'(x) = cos(x), forall x in RR $

=== Exemple 7

Sans preuve

$ (e^x)' = e^x, x in RR $
$ (ln(x))' = 1/x, x > 0 $

== Règles de dérivation
Soit $f,g$ fonctions réelles et $x in D_f' sect D_g'$  
$ f+g "dérivable en" x, (f+g)' = f'(x)+g'(x)  $
$ lambda in RR, (lambda f) "dérivable en" x, (lambda f)' = lambda f'(x) $
$ f g "dérivable en" x, (f g)'(x) = f'(x) g(x) + f(x) g(x) $
$ g!= 0 "et " f/g "dérivable en" x, (f/g)'(x) = (f'(x)g(x) -f(x)g'(x))/(g'(x)) $

Théorème

Soit $f$ dérivable en $x$ et g dérivable en $f(x)$ alors
$g compose f$ est dérivable en $x$ et  $(g compose f)'(x) = g'(f(x)) f'(x) $

=== Preuve (produit)

$ lim_(h arrow 0) (f(x+h)g(x+h)-f(x+h)g(x)+f(x+h)g(x)-f(x)g(x))/h  $
$ = lim_(h arrow 0) f(x+h)(g(x+h)-g(x))/h + g(x)(f(x+h)-f(x))/h  $
$ = f(x)g'(x) + g(x)f'(x) $

=== Exemple 1

$ (cos(x))' = ? $
$ cos(x) = sin(pi/2 -x) $
$ f(x)= pi/2 -x, f'(x) = -1 $
$ g(x) = sin(x), g'(x)= cos(x) $ 
$ (cos')(x) = -1cos(pi/2 - x) = -cos(pi/2-x) = -sin(x) $

=== Exemple

$ f(x) = x^n, n in NN^* $
$ f'(x) = n x^(n-1) $

Par récurrence $n=1$

$ f'(x) = 1 = 1 x^0 $

Hérédité:

On suppose que $cal(P_n)$

$ x^(n+1) = x x^n  $
$ (x^(n+1))' = (x)'(x^n)+ x(x^n)' $
$ (x^(n+1))' = x^n + n x^(n) $
$ = (n+1)x^n $


=== Exemple 3

$ f(x) = x^m, m in ZZ^-_*, D_f = RR^* $
$ f(x) = m x^(m-1), D_f = RR^* $
$ f(x) = 1/x^(-m) = 1/x^n, n = -m $
$ f(x)' = 1/(n)x^(n-1) = 1/(m)x^(-m-1)   $
$ f(x)' = m x^(m-1) $


=== Exemple 4

$ sin(x^3)' = (3x^2) cos(x^3) $

== Tangente à des courbes dans $RR^2$

$t$ passe par $(x_0,x_0^2)$ de pente $2x_0$ 
$ t: y-x_0^2 = 2x_0(x-x_0) $
$ 16-x_0^2 = 2x_0(5-x_0) $
$ x_0^2 -10x_0 +16 = 0 $
$ x_0 = 2 "ou" 8 $
$ t_1 : y-4 = 4(x-2) <=> y = 4x-4 $
$ t_2 : y-64 = 16(x-8) <=> y = 16x-64 $

$t_1$ est tangente au graphe en $(2,4)$ et $t_2$ est tangente au graphe en $(8,64)$
