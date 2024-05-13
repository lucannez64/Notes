#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Maths Expertes",
  subtitle: "Pour le 15/05/2024",
  author: "Lucas Duchet-Annez",
  affiliation: "LHB",
  year: "2023/2024",
  class: "101",
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

= Exercices

== Numéro 27 page 196

=== 

En calculant on trouve :

$A^2 = mat(
    -2, 3, -3;
    -9, 10, -9;
    -3, 3, -2;
  )$

Par conséquent $ A^2-3A+2I = mat(
    -2, 3, -3;
    -9, 10, -9;
    -3, 3, -2;
  ) + mat(
      0, -3, 3;
      9, -12, 9;
      3, -3, 0;
    ) + mat( 
      2, 0, 0;
      0, 2, 0;
      0, 0, 2;) $
$ = mat(
      -2+2, -3+3, -3+3;
      -9+9, 10+2-12, -9+9;
      -3+3, 3-3, -2+2;
      ) = mat(
          0,0,0;
          0,0,0;
          0,0,0;
        ) = O $

2. A est inversible si et seulement si $det(A)!= 0$

  Or $ det(A) = mat(delim: "|",  0,1,-1; -3, 4, -3; -1, 1, 0;) $ $ = 0 times 4 times 0 + 1 times (-3) times (-1) + (-1) times (-3) times (1) - (-1) times 4 times (-1) - 1 times (-3) times 0 - 0 times (-3) times 1 = 2 $

    Donc A est une matrice inversible et son inverse est $A^(-1)$
  On a $A X=I$ admet une solution avec $X = A^(-1)$
$ X= mat(3/2, -1/2, 1/2;
3/2, -1/2, 3/2;
1/2, -1/2, 3/2;) $

$ A^T = mat(0, -3, -1; 1, 4 , 1; -1, -3 ,0 ;) $ 
$ a d j(A) = mat(3, -1, 1; 3, -1 ,3; 1, -1, 3;) $
$ A^(-1) = 1/det(A) times A^(T) = mat(3/2, -1/2, 1/2; 3/2, -1/2, 3/2; 1/2, -1/2, 3/2;) $

Ou $ 1/2(3A-A^2) = I $
$ A((3/2)I-A/2) = I $

Donc A est inversible et son inverse est $ A^(-1) = 3/2I-1/2 A $

== Ex 30

=== 

$ A^(-1) = 1/(4 times 2-1 times (-1)) mat( 2, -1; 1, 4;) $
$ = mat(2/9, -1/9; 1/9, 4/9;) $

$ B^(-1) = 1/(5 times 2 - 2 times 0) mat( 2, -2; 0, 5;) $
$ B^(-1) = mat(1/5, -1/5; 0, 1/2;) $

===

$ (A B)^(-1) = mat(20, 10; -5, 2;)^(-1) = mat(1/45, -1/9; 1/18, 2/9;) $
$ A^(-1)B^(-1) =  mat(2/45, -1/10; 1/45, 1/5;) $

On remarque que le résultat est différent donc les deux opérations ne sont pas équivalentes en général

=== 

$ B^(-1)A^(-1) = mat(1/45, -1/9; 1/18, 2/9;) $

On peut conjecturer que pour toutes matrices inversibles $A$ et $B$ $(A B)^(-1) = B^(-1)A^(-1)$

===

$ A^(-1) B^(-1)= mat(1/8, 3/4; 1/32, -1/16;) $

$ (A B)^(-1) = mat(1/4, -1/8; 1/8, -3/16;)$

$ B^(-1) A^(-1) = mat(1/4, -1/8; 1/8, -3/16;) $

== Ex 50

===

$A B = mat(0, 0; 0, 0) = O$
$B A = mat(22, -44; 11, -22;)$

===

La multiplication de matrice n'est pas commutative en général.

===

$det(A) = 2 times 6 - ((-4) times (-3)) = 0$
et $det(B) = 2 times (-3) - (-6 times 1) = 0$

Donc A et B ne sont pas inversible.

===

La matrice nulle convient mais il n'y a pas d'unicité car la matrice $mat(0, 3; 0,1)$ convient aussi de plus d'après le cours il y a dans ce cas une infinité de solution ou aucune solution or $O$ est solution donc il y a une infinité de solution et il n'y a pas d'unicité.

===
On pose 
$C = mat(a, b; c, d;)$

Alors $B C = O$ si seulement si $ cases(2a-6c = 0, a-3c=0, 2b-6d=0, b-3d= 0  ) $
$ arrow.l.r.double.long cases( a= 3c, b=3d ) $
Ainsi l'ensemble des matrices $C$ tel que $B C = O$ est l'ensemble $S = {mat(3c, 3d; c, d) text(" ") c,d in RR}$


== Ex 54

=== 

$det(P) = 1 times 2 - (-1 times -1) = 1 eq.not 0$
donc P est inversible
$ P^(-1) = 1/(det(P)) mat(2, 1;1,1) $
$ P^(-1) = mat(2, 1;1,1) $

===

$ P^(-1)A P = mat(2, 0; 0, -1;) $
Donc $D = mat(2, 0; 0, -1;)$

===

Initialisation:
pour $n=0$

On a $A^0=I$
et $P D^0 P^(-1) = P I P^(-1) = P P^(-1) = I$

Donc la propriété est initialisée.

Hérédité: 
On suppose qu'il existe un entier naturel $k$ tel que $A^k = P D^k P^(-1)$

Alors $ A^(k+1) = A^k times A $
$ A^(k+1) = P D^k P^(-1) times P D P^(-1) $
$ A^(k+1) = P D^(k) D P^(-1) $
$ A^(k+1) = P D^(k+1) P^(-1) $

Donc la propriété est héréditaire.

Conclusion: 
La propriété étant initialisée et héréditaire selon le principe de récurrence, pour tout $n$ entier naturel on a $A^n = P D^n P^(-1)$

===

On trouve $D^n = mat(2^n , 0; 0, (-1)^n;)$

Par conséquent $A^n = mat(2^n, 2^n+ (-1)^(n+1); -2^(n+1)+ 2(-1)^n, -2^n + 2(-1)^n;)$
