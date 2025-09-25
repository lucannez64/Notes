#import "@preview/cetz:0.3.4"
#import "@preview/cetz-plot:0.1.1": *

#let f(x) = 1 - calc.pow(x,2)

#let area(x) = 2 * x * f(x)

#let xmax = 0.8 // Approximate x value for max area

#cetz.canvas({
  import cetz.draw: *

  let width = 12cm
  let height = 8cm

  let axis = set-style(stroke: black)
  let parabola = set-style(stroke: blue + 0.7pt)
  let rectangle = set-style(stroke: red + 0.7pt, fill: red.lighten(80%))
  let point = set-style(fill: red, radius: 2pt, stroke: none)


  // Axes
  line((-width / 2, 0), (width / 2, 0), style: axis)
  line((0, -height / 2), (0, height / 2), style: axis)

  // Parabola
  let points = sequence(start: -1, end: 1, step: 0.01).map(x => (x * width / 2, f(x) * height / 2))
  polyline(points, style: "parabola")

  // Rectangle
  let x = xmax // x-coordinate for the rectangle
  let rect-width = 2 * x * width / 2
  let rect-height = f(x) * height / 2
  rect((-rect-width / 2, -0), (rect-width, rect-height), style: "rectangle")

  // Indicate the point
  circle((x * width / 2, f(x) * height / 2), style: "point")
})
