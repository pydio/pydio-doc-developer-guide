
 Read file contents from the node passed as input

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Input Path - Leave empty for .Input.Node** (alt_input)|string|<no value>|This action reads from .Input.Nodes[0] by default, use this field to load a custom path|
|**Attach Output To...** (output)|Possible Values Below|raw|Method for passing the output to the next action, may depend on the data format|
|**&nbsp;&nbsp;&nbsp;&bull; Raw Body (binary)** (raw)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; String Body** (string)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Json Body (JSON-encoded Data)** (json)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Variable** (varBinary)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Name** (varName)|string|<no value>|Variable Name|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Data Type** (varType)|select, possible values: String (dump as string) (string),<br/>Object (decode from JSON) (object),<br/>Array (decode from JSON) (array),<br/>Binary (no conversion) (binary)|string|Try to decode data|
|**&nbsp;&nbsp;&nbsp;&bull; Map JSON Object to Variables** (vars)|output|<no value>||



### Expected Input
Selected Input Node


### Expected Input
Output message with either StringBody, JsonBody, or Variables


