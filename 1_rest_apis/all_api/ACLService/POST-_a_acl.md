






 
Search Acls  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**CountOnly** | Return counts only, no actual results | _boolean_ |   
**GroupBy** | Group results | _integer_ |   
**Limit** | Limit the number of results | _string_ |   
**Offset** | Start listing at a given position | _string_ |   
**Operation** | Single queries will be combined using this operation AND or OR logic | _#/definitions/serviceOperationType_ |   
**Queries** | Atomic queries that will be combined using the OperationType (AND or OR) | _array_ |   


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
      "Actions": [
        {
          "Name": "string",
          "Value": "string"
        }
      ],
      "NodeIDs": [
        "string"
      ],
      "RoleIDs": [
        "string"
      ],
      "WorkspaceIDs": [
        "string"
      ],
      "not": true
    }
  ]
}
```






### Response Example (200)
Response Type /definitions/restACLCollection

```
{
  "ACLs": [
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
  ],
  "Total": 10
}
```


