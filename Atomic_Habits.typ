#import "@preview/bubble:0.1.0": *
#import "@preview/fletcher:0.4.3" as fletcher: diagram, node, edge
#import "@preview/cetz:0.2.2": canvas, draw, tree, plot
#import "@preview/cheq:0.1.0": checklist
#import "@preview/typpuccino:0.1.0": macchiato, latte
#import "@preview/wordometer:0.1.1": *
#import "@preview/tablem:0.1.0": tablem

#show: bubble.with(
  title: "Atomic_Habits",
  subtitle: "13/08/2024",
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

= Chapter 1

- Start small, gradually
- Getting 1% Better each day can acccumulate to an enormous amount of change

#let style = (stroke: latte.text, fill: rgb(114, 135, 253, 75))

#let improve(x) = { calc.pow(1.01, x) }
#let decrease(x) = { calc.pow(0.99, x) }

#figure(
  canvas(length: 1cm, {
  plot.plot(size: (8, 6),
    x-tick-step: 100,
    x-ticks: ((0, 0), (365, 365)),
    y-tick-step: 3,
    {
      plot.add(
        style: style,
        hypograph: true,
        domain: (0, 365), improve)
      plot.add(
        style: style,
        hypograph: true,
        domain: (0, 365), decrease)
    })
}),
  caption: text("Improvement or regression by 1% per day over a year")
)
