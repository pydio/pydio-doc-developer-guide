






 
Check the remote server to see if there are available binaries  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Channel** | Channel name | _string_ |   
**CurrentVersion** | Current version of the application | _string_ |   
**GOARCH** | Current GOARCH | _string_ |   
**GOOS** | Current GOOS | _string_ |   
**LicenseInfo** | For enterprise version, info about the current license | _object_ |   
**PackageName** | Name of the currently running application | _string_ |   
**ServiceName** | Not Used : specific service to get updates for | _string_ |   


### Body Example
```
{
  "Channel": "string",
  "CurrentVersion": "string",
  "GOARCH": "string",
  "GOOS": "string",
  "LicenseInfo": {},
  "PackageName": "string",
  "ServiceName": "string"
}
```






### Response Example (200)
Response Type /definitions/updateUpdateResponse

```
{
  "AvailableBinaries": [
    {
      "BinaryArch": "string",
      "BinaryChecksum": "string",
      "BinaryHashType": "string",
      "BinaryOS": "string",
      "BinarySignature": "string",
      "BinarySize": "string",
      "BinaryURL": "string",
      "ChangeLog": "string",
      "Description": "string",
      "IsPatch": true,
      "Label": "string",
      "License": "string",
      "PackageName": "string",
      "PatchAlgorithm": "string",
      "ReleaseDate": 10,
      "ServiceName": "string",
      "Status": "string",
      "Version": "string"
    }
  ],
  "Channel": "string"
}
```


