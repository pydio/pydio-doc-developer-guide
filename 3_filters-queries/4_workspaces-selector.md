

Workspaces Selector is the building block used to build either Queries or Filters on Workspaces.

Workspaces have an important "Scope" attribute: it can be either "ADMIN" (standard workspaces created by admin), "ROOM" (Cells created by users) or "LINK" (public links created by users).

The LastUpdated field takes a comparator value composed of a comparator and a Golang-like duration (e.g. ">10d", "<30d" where d is for days").


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Uuid**|uuid|string|Lookup by workspace Uuid|
|**Label**|label|string|Lookup by workspace Label|
|**Description**|description|string|Lookup by description|
|**Slug**|slug|string|Select workspace by slug|
|**Workspace Type**|scope|Any (ANY),<br/>Workspace (ADMIN),<br/>Cell (ROOM),<br/>Public Link (LINK)|Restrict to a specific workspace type|
|**Last updated**|LastUpdated|string|Compared to workspace update date (Golang duration with a leading comparator < or >)|
|**Has Attribute**|HasAttribute|string|Lookup for the presence of a specific attribute, whatever its value|
|**Attribute Name**|AttributeName|string|Lookup for an attribute, to be used in combination with AttributeValue|
|**Attribute Value**|AttributeValue|string|Value used for comparison|
|**not**|not|boolean|Internal - Negate the query result|

