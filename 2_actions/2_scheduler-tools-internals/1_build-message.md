
 Create a message using templates and pass it to the next actions. Templates can use if/else structures to build different output based on the input.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Message** (message)|textarea|<no value>|Message to be appended to the output. You can use templating using the {{.Var}} syntax|
|**Output Target** (ctype)|select, possible values: StringBody (string), JsonBody (json)|string|Output can be sent as StringBody or JSON Body. It can then be accessed by following actions or filters using {{.LastOutput.StringBody}}.|





