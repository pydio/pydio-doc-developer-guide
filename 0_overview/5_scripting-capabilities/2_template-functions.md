## The need

In the first section example, we renamed an arbitrary file to `TargetFolder/userLogin-date`, wich is probably not very useful if we also want to keep the original filename. How can we extract the file "basename" from the input? That's where Template Functions are useful.

Instead of
```
{{.JobParameters.TargetFolder}}/{{.ContextUser.Login}}-{{.Env.Date}}-{{.Env.Time}}
```
Let's use the following value:
```
{{.JobParameters.TargetFolder}}/{{.ContextUser.Login}}-{{.Env.Date}}-{{.Node.Path | base}}
```
As you can see, we are transforming the `.Node.Path` value with a `base` function, that is defined to extract basename from a path (i.e. `/path/to/file.ext` => `file.ext`).

Functions provide scripting capabilities inside Golang Templates to dynamically modify inputs. Any evaluated data can be "piped" through transforming functions.

## Calling template functions

Function can be called in two manners: 

 - If a function takes more argument `f(param1,param2) = y`, start the template instruction with function name followed by its arguments `{{funcName "param1" "param2"}}` 
 - If a function is as simple as `f(x) = y`, use "pipe" to transform data with `{{.DataValue | funcName}}`. This is would in fact be equivalent to `{{funcName .DataValue}}`

Functions can be successively piped: `{{.DataValue | f1 | f2}}` is equivalent to calling `f2(f1(x))` 

## More examples

Replace word occurence then remove spaces from filename:
```
{{.Node.Path | replace "search word" "replaced word" | nospace}}
```
Display file size in a human readable format (e.g. 56MB):
```
{{.Node.Size | toString | humanBytes }}
```

Compute a timestamp representing "yesterday at the same time":
```
{{now | date_modify "-24h" | asStamp}}
```

Extract info from data with `gval` "jsonpath" feature:
```
{{.Node | toJsonMap | gval "$[0].Path"}}
```

Using `gval` to compute a percentage and compare it to a threshold value. Here the LastOutput contains a json struct with storage statistics:
```
{{gval "$[0].Stats.Free / $[0].Stats.Total * 100 > $[1]" .LastOutput.JsonAsValue.Map .JobParameters.Threshold}}
```

**The exhaustive list of available functions [is available here](./template-functions).**

## Advanced scripting with Anko

When Golang templating is not enough, you might want to write complex scripts to parse specific values, create ACLs or other things like that. [Anko Script](./anko-script) action provides a pseudo-go language to perform such advanced data transformation. 

Detailed documentation is not yet available for this scripting language, please contact us if you need to write your own action!