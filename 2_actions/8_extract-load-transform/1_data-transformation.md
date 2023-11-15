
 Transform data (input, JSON, or CSV) into JSON, XLSX or CSV

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Data input** (input)|select, possible values: Main Input (use selector for e.g $.Users...) (input),<br/>JsonBody (jsonbody),<br/>Raw Data / json-encoded (raw/json),<br/>Raw Data / csv-encoded (raw/csv),<br/>StringBody / json-encoded (stringbody)|jsonbody|Source used to compute input data. Must be directly a slice, or you can use a Selector to point to a slice.<br/><br/> Use Main Input and Root Selector $.Vars.VarName to access a runtime variable.|
|**Root Selector (jsonpath)** (selector)|string|<no value>|If the input is **not already a list (slice)**, use this selector to point to a list inside the input object.|
|**** ()|legend|<no value>|[XLSX Only] Sheet and Formulas|
|**Sheet Name** (sheet)|string|Data|Excel Sheet Name|
|**** ()|legend|<no value>|[CSV Only] Formatting|
|**CSV separator** (csv-separator)|string|,|Separator character for CSV input / output|
|**Output Format** (format)|Possible Values Below|json|Format for saving after transformation|
|**&nbsp;&nbsp;&nbsp;&bull; JSON (JsonBody)** (json)|format|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Object (Variable)** (jsonvar)|format|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Variable Name** (varName)|string|<no value>|Name of the output variable|
|**&nbsp;&nbsp;&nbsp;&bull; CSV (RawBody)** (csv)|format|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; XLSX (RawBody)** (xlsx)|format|<no value>||
|**Column Name** (columns.name)|string|<no value>|Column Name|
|**Selector (jsonpath or template)** (columns.jsonpath)|string|<no value>|Jsonpath Selector (applied to input)|
|**Data Format** (columns.dataformat)|select, possible values: String (string),<br/>Integer (int64) (number),<br/>Float (float64) (float),<br/>Date (string) (date),<br/>Date (timestamp) (stamp),<br/>Boolean (true/false) (bool)|<no value>|Make sure output is in the correct format|
|**Expander** (columns.expand)|string||Apply this selector on the expanded values|
|**[XSLX] Cell Width** (columns.cellwidth)|integer|<no value>|Specify cell width|
|**Column Letter and $.Current or $.Next for row** (formulas.formula_column)|string|<no value>|Cell Position|
|**Formula (use $.First, $.Last, $.Length)** (formulas.formula)|string|<no value>|Formula|
|**Compute In-Place and Export As...** (formulas.compute)|string|<no value>|Compute|



### Expected Input
JSON, Raw or CSV Body


### Expected Input
JSON, XLSX or CSV Body


