#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Calculus",
  authors: (
    "Lucas",
  ),
  date: "22 Juin, 2023",
)

#set heading(numbering: "1.1.")

#link("Derivative.pdf")[Derivative] #link("Integral.pdf")[Integrale]
#link("Multivariable Function.pdf")[Multivariable Function]
#link("Vector-Valued Functions.pdf")[Vector-Valued Functions]
#link("Multiple Integrations.pdf")[Multiple Integrations]
#link("Vectors Formula.pdf")[Vectors Formula]
