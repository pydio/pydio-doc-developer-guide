






 
Create a template from a specific node  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Policies** | Optional policies | _array_ |   
**RefNodeUuid** |  | _string_ |   
**TplLabel** |  | _string_ |   


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
  "RefNodeUuid": "string",
  "TplLabel": "string"
}
```






### Response Example (200)
Response Type /definitions/entCreateNodeTemplateResponse

```
{
  "Success": true,
  "TemplateUuid": "string"
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
