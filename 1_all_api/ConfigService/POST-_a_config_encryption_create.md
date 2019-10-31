






 
Create a new master key  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**KeyID** | Create a key with this ID | _string_ |   
**Label** | Provide label for the newly created key | _string_ |   


### Body Example
```
{
  "KeyID": "string",
  "Label": "string"
}
```






### Response Example (200)
Response Type /definitions/encryptionAdminCreateKeyResponse

```
{
  "Success": true
}
```


