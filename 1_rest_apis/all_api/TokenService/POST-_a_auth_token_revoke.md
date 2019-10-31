






 
Revoke a JWT token  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**TokenId** | Pass a specific Token ID to be revoked. If empty, request will use current JWT | _string_ |   


### Body Example
```
{
  "TokenId": "string"
}
```






### Response Example (200)
Response Type /definitions/restRevokeResponse

```
{
  "Message": "string",
  "Success": true
}
```


