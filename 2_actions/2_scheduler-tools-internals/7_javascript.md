
 User-defined Javascript code for manipulating action data.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Script Content** (script)|textarea, possible values: content-type:text/javascript|// Compute Output value using :
// + JsonBody: LastOutput.JsonBody unserialized,
// + Vars: Runtime variables,
// + Params: Action parameters defined below

Output = JsonBody|Javascript|
|**Name** (paramName)|string||Name of the parameter, can be used in script using Params["Name"]|



### Expected Input
Any input is passed and is made available as input variable to the script


### Expected Input
Output as updated by the script inside the output variable


