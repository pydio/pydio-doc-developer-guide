






 
Just save a user roles, without other datas  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Attributes** | A free list of attributes | _object_ |   
**GroupLabel** | Label of the group, field is empty for users | _string_ |   
**GroupPath** | Path to the parent group | _string_ |   
**IsGroup** | Whether this object is a group or a user | _boolean_ |   
**Login** | User login is used to connect, field is empty for groups | _string_ |   
**OldPassword** | OldPassword must be set when a user updates her own password | _string_ |   
**Password** | Password can be passed to be updated (but never read back), field is empty for groups | _string_ |   
**Policies** | Policies securing access to this user | _array_ |   
**PoliciesContextEditable** |  | _boolean_ |   
**Roles** | List of roles applied to this user or group | _array_ |   
**Uuid** | User unique identifier | _string_ |   


### Body Example
```
{
  "Attributes": {},
  "GroupLabel": "string",
  "GroupPath": "string",
  "IsGroup": true,
  "Login": "string",
  "OldPassword": "string",
  "Password": "string",
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
  "Roles": [
    {
      "AutoApplies": [
        "string"
      ],
      "ForceOverride": true,
      "GroupRole": true,
      "IsTeam": true,
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
      "UserRole": true,
      "Uuid": "string"
    }
  ],
  "Uuid": "string"
}
```






### Response Example (200)
Response Type /definitions/idmUser

```
{
  "Attributes": {},
  "GroupLabel": "string",
  "GroupPath": "string",
  "IsGroup": true,
  "Login": "string",
  "OldPassword": "string",
  "Password": "string",
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
  "Roles": [
    {
      "AutoApplies": [
        "string"
      ],
      "ForceOverride": true,
      "GroupRole": true,
      "IsTeam": true,
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
      "UserRole": true,
      "Uuid": "string"
    }
  ],
  "Uuid": "string"
}
```


