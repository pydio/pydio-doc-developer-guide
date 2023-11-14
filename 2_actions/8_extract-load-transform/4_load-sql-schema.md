
 Load a DB-like schema inferred from data structure

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Output Variable Name** (var)|string|DbDescriptor|Name of the variable where schema is stored for further usage. Use {{.Vars.YourVarName}} in next steps|
|**Path of the DB file** (load)|string|<no value>|Leave empty for an ephemeral DB, it will create a temporary file that will last for this run only. If a path is specified but does not exists, a new DB is created.|
|**Table Name** (tableName)|string|<no value>|Name of the SQL table|
|**Existing Schema (JSON)** (jsonSchema)|textarea|<no value>|Load Schema description from an existing JSON (use Go template to target a VarName or JSONBody)|
|**Infer from input** (infer)|string||Use JSONPath to evaluate incoming data. Root object ($) contains $.JsonBody, $.Vars and $.Input|
|**Name** (col_name)|string|<no value>|Column Name|




