Gval can evaluate expressions with parameters, arimethetic, logical, and string operations:

- basic expression: [10 > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Basic)
- parameterized expression: [foo > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Parameter)
- nested parameterized expression: [foo.bar > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-NestedParameter)
- arithmetic expression: [(requests_made * requests_succeeded / 100) >= 90](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Arithmetic)
- string expression: [http_response_body == "service is ok"](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-String)
- float64 expression: [(mem_used / total_mem) * 100](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Float64)

The normal Go-standard order of operators is respected. When writing an expression, be sure that you either order the operators correctly, or use parentheses to clarify which portions of an expression should be run first.

Strings, numbers, and booleans can be used like in Go:

- [(7 < "47" == true ? "hello world!\n\u263a") + \` more text\`](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Encoding)

## Parameters

CellsFlows uses gval/gvals in conjunction with golang templates. It expects one ore more parameters, that are passed as an array (`[]interface{}`).  
This array is accessed using `jsonpath` syntax, e.g. `$[0]`, `$[1]`, etc.

To be used with one variable, you can use piping

    {{.Node.Size | gval "$[0] > 100"}}

Or with multiple parameters : `gval expr, param1, param2` 

    {{gval "$[0] > 100" .Node.Size .JobParameters.CompareSize}}


## Default Language

The default language is in serveral sub languages like text, arithmetic or propositional logic defined. See [Godoc](https://pkg.go.dev/github.com/PaesslerAG/gval/#Gval) for details. All sub languages are merged into gval.Full which contains the following elements:

- Modifiers: `+` `-` `/` `*` `&` `|` `^` `**` `%` `>>` `<<`
- Comparators: `>` `>=` `<` `<=` `==` `!=` `=~` `!~`
- Logical ops: `||` `&&`
- Numeric constants, as 64-bit floating point (`12345.678`)
- String constants (double quotes: `"foobar"`)
- Date function 'Date(x)', using any permutation of RFC3339, ISO8601, ruby date, or unix date
- Boolean constants: `true` `false`
- Parentheses to control order of evaluation `(` `)`
- Json Arrays : `[1, 2, "foo"]`
- Json Objects : `{"a":1, "b":2, "c":"foo"}`
- Prefixes: `!` `-` `~`
- Ternary conditional: `?` `:`
- Null coalescence: `??`
