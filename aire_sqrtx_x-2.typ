


#import "@preview/cetz:0.3.2": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: .5cm)

#let style = (stroke: black, fill: rgb(0, 0, 200, 75))

#let f1(x) = calc.sqrt(calc.abs(x))
#let fn = (
  ($ A_(f,g) $, x => 0),
)

#let g1(x) = x - 2

#set text(size: 10pt)

#canvas({
  import draw: *

  // Set-up a thin axis style
  set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
            legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

  plot.plot(size: (12, 8),
    x-tick-step: 1,x-min: 0, x-max: 5,
    y-tick-step: 2, y-min: 0, y-max: 3,
    legend: "inner-north",
    {
      let domain = (0, +6)
      for ((title, f)) in fn {
        plot.add-fill-between(g1, f1, domain: domain,
          style: (stroke: none), label: title)
      }
      
      plot.add(g1, domain: domain, label: $ x-2  $,
        style: (stroke: black))
      plot.add(f1, domain: domain, label: $ sqrt(x) $,
        style: (stroke: black))
    })
})

