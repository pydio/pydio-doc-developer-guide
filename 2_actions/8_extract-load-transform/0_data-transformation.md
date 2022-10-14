
 Transform data (input, JSON, or CSV) into JSON, XLSX or CSV

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Data input** (input)|select, possible values: Main Input (use selector for e.g $.Users...) (input), JsonBody (jsonbody), Raw Data / json-encoded (raw/json), Raw Data / csv-encoded (raw/csv), StringBody / json-encoded (stringbody)|jsonbody|Source used to compute input data|
|**Root Selector (jsonpath)** (selector)|string|<no value>|Pre-select a collection of items with jsonpath|
|**Output Format** (format)|select, possible values: JSON (JsonBody) (json), CSV (RawBody) (csv), XLSX (RawBody) (xlsx)|json|Format for saving after transformation|
|**Column Name** (name)|string|<no value>|Column Name|
|**CSV separator** (csv-separator)|string|,|Separator character for CSV input / output|



### Expected Input
JSON, Raw or CSV Body


### Expected Input
JSON, XLSX or CSV Body


