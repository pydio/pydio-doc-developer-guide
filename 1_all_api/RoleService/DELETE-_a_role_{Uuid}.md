






 
Delete a Role by ID  


### Path Parameters

 - **Uuid** (_string, required_) 




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


