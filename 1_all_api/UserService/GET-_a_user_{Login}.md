






 
Get a user by login  


### Path Parameters

 - **Login** (_string, required_) 




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


