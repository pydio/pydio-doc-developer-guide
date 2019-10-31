






 
Search Roles  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**CountOnly** | Return counts only, no actual results | _boolean_ |   
**GroupBy** | Group results by | _integer_ |   
**Limit** | Limit number of results | _string_ |   
**Offset** | Start listing at a given position | _string_ |   
**Operation** | Combine Single Queries with AND or OR | _#/definitions/serviceOperationType_ |   
**Queries** | List of atomic queries that will be combined using the Operation type (AND / OR) | _array_ |   
**ResourcePolicyQuery** | Policies query for specifying the search context | _#/definitions/restResourcePolicyQuery_ |   


### Body Example
```
{
  "CountOnly": true,
  "GroupBy": 10,
  "Limit": "string",
  "Offset": "string",
  "Operation": "string",
  "Queries": [
    {
      "HasAutoApply": true,
      "IsGroupRole": true,
      "IsTeam": true,
      "IsUserRole": true,
      "Label": "string",
      "Uuid": [
        "string"
      ],
      "not": true
    }
  ],
  "ResourcePolicyQuery": {
    "Type": "string",
    "UserId": "string"
  }
}
```






### Response Example (200)
Response Type /definitions/restRolesCollection

```
{
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
  ]
}
```


