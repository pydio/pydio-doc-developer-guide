[Gval (Go eVALuate)](https://github.com/PaesslerAG/gval) provides support for evaluating arbitrary expressions, in particular Go-like expressions.

Gval can evaluate expressions with parameters, arimethetic, logical, and string operations:

- basic expression: [10 > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Basic)
- parameterized expression: [foo > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Parameter)
- nested parameterized expression: [foo.bar > 0](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-NestedParameter)
- arithmetic expression: [(requests_made * requests_succeeded / 100) >= 90](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Arithmetic)
- string expression: [http_response_body == "service is ok"](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-String)
- float64 expression: [(mem_used / total_mem) * 100](https://pkg.go.dev/github.com/PaesslerAG/gval/#example-Evaluate-Float64)

It also provides support for [JSON Path](https://github.com/PaesslerAG/jsonpath) support, allowing you 
to look inside JSON structures.

[:summary]
