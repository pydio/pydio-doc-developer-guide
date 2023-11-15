
 Write contents to file (inside a datasource or locally)

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Target File Path** (target_file)|string|<no value>|Full path of the file to write, either inside a datasource or on local FS.|
|**Data Input** (reader)|Possible Values Below|free|Select how to load data that will be written.|
|**&nbsp;&nbsp;&nbsp;&bull; Free Content - set below** (free)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Free Content** (reader_contents)|textarea|<no value>|Type in the content to be used|
|**&nbsp;&nbsp;&nbsp;&bull; Input Node** (inputNode)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Custom Path** (customPath)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Custom Path** (reader_alternatePath)|string|<no value>|Set path here if you want to override {{.Node.Path}}|
|**&nbsp;&nbsp;&nbsp;&bull; Incoming Data from LastOutput** (lastOutput)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- LastOutput Field** (reader_lastOutputField)|select, possible values: RawBody (rawbody),<br/>JsonBody (jsonbody),<br/>StringBody (stringbody),<br/>ErrorString (errorstring)|rawbody|Pick one of JsonBody, RawBody, StringBody or ErrorString|
|**&nbsp;&nbsp;&nbsp;&bull; Variable Name** (var)|reader|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Variable Name** (reader_varName)|string|<no value>|Name of the variable (will look for {{.Vars.VarName}}). String or numbers will be written as is, other types will be converted to JSON automatically.|



### Expected Input
Standard input message


### Expected Input
New message containing a Success flag


