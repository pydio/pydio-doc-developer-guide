






 
Updates policies associated to the underlying workspace for a Cell or a ShareLink  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Policies** | List of policies to update | _array_ |   
**Uuid** | Cell or Link UUID | _string_ |   


### Body Example
```
{
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
  "Uuid": "string"
}
```






### Response Example (200)
Response Type /definitions/restUpdateSharePoliciesResponse

```
{
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
  "Success": true
}
```


