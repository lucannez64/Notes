// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#import "physics.typ"
#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Zilla Slab", lang: "fr")
  show link: underline
  // Title row.
  align(center)[
    #block(text(font: "Playfair Display",weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)
  show heading: it => [
    #set text(font: "Playfair Display")
    #block(it.body)
  ]
  show image: set image(width: 70%)
  show math.equation: set text(font: "STIX Two Math", 12pt)
  body
}



#let blockquote(body) = [
  #set text( size: 0.92em )
  #block(inset: (left: 1.5em, top: 0.2em, bottom: 0.2em))[#body]
]
