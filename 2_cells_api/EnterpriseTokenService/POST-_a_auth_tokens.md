






 
List generated personal access tokens, eventually filtering by user  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**ByUser** |  | _string_ |   


### Body Example
```
{
  "ByUser": "string"
}
```






### Response Example (200)
Response Type /definitions/authPatListResponse

```
{
  "Tokens": [
    {
      "AutoRefreshWindow": 10,
      "CreatedAt": "string",
      "CreatedBy": "string",
      "ExpiresAt": "string",
      "Label": "string",
      "Scopes": [
        "string"
      ],
      "Type": "string",
      "UpdatedAt": "string",
      "UserLogin": "string",
      "UserUuid": "string",
      "Uuid": "string"
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.2.6 on 20-Apr-2021