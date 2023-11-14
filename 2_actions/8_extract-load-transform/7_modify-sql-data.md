
 Insert/Update/Delete data in structured schema

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Schema Variable Name** (var)|string|DbDescriptor|Name of the variable where schema is stored.|
|**Table Name** (tableName)|string|<no value>|Default table name used for manipulating rows. Free SQL queries can use other defined tables names|
|**Input Data** (input)|string|$|Use JSONPath to select input data from .Vars or .JsonBody (as a slice)|
|**Free SQL query** (global_sql)|textarea|<no value>|Free SQL Query. It is fed with the input data first value if there is one.|





