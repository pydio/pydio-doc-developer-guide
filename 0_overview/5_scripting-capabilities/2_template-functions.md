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

Remove spaces in filename
```
{{.Node.Path | nospace}}
```
Assuming .ModifSince is -60h (minus 60 hours), compute real date in unix timestamp format:
```
{{now | date_modify .ModifSince | asStamp}}
```

Extract info from data with gval "jsonpath" feature
```
{{.Node | toJsonMap | gval "$[0].Path"}}
```

**The exhaustive list of available functions [is available here]('./template-functions).**

## Scripting with Anko

When Golang templating is not enough, you might want to write very advanced scripts to parse specific values, create ACLs or other things like that.

A dedicated action called Anko Script gives you this feature. 