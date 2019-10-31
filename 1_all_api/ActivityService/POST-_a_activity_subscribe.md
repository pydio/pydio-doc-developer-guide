






 
Manage subscriptions to other users/nodes feeds  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Events** | List of events to listen to | _array_ |   
**ObjectId** | If of the owner | _string_ |   
**ObjectType** | Type of owner | _#/definitions/activityOwnerType_ |   
**UserId** | Id of the user for this subscription | _string_ |   


### Body Example
```
{
  "Events": [
    "string"
  ],
  "ObjectId": "string",
  "ObjectType": "string",
  "UserId": "string"
}
```






### Response Example (200)
Response Type /definitions/activitySubscription

```
{
  "Events": [
    "string"
  ],
  "ObjectId": "string",
  "ObjectType": "string",
  "UserId": "string"
}
```


