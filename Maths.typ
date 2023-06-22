#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Maths",
  authors: (
    "Lucas",
  ),
  date: "22 Juin, 2023",
)

#set heading(numbering: "1.1.")

#link("Differential.pdf")[Differential Equation]
#link("Calculus.pdf")[Calculus]
