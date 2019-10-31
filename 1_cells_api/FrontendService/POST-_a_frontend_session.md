






 
Handle JWT  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**AuthInfo** | Data sent back by specific auth steps | _object_ |   
**ClientTime** | Time reference for computing jwt expiry | _integer_ |   
**Logout** | Kill session now | _boolean_ |   


### Body Example
```
{
  "AuthInfo": {},
  "ClientTime": 10,
  "Logout": true
}
```






### Response Example (200)
Response Type /definitions/restFrontSessionResponse

```
{
  "ExpireTime": 10,
  "JWT": "string",
  "Trigger": "string",
  "TriggerInfo": {}
}
```


