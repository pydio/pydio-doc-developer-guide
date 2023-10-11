
 Compute a list of accessible workspaces for one user

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Output Export and Formatting** (outputFormat)|select, possible values: JSON attached to Output.JsonBody (json-body),<br/>Users attributes - One user copy per workspace (expand-wsp),<br/>User unique attribute - All permissions joined (join-attribute)|json-body|How permissions are exported for further processing|
|**Filter with Workspaces from Input** (inputWorkspacesFilter)|boolean|false|Export only workspaces that are in the Input. Otherwise export all workspaces|
|**Ignore UX Internals (homepage, directory, etc)** (ignoreWorkspacesInternal)|boolean|true|Do not show internal fake workspaces|
|**Attribute Prefix when Storing in User Attributes** (attributePrefix)|string|permission:|When storing in User Attributes, prefix for all attribute key(s)|
|**Delimiter used for building unique string** (delimiter)|string|;|Delimiter used for building unique string|





