
 Insert/Update/Delete data in structured schema

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Schema Variable Name** (var)|string|DbDescriptor|Name of the variable where schema is stored.|
|**Table Name** (tableName)|string|<no value>|Default table name used for manipulating rows. Free SQL queries can use other defined tables names|
|**Input Data** (input)|string|$|Use JSONPath to select input data from .Vars or .JsonBody (as a slice)|
|**Free SQL query** (global_sql)|textarea|<no value>|Free SQL Query. It is fed with the input data first value if there is one.|
|**Per-Row Command** (command)|Possible Values Below||SQL Command to apply on each row of input data|
|**&nbsp;&nbsp;&nbsp;&bull; Insert Row** (insert)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Upsert Row - Update on insertion conflict** (upsert)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&bull; Update - specify WHERE clause below** (update)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Keys** (keys)|string|<no value>|List of keys to use for updating, if input value does not have a primary key|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Additional Where** (where)|string|<no value>|Additional where clause to restrict update data, use {{.Vars.Row.FieldName}} to access current loop value.|
|**&nbsp;&nbsp;&nbsp;&bull; Delete Row** (delete)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Keys** (keys)|string|<no value>|List of keys to use for updating, if input value does not have a primary key|
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Additional Where** (where)|string|<no value>|Additional where clause to restrict update data|
|**&nbsp;&nbsp;&nbsp;&bull; Free SQL query** (sql)|command|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- SQL** (free)|textarea|<no value>|Free SQL Query|





