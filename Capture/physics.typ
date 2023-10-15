// Copyright 2023 Leedehai
// Use of this code is governed by a MIT license in the LICENSE.txt file.
// For a manual on this package, see manual.pdf.

// Returns whether a Content object holds an integer. The caller is responsible
// to ensure the input argument is a Content object.
#let __content_holds_number(content) = {
  return content.func() == text and regex("^\d+$") in content.text
}

// Given a Content generated from lr(), return the array of sub Content objects.
// Example: "[1,a_1,(1,1),n+1]" => "1", "a_1", "(1,1)", "n+1"
#let __extract_array_contents(content) = {
  assert(type(content) == "content", message: "expecting a content type input")
  if content.func() != math.lr { return none }
  // A Content object made by lr() definitely has a "body" field, and a
  // "children" field underneath it. It holds an array of Content objects,
  // starting with a Content holding "(" and ending with a Content holding ")".
  let children = content.at("body").at("children")

  let result_elements = ()  // array of Content objects

  // Skip the delimiters at the two ends.
  let inner_children = children.slice(1, children.len() - 1)
  // "a_1", "(1,1)" are all recognized as one AST node, respectively,
  // because they are syntactically meaningful in Typst. However, things like
  // "a+b", "a*b" are recognized as 3 nodes, respectively, because in Typst's
  // view they are just plain sequences of symbols. We need to join the symbols.
  let current_element_pieces = ()  // array of Content objects
  for i in range(inner_children.len()) {
    let e = inner_children.at(i)
    if e == [ ] or e == [] { continue; }
    if e != [,] { current_element_pieces.push(e) }
    if e == [,] or (i == inner_children.len() - 1) {
      if current_element_pieces.len() > 0 {
        result_elements.push(current_element_pieces.join())
        current_element_pieces = ()
      }
      continue;
    }
  }

  return result_elements;
}

