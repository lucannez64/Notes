#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Differential",
  authors: (
    "Lucas Duchet-Annez",
  ),
  date: "4 Octobre, 2023",
)

#set heading(numbering: "1.1.")

= Differential Equations
<differential-equations>
== Definition
<definition>
#link("SimpleOrdinaryDE.pdf")[Simple $dot(x) eq lambda x$]

== Links
<links>
- #link("https://tutorial.math.lamar.edu/Classes/DE/DE.aspx")[Paul’s Online Notes]
- #link("https://www.youtube.com/playlist?list=PLMrJAkhIeNNTYaOnVI3QpH7jgULnAmvPA")[Steve Brunton’s Playlist]
- #link("https://www.youtube.com/playlist?list=PLZHQObOWTQDNPOjrT6KVlfJuKtYTftqH6")[3Blue1Brown’s Playlist]
