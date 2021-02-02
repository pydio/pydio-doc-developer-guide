

Workspaces Selector is the building block used to build either Queries or Filters on Workspaces.

Interesting aspect of workspaces are their "Scope": it can be either "ADMIN" (standard workspaces created by admin), "ROOM" (Cells created by users) or "LINK" (public links created by users).
Also, please note that the LastUpdated field takes a comparator value (">10d", "<30d" where d is for days").


### Parameters
|Label (internal name)|Type|
|---|---|
|**Uuid** (uuid)|string|
|**Label** (label)|string|
|**Description** (description)|string|
|**Slug** (slug)|string|
|**Workspace Type** (scope)|select, possible values: Any (ANY), Workspace (ADMIN), Cell (ROOM), Public Link (LINK)|
|**Last updated** (LastUpdated)|string|
|**Has Attribute** (HasAttribute)|string|
|**Attribute Name** (AttributeName)|string|
|**Attribute Value** (AttributeValue)|string|
|**not** (not)|boolean|

