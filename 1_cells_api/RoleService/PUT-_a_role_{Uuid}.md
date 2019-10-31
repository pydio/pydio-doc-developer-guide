






 
Create or update a Role  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**AutoApplies** | List of profiles (standard, shared, admin) on which the role will be automatically applied | _array_ |   
**ForceOverride** |  | _boolean_ |   
**GroupRole** | Whether this role is attached to a Group object | _boolean_ |   
**IsTeam** | Whether this role represents a user team or not | _boolean_ |   
**Label** | Label of this role | _string_ |   
**LastUpdated** | Last modification date of the role | _integer_ |   
**Policies** | List of policies for securing this role access | _array_ |   
**PoliciesContextEditable** | Whether the policies resolve into an editable state | _boolean_ |   
**UserRole** | Whether this role is attached to a User object | _boolean_ |   
**Uuid** | Unique identifier of this role | _string_ |   


### Body Example
```
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
```






### Response Example (200)
Response Type /definitions/idmRole

```
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
```


