
Check current license statistics and send alerts.

[:image:1_preset_jobs/capture-read-license-stats.png]

This job is a good demonstration of using gRPC request to an internal Cells service, which result is returned in JSON format, 
then using Go Template with `gval` function to compute percentage of license usage. 

One can eventually append a "Send Email" action
at the end to alert administrator that license limits are soon to be reached.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ExpirationDays|integer|30|false|Check that license does not expire in less than XX days.|
|UsersUsage|integer|90|false|Check that less that there are currently less than  XX% of allowed users.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Read License Stats||Check current license statistics and send alerts||mdi mdi-certificate",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "License Stats",
      "Parameters": {
        "method": "LicensingService.LicenseStats",
        "request": "{}",
        "service": "pydio.grpc.license"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Alert #users",
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "anR7e2d2YWwgIiRbMF0uQWN0aXZlVXNlcnMgLyAkWzBdLkxpY2Vuc2UuTWF4VXNlcnMgPiAkWzFdLzEwMCIgLkxhc3RPdXRwdXQuSnNvbkFzVmFsdWUuTWFwIC5Kb2JQYXJhbWV0ZXJzLlVzZXJzVXNhZ2V9fQ=="
                }
              ]
            },
            "Label": "90% of users"
          },
          "Parameters": {
            "message": "Users usage {{.LastOutput.JsonAsValue.Map | gval \"$[0].ActiveUsers / $[0].License.MaxUsers * 100\"}}%",
            "taskLogger": "true"
          }
        },
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Alert Date",
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "atQBe3skaG91cnM6PSBndmFsICIkWzBdKjI0IiAuSm9iUGFyYW1ldGVycy5FeHBpcmF0aW9uRGF5c319e3skbW9kOj0gY2F0ICRob3VycyAiaCIgfCBub3NwYWNlfX17eyRsaW1pdCA6PSBub3d8ZGF0ZV9tb2RpZnkgJG1vZHx1bml4RXBvY2h9fXt7Z3ZhbCAiJFswXS5MaWNlbnNlLkV4cGlyZVRpbWUgPCAkWzFdIiAuTGFzdE91dHB1dC5Kc29uQXNWYWx1ZS5NYXAgJGxpbWl0fX0="
                }
              ]
            },
            "Label": "Check Expiration Date"
          },
          "Parameters": {
            "message": "License will expire in less than {{.JobParameters.ExpirationDays}} days (on {{.LastOutput.JsonAsValue.Map.License.ExpireTime | fromStamp | date \"2006-01-02\" }})",
            "taskLogger": "true"
          }
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "ExpirationDays",
      "Description": "Check that license does not expire in less than XX days.",
      "Value": "30",
      "Type": "integer"
    },
    {
      "Name": "UsersUsage",
      "Description": "Check that less that there are currently less than  XX% of allowed users.",
      "Value": "90",
      "Type": "integer"
    }
  ]
}
```
