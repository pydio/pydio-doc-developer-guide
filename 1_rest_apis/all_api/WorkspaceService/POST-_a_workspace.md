






 
Search workspaces on certain keys  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**CountOnly** | Return counts only, no actual results | _boolean_ |   
**GroupBy** | Group results | _integer_ |   
**Limit** | Limit the number of results | _string_ |   
**Offset** | Start listing at a given position | _string_ |   
**Operation** | Single queries will be combined using this operation AND or OR logic | _#/definitions/serviceOperationType_ |   
**Queries** | Atomic queries that will be combined using the OperationType (AND or OR) | _array_ |   
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
      "description": "string",
      "label": "string",
      "not": true,
      "scope": "string",
      "slug": "string",
      "uuid": "string"
    }
  ],
  "ResourcePolicyQuery": {
    "Type": "string",
    "UserId": "string"
  }
}
```






### Response Example (200)
Response Type /definitions/restWorkspaceCollection

```
{
  "Total": 10,
  "Workspaces": [
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


