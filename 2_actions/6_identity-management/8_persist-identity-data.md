
 Create or update users, workspaces, roles or ACLs passed in input

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Object Type** (objectTypes)|select, possible values: Users (User),<br/>Workspaces (Workspace),<br/>ACLs (Acl),<br/>Roles (Role)|Users|Type of objects to extract from input and persist to system.|
|**Break on error** (breakOnError)|boolean|true|If persistence fails for one item, break immediately. Defaults to true for backward compatibility|



### Expected Input
One or more selection of Roles, Workspaces, ACLs or Users


### Expected Input
Updated selection of objects that have been saved (created or updated)


