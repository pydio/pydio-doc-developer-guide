






 
List all defined versioning policies  


No Parameters



### Response Example (200)
Response Type /definitions/restVersioningPolicyCollection

```
{
  "Policies": [
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
  ]
}
```


