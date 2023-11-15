
 Markdown Actions: convert MD to HTML or PDF

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Additional Header** (header)|textarea|<no value>|Additional Header printed after title and before contents, in Markdown (will be converted as content)|
|**Additional Footer** (footer)|textarea|<no value>|Additional Header printed after contents, in Markdown (will be converted as content)|
|**Base URL** (baseURL)|string|<no value>|For images or links, prepend this BaseURL if it is defined|
|**Markdown Source** (source)|Possible Values Below|lastOutputRaw|Where to get markdown content from. Output is always sent as RawBinary and must be written to file with another action.|
|**&nbsp;&nbsp;&nbsp;&bull; Incoming Data from LastOutput.RawBody** (lastOutputRaw)|source|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Input Node** (inputNode)|source|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Custom Path** (customPath)|source|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Custom Path** (reader_alternatePath)|string|<no value>|Set path here if you want to override {{.Node.Path}}|
|**&nbsp;&nbsp;&nbsp;&bull; Variable Name** (var)|source|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Variable Name** (reader_varName)|string|<no value>|Name of the variable (will look for {{.Vars.VarName}}). String or numbers will be written as is, other types will be converted to JSON automatically.|
|**&nbsp;&nbsp;&nbsp;&bull; Free Content - set below** (free)|source|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Free Content** (reader_contents)|textarea|<no value>|Type in the content to be used|
|**Command** (command)|Possible Values Below|html|Operation to apply|
|**&nbsp;&nbsp;&nbsp;&bull; Convert To HTML** (html)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Complete HTML Page** (complete)|boolean|true|Print a full HTML document, otherwise only the converted markdown part|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- HTML Title** (title)|string|<no value>|HTML Title of the Page (not printed in the document, use the Header bloc if you wish to do so)|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Generate ToC** (printTOC)|boolean|<no value>|Generate a Table Of Contents and append it after the title|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Custom CSS** (customCSS)|textarea|<no value>|Replace embedded default CSS|
|**&nbsp;&nbsp;&nbsp;&bull; Convert To PDF** (pdf)|command|<no value>||





