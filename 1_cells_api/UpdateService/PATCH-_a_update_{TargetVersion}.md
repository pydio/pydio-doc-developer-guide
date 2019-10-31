






 
Apply an update to a given version  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**PackageName** | Name of the package if it's not the same as the current binary | _string_ |   
**TargetVersion** | Version of the target binary | _string_ |   


### Body Example
```
{
  "PackageName": "string",
  "TargetVersion": "string"
}
```






### Response Example (200)
Response Type /definitions/updateApplyUpdateResponse

```
{
  "Message": "string",
  "Success": true
}
```


