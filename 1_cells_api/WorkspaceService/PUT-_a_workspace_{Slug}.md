






 
Create or update a workspace  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Attributes** | JSON-encoded list of attributes | _string_ |   
**Description** | Description of the workspace (max length 1000) | _string_ |   
**Label** | Label of the workspace (max length 500) | _string_ |   
**LastUpdated** | Last modification time | _integer_ |   
**Policies** | Policies for securing access | _array_ |   
**PoliciesContextEditable** | Context-resolved to quickly check if workspace is editable or not | _boolean_ |   
**RootNodes** | List of the Root Nodes in the tree that compose this workspace | _object_ |   
**RootUUIDs** | Quick list of the RootNodes uuids | _array_ |   
**Scope** | Scope can be ADMIN, ROOM (=CELL) or LINK | _#/definitions/idmWorkspaceScope_ |   
**Slug** | Slug is an url-compatible form of the workspace label, or can be freely modified (max length 500) | _string_ |   
**UUID** | Unique identifier of the workspace | _string_ |   


### Body Example
```
{
  "Attributes": "string",
  "Description": "string",
  "Label": "string",
  "LastUpdated": 10,
  "Policies": [
    {
      "Action": "string",
      "Effect": "string",
      "JsonConditions": "string",
      "Resource": "string",
      "Subject": "string",
      "id": "string"
    }
  ],
  "PoliciesContextEditable": true,
  "RootNodes": {},
  "RootUUIDs": [
    "string"
  ],
  "Scope": "string",
  "Slug": "string",
  "UUID": "string"
}
```






### Response Example (200)
Response Type /definitions/idmWorkspace

```
{
  "Attributes": "string",
  "Description": "string",
  "Label": "string",
  "LastUpdated": 10,
  "Policies": [
    {
      "Action": "string",
      "Effect": "string",
      "JsonConditions": "string",
      "Resource": "string",
      "Subject": "string",
      "id": "string"
    }
  ],
  "PoliciesContextEditable": true,
  "RootNodes": {},
  "RootUUIDs": [
    "string"
  ],
  "Scope": "string",
  "Slug": "string",
  "UUID": "string"
}
```


