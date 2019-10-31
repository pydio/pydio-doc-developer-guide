






 
Compute relation of context user with another user  


### Path Parameters

 - **UserId** (_string, required_) 




### Response Example (200)
Response Type /definitions/restRelationResponse

```
{
  "BelongsToTeams": [
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
  "SharedCells": [
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
  ]
}
```


