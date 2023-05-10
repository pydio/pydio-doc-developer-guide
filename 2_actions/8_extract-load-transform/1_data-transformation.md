
 Transform data (input, JSON, or CSV) into JSON, XLSX or CSV

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Data input** (input)|select, possible values: Main Input (use selector for e.g $.Users...) (input),<br/>JsonBody (jsonbody),<br/>Raw Data / json-encoded (raw/json),<br/>Raw Data / csv-encoded (raw/csv),<br/>StringBody / json-encoded (stringbody)|jsonbody|Source used to compute input data|
|**Root Selector (jsonpath)** (selector)|string|<no value>|Pre-select a collection of items with jsonpath|
|**Output Format** (format)|select, possible values: JSON (JsonBody) (json),<br/>CSV (RawBody) (csv),<br/>XLSX (RawBody) (xlsx)|json|Format for saving after transformation|
|**Column Name** (name)|string|<no value>|Column Name|
|**** ()|legend|<no value>|[XLSX Only] Sheet and Formulas|
|**Sheet Name** (sheet)|string|Data|Excel Sheet Name|
|**Column Letter and $.Current or $.Next for row** (formula_column)|string|<no value>|Cell Position|
|**** ()|legend|<no value>|[CSV Only] Formatting|
|**CSV separator** (csv-separator)|string|,|Separator character for CSV input / output|



### Expected Input
JSON, Raw or CSV Body


### Expected Input
JSON, XLSX or CSV Body


