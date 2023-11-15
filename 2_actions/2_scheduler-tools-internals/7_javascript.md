
 User-defined Javascript code for manipulating action data.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Script Content** (script)|textarea, possible values: content-type:text/javascript|// Compute Output value using :<br/>// + JsonBody: LastOutput.JsonBody unserialized,<br/>// + Vars: Runtime variables,<br/>// + Params: Action parameters defined below<br/><br/>Output = JsonBody|Javascript|
|**Name** (script-params.paramName)|string||Name of the parameter, can be used in script using Params["Name"]|
|**Value** (script-params.paramValue)|string||Value of the parameter, can use templating|
|**Output Format** (output)|Possible Values Below|jsonbody|Where to store output|
|**&nbsp;&nbsp;&nbsp;&bull; JsonBody** (jsonbody)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Variable** (variable)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Variable Name** (outputVar)|string|<no value>|Name of the variable to store|



### Expected Input
Any input is passed and is made available as input variable to the script


### Expected Input
Output as updated by the script inside the output variable


