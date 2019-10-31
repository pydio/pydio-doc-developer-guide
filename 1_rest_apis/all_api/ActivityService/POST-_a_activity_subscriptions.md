






 
Load subscriptions to other users/nodes feeds  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**ObjectIds** | Filter by object Ids | _array_ |   
**ObjectTypes** | Filter by type of objects | _array_ |   
**UserIds** | List of UserIds for which we want to list | _array_ |   


### Body Example
```
{
  "ObjectIds": [
    "string"
  ],
  "ObjectTypes": [
    "string"
  ],
  "UserIds": [
    "string"
  ]
}
```






### Response Example (200)
Response Type /definitions/restSubscriptionsCollection

```
{
  "subscriptions": [
    {
      "Events": [
        "string"
      ],
      "ObjectId": "string",
      "ObjectType": "string",
      "UserId": "string"
    }
  ]
}
```


