
 Replace placeholders inside DOCX document

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Break on Error** (breakOnError)|boolean|true|Whether to break or ignore DOCX-specific errors|
|**Input Data or Node** (reader)|Possible Values Below|lastOutputRaw|Input must be valid DOCX data|
|**&nbsp;&nbsp;&nbsp;&bull; Incoming Data from LastOutput.RawBody** (lastOutputRaw)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Input Node** (inputNode)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Custom Path** (customPath)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Custom Path** (reader_alternatePath)|string|<no value>|Set path here if you want to override {{.Node.Path}}|
|**Placeholder Key** (fields.key)|string||This key will be searched inside the document as {key}|
|**Placeholder Value** (fields.value)|string||This is the final value that will be updated inside the document|
|**Attach Output To...** (output)|Possible Values Below|raw|Method for passing the output to the next action, may depend on the data format|
|**&nbsp;&nbsp;&nbsp;&bull; Raw Body (binary)** (raw)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Variable** (varBinary)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Name** (varName)|string|<no value>|Variable Name|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Data Type** (varType)|select, possible values: String (dump as string) (string),<br/>Object (decode from JSON) (object),<br/>Array (decode from JSON) (array),<br/>Binary (no conversion) (binary)|string|Try to decode data|



### Expected Input
Docx valid data or file


### Expected Input
Updated docx data


