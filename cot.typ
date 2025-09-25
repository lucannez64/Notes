
#import "@preview/cetz:0.3.4"
#set page(width: auto, height: auto, margin: .5cm)

#show math.equation: block.with(fill: white, inset: 1pt)

#cetz.canvas(length: 3cm, {
  import cetz.draw: *

  // Define angle
  let alpha_val = 30deg

  // Calculate key coordinates
  let p_x = calc.cos(alpha_val) // x-coordinate of point on unit circle
  let p_y = calc.sin(alpha_val) // y-coordinate of point on unit circle
  let tan_val = calc.tan(alpha_val)
  let cot_val = 1 / tan_val // cot(alpha) = 1/tan(alpha)

  // Default styles
  set-style(
    mark: (fill: black, scale: 2),
    stroke: (thickness: 0.4pt, cap: "round"), // Default stroke for grid, axes
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )

  // Grid
  grid((-1.5, -1.5), (1.4, 1.4), step: 0.5, stroke: gray + 0.2pt)

  // Axes
  line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
  content((1.5, 0), $x$, anchor: "west")
  line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
  content((0, 1.5), $y$, anchor: "south")

  // Tick marks and labels for axes
  for (val, label_str) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (1, $ 1 $)) {
    line((val, 3pt), (val, -3pt)) // x-ticks
    content((val, -3pt), anchor: "north", label_str)
  }
  for (val, label_str) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (0.5, $ 1/2 $), (1, $ 1 $)) {
    line((3pt, val), (-3pt, val)) // y-ticks
    content((-3pt, val), anchor: "east", label_str)
  }

  // Unit circle
  circle((0,0), radius: 1)

  // Terminal ray of the angle alpha
  // Extends to the furthest point needed for tan/cot construction
  // For 30deg, cot_val is ~1.73, tan_val is ~0.57. So (cot_val, 1) is further.
  line((0,0), (cot_val, 1), stroke: (paint: gray, thickness: 0.5pt))

  // Draw the angle alpha
  cetz.angle.angle((0,0), (1,0), (p_x, p_y),
    label: text(black, [#sym.alpha])) // Angle label in black

  // Set thicker style for the trigonometric function lines
  set-style(stroke: (thickness: 1.2pt))

  // Cosine (on the x-axis)
  line((0,0), (p_x, 0), stroke: (paint: blue), name: "cos_seg")
  content((p_x/2, 0), $text(#blue, cos alpha)$, anchor: "north", padding: 3pt)

  // Sine (vertical line from (p_x,0) to (p_x,p_y))
  line((p_x, 0), (p_x, p_y), stroke: (paint: red), name: "sin_seg")
  content((p_x + 0.05, p_y/2), $text(#red, sin alpha)$, anchor: "west", padding: 3pt)

  // Tangent (vertical line at x=1)
  line((1, 0), (1, tan_val), name: "tan_seg", stroke: (paint: orange))
  content("tan_seg.end", $ text(#orange, tan alpha) = {text(#red, sin alpha)} / {text(#blue, cos alpha)} $, anchor: "west", padding: 2pt)

  // Cotangent (horizontal line at y=1)
  // This is the primary focus of the change.
  line((0, 1), (cot_val, 1), name: "cot_seg", stroke: (paint: green))
  content("cot_seg.end", $ text(#green, cot alpha) = {text(#blue, cos alpha)} / {text(#red, sin alpha)} $, anchor: "south", padding: 2pt)
})
