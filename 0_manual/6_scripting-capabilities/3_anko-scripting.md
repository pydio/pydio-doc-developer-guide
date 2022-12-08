Although Golang templates are very powerfull and it should be the preferred way to go when you need to manipulate data, sometimes you need more advanced scripting capabilities.

[Anko](https://github.com/mattn/anko) is a pseudo-go language that is able to manipulate all sorts of objects. It is better to be familiar with the Go language, although not necessary if you just need to write a simple script.

### Basic Syntax

Syntax is a simplified version of Golang (we can highlight it with Javascript grammar, although it is not). Below is an example as provided by [Anko Repository](https://github.com/mattn/anko). Refer to this repository for mors examples.

```javascript
// declare variables
x = 1
y = x + 1

// print using outside the script defined println function
println(x + y) // 3

// if else statement
if x < 1 || y < 1 {
	println(x)
} else if x < 1 && y < 1 {
	println(y)
} else {
	println(x + y)
}

// slice
a = []interface{1, 2, 3}
println(a) // [1 2 3]
println(a[0]) // 1

// map
a = map[interface]interface{"x": 1}
println(a) // map[x:1]
a.b = 2
a["c"] = 3
println(a["b"]) // 2
println(a.c) // 3

// struct
a = make(struct {
	A int64,
	B float64
})
a.A = 4
a.B = 5.5
println(a.A) // 4
println(a.B) // 5.5

// function
func a (x) {
	println(x + 1)
}
a(5) // 6
```


### Input / Output

To add scripting, simply add an "Anko" action to your Flow. As any other actions, it will receive an Input and is expected to return with an Output in the same `ActionMessage` format. This is simply done by injecting the `input` variable in the script, and expecting you to declare an `output` variable. Generally, you will just have to clone the input: 
```javascript
output = input.Clone()
```

### Importing Libraries

Most Golang standard libraries are available for importing, using a `lib = import("lib")` syntax. Cells Flows provides additional libraries that can be imported, as well a "Services" that are directly available in the scope of the script. See some examples below. 

Hello World: 
```javascript
fmt = import("fmt")
fmt.Println("Hello World")
```

Standard Libs: 
```javascript
path = import("path")
strings = import("strings")

dir,base = path.Split(input.Nodes[0].Path) 
dirs = strings.Split(dir, "/")
```

Logger Service (no need to import):
```javascript
Logger.Info("This will appear in the task activities"
```

Cells-defined libraries and enriching Output: 
```javascript
fmt=import("fmt")
jobs=import("jobs")

output = input.Clone()
if input.Nodes[0].MetaStore["pydio:s3-bucket-tag-PydioCustom"] != "" {
    fmt.Println("Got Meta", input.Nodes[0].MetaStore)
	msg = make(jobs.ActionOutput)
	msg.Success = true
	msg.StringBody = input.Nodes[0].MetaStore["pydio:s3-bucket-tag-PydioCustom"];
	output.AppendOutput(&msg)
}
```

### Using Playground

As the syntax is not straight-forward and cannot be validated directly, the Playground (see next section) provides an Anko mode to at least validate the syntax before saving.