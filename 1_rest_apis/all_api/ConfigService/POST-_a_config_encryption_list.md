






 
List registered master keys  


### Body Parameters

Name | Description | Type | Required
---|---|---|---






### Response Example (200)
Response Type /definitions/encryptionAdminListKeysResponse

```
{
  "Keys": [
    {
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
  ]
}
```