// A bare-minimum-effort symbolic addition.
#let __bare_minimum_effort_symbolic_add(elements) = {
  assert(type(elements) == "array", message: "expecting an array of content")
  let operands = ()  // array
  for e in elements {
    if not e.has("children") {
      operands.push(e)
      continue
    }

    // The elements is like "a+b" where there are multiple operands ("a", "b").
    let current_operand = ()
    let children = e.at("children")
    for i in range(children.len()) {
      let child = children.at(i)
      if child == [+] {
        operands.push(current_operand.join())
        current_operand = ()
        continue;
      }
      current_operand.push(child)
    }
    operands.push(current_operand.join())
  }

  let num_sum = 0
  let map_id_to_sym = (:)  // dictionary, symbol repr to symbol
  let map_id_to_sym_sum = (:)  // dictionary, symbol repr to number
  for e in operands {
    if __content_holds_number(e) {
      num_sum += int(e.text)
      continue
    }
    let is_num_times_sth = (
      e.has("children") and __content_holds_number(e.at("children").at(0)))
    if is_num_times_sth {
      let leading_num = int(e.at("children").at(0).text)
      let sym = e.at("children").slice(1).join()  // join to one symbol
      let sym_id = repr(sym)  // string
      if sym_id in map_id_to_sym {
        let sym_sum_so_far = map_id_to_sym_sum.at(sym_id)  // number
        map_id_to_sym_sum.insert(sym_id, sym_sum_so_far + leading_num)
      } else {
        map_id_to_sym.insert(sym_id, sym)
        map_id_to_sym_sum.insert(sym_id, leading_num)
      }
    } else {
      let sym = e
      let sym_id = repr(sym)  // string
      if repr(e) in map_id_to_sym {
        let sym_sum_so_far = map_id_to_sym_sum.at(sym_id)  // number
        map_id_to_sym_sum.insert(sym_id, sym_sum_so_far + 1)
      } else {
        map_id_to_sym.insert(sym_id, sym)
        map_id_to_sym_sum.insert(sym_id, 1)
      }
    }
  }

  let expr_terms = ()  // array of Content object
  let sorted_sym_ids = map_id_to_sym.keys().sorted()
  for sym_id in sorted_sym_ids {
    let sym = map_id_to_sym.at(sym_id)
    let sym_sum = map_id_to_sym_sum.at(sym_id)  // number
    if sym_sum == 1 {
      expr_terms.push(sym)
    } else if sym_sum != 0 {
      expr_terms.push([#sym_sum #sym])
    }
  }
  if num_sum != 0 {
    expr_terms.push([#num_sum])  // make a Content object holding the number
  }

  return expr_terms.join([+])
}

// == Braces

#let Set(..sink) = {
  let args = sink.pos()  // array
  let expr = if args.len() >= 1 { args.at(0) } else { none }
  let cond = if args.len() >= 2 { args.at(1) } else { none }

  if expr == none {
    if cond == none { ${}$ } else { $lr({|#cond})$ }
  } else {
    if cond == none { $lr({#expr})$ } else { $lr({#expr | #cond})$ }
  }
}

#let order(content) = $cal(O)(content)$

#let evaluated(content) = {
  $lr(zwj#content|)$
}
#let eval = evaluated

#let expectationvalue(f) = $lr(angle.l #f angle.r)$
#let expval = expectationvalue

// == Vector notations

#let vecrow(..content) = $lr(( #content.pos().join(",") ))$

#let TT = $sans(upright(T))$

#let vectorbold(a) = $bold(italic(#a))$
#let vb = vectorbold

#let __vectoraccent(a, accent) = {
  let bold_italic(e) = math.bold(math.italic(e))
  if type(a) == "content" and a.func() == math.attach {
    let top = if a.has("top") { a.top } else { none }
    let bottom = if a.has("bottom") { a.bottom } else { none }
    math.attach(
      math.accent(bold_italic(a.base), accent),
      top: math.bold(top),
      bottom: math.bold(bottom)
    )
  } else {
    math.accent(bold_italic(a), accent)
  }
}
#let vectorarrow(a) = __vectoraccent(a, math.arrow)
#let va = vectorarrow

#let vectorunit(a) = __vectoraccent(a, math.hat)
#let vu = vectorunit

#let gradient = $bold(nabla)$
#let grad = gradient

#let divergence = $bold(nabla)dot.c$
#let div = divergence

#let curl = $bold(nabla)times$

#let laplacian = $nabla^2$

#let dotproduct = $dot.op$
#let dprod = dotproduct
#let crossproduct = $times$
#let cprod = crossproduct

// == Matrices

#let matrixdet(..sink) = {
  math.mat(..sink, delim:"|")
}
#let mdet = matrixdet

#let diagonalmatrix(..sink) = {
  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let args = sink.pos()  // array
  let kwargs = sink.named()  // dictionary

  let delim = if "delim" in kwargs { kwargs.at("delim") } else { "(" }

  let arrays = ()  // array of arrays
  let n = args.len()
  for i in range(n) {
    let array = range(n).map((j) => {
      let e = if j == i { args.at(i) } else { 0 }
      return e
    })
    arrays.push(array)
  }
  math.mat(delim: delim, ..arrays)
}
#let dmat = diagonalmatrix

#let antidiagonalmatrix(..sink) = {
  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let args = sink.pos()  // array
  let kwargs = sink.named()  // dictionary

  let delim = if "delim" in kwargs { kwargs.at("delim") } else { "(" }

  let arrays = ()  // array of arrays
  let n = args.len()
  for i in range(n) {
    let array = range(n).map((j) => {
      let complement = n - 1 - i
      let e = if j == complement { args.at(i) } else { 0 }
      return e
    })
    arrays.push(array)
  }
  math.mat(delim: delim, ..arrays)
}
#let admat = antidiagonalmatrix

#let identitymatrix(order, delim:"(") = {
  let order_num = 1
  if type(order) == "content" and __content_holds_number(order) {
    order_num = int(order.text)
  } else {
    panic("the order shall be a number, e.g. 2")
  }

  let ones = range(order_num).map((i) => 1)
  diagonalmatrix(..ones, delim: delim)
}
#let imat = identitymatrix

#let zeromatrix(order, delim:"(") = {
  let order_num = 1
  if type(order) == "content" and __content_holds_number(order) {
    order_num = int(order.text)
  } else {
    panic("the order shall be a number, e.g. 2")
  }

  let ones = range(order_num).map((i) => 0)
  diagonalmatrix(..ones, delim: delim)
}
#let zmat = zeromatrix

#let jacobianmatrix(fs, xs, delim:"(") = {
  assert(type(fs) == "array", message: "expecting an array of function names")
  assert(type(xs) == "array", message: "expecting an array of variable names")
  let arrays = ()  // array of arrays
  for f in fs {
    arrays.push(xs.map((x) => math.frac($diff #f$, $diff #x$)))
  }
  math.mat(delim: delim, ..arrays)
}
#let jmat = jacobianmatrix

#let hessianmatrix(fs, xs, delim:"(") = {
  assert(type(fs) == "array", message: "expecting a one-element array")
  assert(fs.len() == 1, message: "expecting only one function name")
  let f = fs.at(0)
  assert(type(xs) == "array", message: "expecting an array of variable names")
  let arrays = ()  // array of arrays
  for i in range(xs.len()) {
    let array = ()  // array
    let xi = xs.at(i)
    for j in range(xs.len()) {
      if i == j {
        array.push(math.frac($diff^2 #f$, $diff #xi^2$))
        continue;
      }
      let xj = xs.at(j)
      array.push(math.frac($diff^2 #f$, $diff #xi diff #xj$))
    }
    arrays.push(array)
  }
  math.mat(delim: delim, ..arrays)
}
#let hmat = hessianmatrix

// == Dirac braket notations

#let bra(f) = $lr(angle.l #f|)$
#let ket(f) = $lr(|#f angle.r)$

#let braket(..sink) = {
  let args = sink.pos()  // array
  assert(args.len() == 1 or args.len() == 2, message: "expecting 1 or 2 args")

  let f = args.at(0)
  let g = if args.len() >= 2 { args.at(1) } else { f }

  // Do not replace "|" with "bar.v" -- takes up too much width
  $lr(angle.l #f|#g angle.r)$
}
#let ketbra(..sink) = {
  let args = sink.pos()  // array
  assert(args.len() == 1 or args.len() == 2, message: "expecting 1 or 2 args")

  let f = args.at(0)
  let g = if args.len() >= 2 { args.at(1) } else { f }

  // Do not replace "|" with "bar.v" -- takes up too much width
  $lr(|#f angle.r)lr(angle.l #g|)$
}

#let innerproduct(f, g) = { braket(f, g) }
#let iprod = innerproduct

#let outerproduct(f, g) = { ketbra(f, g) }
#let oprod = outerproduct

#let matrixelement(n, M, m) = $lr(angle.l #n lr(|#M|) #m angle.r)$
#let mel = matrixelement

// == Math functions

#let sin = math.op("sin")
#let sinh = math.op("sinh")
#let arcsin = math.op("arcsin")
#let asin = math.op("asin")

#let cos = math.op("cos")
#let cosh = math.op("cosh")
#let arccos = math.op("arccos")
#let acos = math.op("acos")

#let tan = math.op("tan")
#let tanh = math.op("tanh")
#let arctan = math.op("arctan")
#let atan = math.op("atan")

#let sec = math.op("sec")
#let sech = math.op("sech")
#let arcsec = math.op("arcsec")
#let asec = math.op("asec")

#let csc = math.op("csc")
#let csch = math.op("csch")
#let arccsc = math.op("arccsc")
#let acsc = math.op("acsc")

#let cot = math.op("cot")
#let coth = math.op("coth")
#let arccot = math.op("arccot")
#let acot = math.op("acot")

#let diag = math.op("diag")

#let trace = math.op("trace")
#let tr = math.op("tr")
#let Trace = math.op("Trace")
#let Tr = math.op("Tr")

#let rank = math.op("rank")
#let erf = math.op("erf")
#let Res = math.op("Res")

#let Re = math.op("Re")
#let Im = math.op("Im")

#let sgn = $op("sgn")$

// == Differentials

#let differential(..sink) = {
  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let args = sink.pos()  // array
  let kwargs = sink.named()  // dictionary

  let orders = ()
  let var_num = args.len()
  let default_order = [1]  // a Content holding "1"
  let last = args.at(args.len() - 1)
  if type(last) == "content" {
    if last.func() == math.lr and last.at("body").at("children").at(0) == [\[] {
      var_num -= 1
      orders = __extract_array_contents(last)  // array
    } else if __content_holds_number(last) {
      var_num -= 1
      default_order = last  // treat as a single element
      orders.push(default_order)
    }
  } else if type(last) == "integer" {
    var_num -= 1
    default_order = [#last]  // make it a Content
    orders.push(default_order)
  }

  let dsym = if "d" in kwargs {
    kwargs.at("d")
  } else {
    $upright(d)$
  }

  let prod = if "p" in kwargs {
    kwargs.at("p")
  } else {
    none
  }

  let difference = var_num - orders.len()
  while difference > 0 {
    orders.push(default_order)
    difference -= 1
  }

  let arr = ()
  for i in range(var_num) {
    let var = args.at(i)
    let order = orders.at(i)
    if order != [1] {
      arr.push($dsym^#order #var$)
    } else {
      arr.push($dsym #var$)
    }
  }
  $#arr.join(prod)$
}
#let dd = differential

#let variation = dd.with(d: sym.delta)
#let var = variation

// Do not name it "delta", because it will collide with "delta" in math
// expressions (note in math mode "sym.delta" can be written as "delta").
#let difference = dd.with(d: sym.Delta)

#let __combine_var_order(var, order) = {
  let naive_res = math.attach(var, top: order)
  if type(var) != "content" or var.func() != math.attach {
    return naive_res
  }

  if var.has("bottom") and (not var.has("top")) {
    // Place the order superscript directly above the subscript, as is
    // the custom is most papers.
    return math.attach(var.base, top: order, bottom: var.bottom)
  }

  // Even if var.has("top") is true, we don't take any special action. Let
  // user decide. Say, if they want to wrap var in a "(..)", let they do it.
  return naive_res
}

#let derivative(f, ..sink) = {
  if f == [] { f = none }  // Convert empty content to none

  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let args = sink.pos()  // array
  let kwargs = sink.named()  // dictionary
  assert(args.len() > 0, message: "variable name expected")

  let d = if "d" in kwargs { kwargs.at("d") } else { $upright(d)$ }
  let slash = if "s" in kwargs { kwargs.at("s") } else { none }

  let var = args.at(0)
  assert(args.len() >= 1, message: "expecting at least one argument")

  let display(num, denom, slash) = {
    if slash == none {
      $#num/#denom$
    } else {
      let sep = (sym.zwj, slash, sym.zwj).join()
      $#num#sep#denom$
    }
  }

  if args.len() >= 2 {  // i.e. specified the order
    let order = args.at(1)  // Not necessarily representing a number
    let upper = if f == none { $#d^#order$ } else { $#d^#order #f$ }
    let varorder = __combine_var_order(var, order)
    display(upper, $#d #varorder$, slash)
  } else {  // i.e. no order specified
    let upper = if f == none { $#d$ } else { $#d #f$ }
    display(upper, $#d #var$, slash)
  }
}
#let dv = derivative

#let partialderivative(..sink) = {
  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let args = sink.pos()  // array
  let kwargs = sink.named()  // dictionary
  assert(args.len() >= 2, message: "expecting one function name and at least one variable name")

  let f = args.at(0)
  if f == [] { f = none }  // Convert empty content to none
  let var_num = args.len() - 1
  let orders = ()
  let default_order = [1]  // a Content holding "1"

  // The last argument might be the order numbers, let's check.
  let last = args.at(args.len() - 1)
  if type(last) == "content" {
    if last.func() == math.lr and last.at("body").at("children").at(0) == [\[] {
      var_num -= 1
      orders = __extract_array_contents(last)  // array
    } else if  __content_holds_number(last) {
      var_num -= 1
      default_order = last
      orders.push(default_order)
    }
  } else if type(last) == "integer" {
    var_num -= 1
    default_order = [#last]  // make it a Content
    orders.push(default_order)
  }

  let difference = var_num - orders.len()
  while difference > 0 {
    orders.push(default_order)
    difference -= 1
  }

  let total_order = none  // any type, could be a number
  if "total" in kwargs {
    total_order = kwargs.at("total")
  } else {
    total_order = __bare_minimum_effort_symbolic_add(orders)
  }

  let lowers = ()
  for i in range(var_num) {
    let var = args.at(1 + i)  // 1st element is the function name, skip
    let order = orders.at(i)
    if order == [1] {
      lowers.push($diff #var$)
    } else {
      let varorder = __combine_var_order(var, order)
      lowers.push($diff #varorder$)
    }
  }

  let upper = if total_order != 1 and total_order != [1] {  // number or Content
    if f == none { $diff^#total_order$ } else { $diff^#total_order #f$ }
  } else {
    if f == none { $diff$ } else { $diff #f$ }
  }

  let display(num, denom, slash) = {
    if slash == none {
      math.frac(num, denom)
    } else {
      let sep = (sym.zwj, slash, sym.zwj).join()
      $#num#sep#denom$
    }
  }

  let slash = if "s" in kwargs { kwargs.at("s") } else { none }
  display(upper, lowers.join(), slash)
}
#let pdv = partialderivative

// == Miscellaneous

// With the default font, the original symbol `planck.reduce` has a slash on the
// letter "h", and it is different from the usual "hbar" symbol, which has a
// horizontal bar on the letter "h".
//
// Here, we manually create a "hbar" symbol by adding the font-independent
// horizontal bar produced by strike() to the current font's Planck symbol, so
// that the new "hbar" symbol and the existing Planck symbol look similar in any
// font (not just "New Computer Modern").
//
// However, strike() causes some side effects in math mode: it shifts the symbol
// downward. This seems like a Typst bug. Therefore, we need to use move() to
// eliminate those side effects so that the symbol behave nicely in math
// expressions.
//
// We also need to use wj (word joiner) to eliminate the unwanted horizontal
// spaces that manifests when using the symbol in math mode.
//
// Credit: Enivex in https://github.com/typst/typst/issues/355 was very helpful.
#let hbar = (sym.wj, move(dy: -0.08em, strike(offset: -0.55em, extent: -0.05em, sym.planck)), sym.wj).join()

#let tensor(T, ..sink) = {
  let args = sink.pos()

  // TODO(unpacking): https://github.com/typst/typst/pull/532
  let uppers = ()
  let lowers = ()
  let hphantom(s) = { hide(box(height: 0em, s)) }  // Like Latex's \hphantom

  for i in range(args.len()) {
    let arg = args.at(i)
    let tuple = if arg.has("children") == true {
      arg.at("children")
    } else {
      ([+], sym.square)
    }
    assert(type(tuple) == "array", message: "shall be array")

    let pos = tuple.at(0)
    let symbol = if tuple.len() >= 2 {
      tuple.slice(1).join()
    } else {
      sym.square
    }
    if pos == [+] {
      let rendering = $#symbol$
      uppers.push(rendering)
      lowers.push(hphantom(rendering))
    } else {  // Curiously, equality with [-] is always false, so we don't do it
      let rendering = $#symbol$
      uppers.push(hphantom(rendering))
      lowers.push(rendering)
    }
  }

  // Do not use "...^..._...", because the lower indices appear to be placed
  // slightly lower than a normal subscript.
  // Use a phantom with zwj (zero-width word joiner) to vertically align the
  // starting points of the upper and lower indices. Also, we put T inside
  // the first argument of attach(), so that the indices' vertical position
  // auto-adjusts with T's height.
  math.attach((T,hphantom(sym.zwj)).join(), top: uppers.join(), bottom: lowers.join())
}

#let isotope(element, /*atomic mass*/a: none, /*atomic number*/z: none) = {
  style(styles => {
    let size = measure([0], styles)  // The reference
    // Use a right-aligned table to have the numbers aligned on the right.
    // Did try using box(width: ..., align(right, ...)), but it unexpectedly
    // shifts indices downward.
    let tab = table(
      align: right, gutter: 0em, stroke: none,
      columns: (auto,), rows: size.height, inset: 0em,
      [#text(size: size.height, a)], [#text(size: size.height, z)],
    )

    let e = math.upright(element)
    $#tab#e$
  })
}

#let BMEsymadd(content) = {
  let elements = __extract_array_contents(content)
  __bare_minimum_effort_symbolic_add(elements)
}

// Add symbol definitions to the corresponding sections. Do not simply append
// them at the end of file.
