#import "@preview/cetz:0.3.2": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot

#set page(width: auto, height: auto, margin: .5cm)

// #let style = (stroke: black, fill: rgb(0, 0, 200, 75)) // Not directly used for f1 plot

// Corrected function f1 to return a float (radians)
#let f1(x) = calc.atan(x).rad()

#set text(size: 10pt)

#canvas({
  import draw: *

  // Set-up a thin axis style
  set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
            legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

  plot.plot(size: (12, 8),
    // Adjusted y-axis parameters for the range of atan(x) in radians
    y-min: -1.8, // Slightly more than -pi/2
    y-max: 1.8,  // Slightly more than pi/2
    y-tick-step: calc.pi / 4, // Tick every pi/4 radians (approx 0.785)
    // x-tick-step: 0.1, // Original, consider adjusting if too dense e.g. 0.5 or calc.pi/4
    x-tick-step: 0.5, // Example of a less dense x-tick-step
    legend: "inner-north",
    {
      // Domain for x: calc.pi is a float, so calc.pi/2 is a float.
      // Domain is approx (-1.47, 1.47)
      let domain = (-calc.pi/2 + 0.1, +calc.pi/2 - 0.1)
      plot.add(f1, domain: domain, label: $ arctan x $,
        style: (stroke: black))
    })
})
