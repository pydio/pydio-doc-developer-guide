
 Perform select queries in SQL schema

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Schema Variable Name** (var)|string|DbDescriptor|Name of the variable where schema is stored.|
|**SQL SELECT query** (select_sql)|textarea|<no value>|SQL SELECT Query.|
|**Expected Format** (format)|Possible Values Below|object|Try to map request output to a specific format|
|**&nbsp;&nbsp;&nbsp;&bull; Generic Object** (object)|format|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Known Schema** (schema)|format|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Table Name** (tableName)|string|<no value>|Table schema for parsing rows selection.|
|**&nbsp;&nbsp;&nbsp;&bull; Integer for count(*) queries** (int64)|format|<no value>||
|**Output Format** (output)|Possible Values Below|jsonbody|How to store output|
|**&nbsp;&nbsp;&nbsp;&bull; JsonBody** (jsonbody)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Variable** (variable)|output|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Variable Name** (outputVar)|string|<no value>|Name of the variable to store|





