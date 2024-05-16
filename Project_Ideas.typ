#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree
#import "@preview/cheq:0.1.0": checklist

#import "@preview/wordometer:0.1.1": *

#show: bubble.with(
  title: "Project Ideas",
  subtitle: "A long derivation towards greatness",
  author: "Lucas Duchet-Annez",
  affiliation: "LHB",
  year: "2023/2024",
  class: "101",
  logo: image("JOJO_magazine_Spring_2022_cover-min-modified.png"),
)

#set page(footer: context [
    #set text(8pt)
    #set align(center)
    #text(total-words+" words /")
    #text("page "+ counter(page).display())
  ]
)
#set heading(numbering: "1.1")
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)

#show: word-count.with(exclude: (text.where(weight: 8pt)))

= Liste
  - [ ] Une application qui permet de répertorier des objets et leurs positions et de la tracker quand on lui dit qu'on les déplace elle demande une vérification de la nouvelle position et nous la rappelle quand on cherche cet objet
  - [ ] b 

= Application

== Find My Object

`add_db(obj) returns image, pos(inside which tree of object or rooms), in_movement`

#diagram(
  spacing: (10em,2em),
  node-stroke: .1em,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
  edge((-1, 0), "r", "--|>", "user_add(object)", label-pos: 0, label-side: center),
  node((0,0), "add_db(obj)", shape: rect),
)

#v(1.5em)

#diagram(
  spacing: (10em,3em),
  node-stroke: .1em,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
  edge((-1, 1), "r", "--|>", "user_changing_position", label-pos: 0, label-side:center),
  node((0,1), "get_which_object_in_movement", shape: rect),
  edge((0, 1), "d", "-|>", "ask_for_an_update(obj)"),
  node((0,2), "set_new_position(obj)"),
  

)

#v(1.5em)

#diagram(
  spacing: 10em,
  node-stroke: .1em,
  node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
  edge((-1,0), "r", "--|>", "user_ask_for_obj_location" , label-pos: 0, label-side:center),
  node((0,0), "pos(obj)")
)

=== Position tree

#let data = (
  [room],
  ([drawer a], [compartiment a], [compartiment b]),
  ([drawer b], [tshirt])
)

#canvas(length: 1cm, {
  import draw: *
  tree.tree(data, spread: 4, grow: 1.5, draw-node: (node, ..) => {
    circle((), radius: .45, stroke: none)
    content((), node.content)
  }, draw-edge: (from, to, ..) => {
    line((a: from, number: .45, b: to),
         (a: to, number: .6, b: from), mark: (end: ">"))
  }, name: "tree")

  // Draw a "custom" connection between two nodes
  let (a, b) = ("tree.0-0-1", "tree.0-1-0",)
  line((a, 1.5, b), (b, .6, a), mark: (end: ">", start: ">"))
})
