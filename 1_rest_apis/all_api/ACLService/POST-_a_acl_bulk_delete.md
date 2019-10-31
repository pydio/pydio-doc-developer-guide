






 
Delete one or more ACLs  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Action** | Action on which this ACL provides control | _#/definitions/idmACLAction_ |   
**ID** | Unique ID of this ACL | _string_ |   
**NodeID** | Associated Node | _string_ |   
**RoleID** | Associated Role | _string_ |   
**WorkspaceID** | Associated Workspace | _string_ |   


### Body Example
```
{
  "Action": {
    "Name": "string",
    "Value": "string"
  },
  "ID": "string",
  "NodeID": "string",
  "RoleID": "string",
  "WorkspaceID": "string"
}
```






### Response Example (200)
Response Type /definitions/restDeleteResponse

```
{
  "NumRows": "string",
  "Success": true
}
```


