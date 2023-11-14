
 Create a message using templates and pass it to the next actions. Templates can use if/else structures to build different output based on the input.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Message** (message)|textarea|<no value>|Message to be appended to the output. You can use templating using the {{.Var}} syntax|
|**Output Target** (ctype)|select, possible values: StringBody (string),<br/>JsonBody (json),<br/>Trigger Error (error)|string|Output can be sent as StringBody or JSON Body (then accessed by following actions or filters using {{.LastOutput.XXXBody}}) or trigger an Error.|
|**Name** (paramName)|string||Name of the variable, can be used later using {{.Vars.Name}}|





