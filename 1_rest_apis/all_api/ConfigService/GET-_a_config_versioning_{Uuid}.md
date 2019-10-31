






 
Load a given versioning policy  


### Path Parameters

 - **Uuid** (_string, required_) 




### Response Example (200)
Response Type /definitions/treeVersioningPolicy

```
{
  "Description": "string",
  "IgnoreFilesGreaterThan": "string",
  "KeepPeriods": [
    {
      "IntervalStart": "string",
      "MaxNumber": 10
    }
  ],
  "MaxSizePerFile": "string",
  "MaxTotalSize": "string",
  "Name": "string",
  "Uuid": "string",
  "VersionsDataSourceBucket": "string",
  "VersionsDataSourceName": "string"
}
```


