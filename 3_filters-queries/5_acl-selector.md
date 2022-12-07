

ACL Selector is the building block used to build either Queries or Filters on ACL.

ACLs are Access Control flags that bind together a Node UUID, a Role UUID, a Workspace UUID and an ACLAction.


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Role Identifiers**|RoleIDs|string|Filter by one or more role UUID|
|**Workspace Identifiers**|WorkspaceIDs|string|Filter by one or more workspace UUID|
|**Node Identifiers**|NodeIDs|string|Filter by one or more node UUID|
|**not**|not|boolean|Internal - Negate query|
|**Name**|Name|string||

