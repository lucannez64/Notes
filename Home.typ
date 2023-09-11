#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Home",
  authors: (
    "Lucas",
  ),
  date: "11 Septembre, 2023",
)

#set heading(numbering: "1.1.")

= Home
<home>
== Links
<links>
#link("Maths.pdf")[Maths] #link("Francais.pdf")[Français]
