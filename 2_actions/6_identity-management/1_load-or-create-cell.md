
 Load or Create a Cell from scratch - Use Modify action to attach roots or users

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Output Variable Name** (outputVar)|string|Cell|Object is stored in a variable for the next action|
|**Load from inputs or create new** (behavior)|select, possible values: Find Cell on input Node or create one (node-create),<br/>Find Cell on input Node or fail (node-fail),<br/>Create blank Cell with Label/Description (no roots) (create),<br/>Load Cell from a specific UUID (set below) (uuid)|node-create|Choose how to load/create the Cell object|
|**New Cell Label** (create-label)|string|Automated Cell|Set a Label for this new Cell|
|**New Cell Description** (create-description)|string|<no value>|Set a description for this new Cell|
|**Load from UUID** (uuid)|string|<no value>|Pass an UUID to find Cell|
|**Expiration Date** (expirationDate)|integer|<no value>|Protect Cell with auto-expiration at a given date, use a timestamp|





