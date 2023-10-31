#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths Prepa MPSI Chap2 Ex",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "30 Octobre, 2023",
)

#set heading(numbering: "1.1.")

== Ex 1
<ex-1>
#block[
#set enum(numbering: "1)", start: 1)
+ $ 3^(n plus 2) minus 3^(n plus 1) minus 7 times 3^n plus 5 times 3^(n minus 1) $
  $ 3^(n plus 2) minus 3^(n plus 1) eq 3^(n plus 1) lr((3 minus 1)) eq 2 times 3^(n plus 1) $
  $ minus 7 times 3^n eq minus 7 times lr((3^(n plus 1 minus 1))) eq frac(minus 7, 3) times 3^(n plus 1) $
  $ 5 times 3^(n minus 1) eq 5 times 3^(n plus 1 minus 2) eq 5 / 3^2 times 3^(n plus 1) $
  $ 3^(n plus 2) minus 3^(n plus 1) minus 7 times 3^n plus 5 times 3^(n minus 1) eq 3^(n plus 1) lr((2 minus 7 / 3 plus 5 / 3^2)) eq 3^(n plus 1) lr((frac(21 plus 5 plus 18, 3^2))) eq 3^(n plus 1) 44 / 9 $
]

== Ex 8
<ex-8>
$ sqrt(x) plus sqrt(x plus 1) eq a $ $ x plus x plus 1 eq a^2 $
$ 2 x plus 1 eq a^2 $ $ x eq frac(a^2 minus 1, 2) $
$ x eq a^2 / 2 minus 1 / 2 $
