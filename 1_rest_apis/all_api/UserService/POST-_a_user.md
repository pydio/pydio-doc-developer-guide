






 
List/Search users  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**CountOnly** | Return counts only, no actual results | _boolean_ |   
**GroupBy** |  | _integer_ |   
**Limit** | Limit number of results | _string_ |   
**Offset** | Start listing at a given position | _string_ |   
**Operation** | Combine single queries with AND or OR logic | _#/definitions/serviceOperationType_ |   
**Queries** | Atomic queries that will be combined using the Operation Type (AND or OR) | _array_ |   
**ResourcePolicyQuery** | Policies queries to filter the search context | _#/definitions/restResourcePolicyQuery_ |   


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
      "AttributeAnyValue": true,
      "AttributeName": "string",
      "AttributeValue": "string",
      "FullPath": "string",
      "GroupPath": "string",
      "HasRole": "string",
      "Login": "string",
      "NodeType": "string",
      "Password": "string",
      "Recursive": true,
      "Uuid": "string",
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
Response Type /definitions/restUsersCollection

```
{
  "Groups": [
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
  ],
  "Total": 10,
  "Users": [
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
  ]
}
```


