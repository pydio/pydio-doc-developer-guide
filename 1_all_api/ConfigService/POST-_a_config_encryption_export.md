






 
Export a master key for backup purpose, protected with a password  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**KeyID** | Id of the key to export | _string_ |   
**StrPassword** | Associated password as string | _string_ |   


### Body Example
```
{
  "KeyID": "string",
  "StrPassword": "string"
}
```






### Response Example (200)
Response Type /definitions/encryptionAdminExportKeyResponse

```
{
  "Key": {
    "Content": "string",
    "CreationDate": 10,
    "ID": "string",
    "Info": {
      "Exports": [
        {
          "By": "string",
          "Date": 10
        }
      ],
      "Imports": [
        {
          "By": "string",
          "Date": 10
        }
      ]
    },
    "Label": "string",
    "Owner": "string"
  }
}
```


