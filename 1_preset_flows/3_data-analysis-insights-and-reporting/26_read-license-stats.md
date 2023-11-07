
Check current license statistics and send alerts.

[:image:1_preset_flows/capture-read-license-stats.png]

This Flow performs a gRPC request to an internal Cell service and analyze its result to detect current license usage.

### How It Works

#### gRPC Request

The first step is sending a gRPC call to the `pydio.grpc.license` service. The gRPC method is identified by the three parts:  
`{packageName}.{ProtobufService}.{ProtobufMethod}`, here `cert.LicensingService.LicenseStats`. The package name may be ignored but this can lead to conflict if multiple services have the same name in different packages.

This requests is performed in JSON and returns JSON as well.

#### JSON Evaluation

The combination of Go Template and the `gval` function allows us to compute the percentage of license usage.  

Here is a breakdown of the percentage of users computation: 
* `.LastOutput.JsonAsValue.Map | gval` 
   - Load JSON as an Object (for Javascript, which means a map[string]interface for GO)
   - Feed this Object to the gval evaluator below
* `"$[0].ActiveUsers / $[0].License.MaxUsers * 100"`
   - Object is always passed as $[0], then keys are access as normal JSONPath
   - gval provides basic compute operations (/, +, -, *, etc...)
   

The flow should be expanded with a "Send Email" action to alert Administrator that license limits are soon to be reached.

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
  "Label": "Read License Stats",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Check current license statistics and send alerts",
    "Icon": "mdi mdi-certificate",
    "TplCategory": "analytics",
    "Usage": "This Flow performs a gRPC request to an internal Cell service and analyze its result to detect current license usage.\n\n### How It Works\n\n#### gRPC Request\n\nThe first step is sending a gRPC call to the `pydio.grpc.license` service. The gRPC method is identified by the three parts:  \n`{packageName}.{ProtobufService}.{ProtobufMethod}`, here `cert.LicensingService.LicenseStats`. The package name may be ignored but this can lead to conflict if multiple services have the same name in different packages.\n\nThis requests is performed in JSON and returns JSON as well.\n\n#### JSON Evaluation\n\nThe combination of Go Template and the `gval` function allows us to compute the percentage of license usage.  \n\nHere is a breakdown of the percentage of users computation: \n* `.LastOutput.JsonAsValue.Map | gval` \n   - Load JSON as an Object (for Javascript, which means a map[string]interface for GO)\n   - Feed this Object to the gval evaluator below\n* `\"$[0].ActiveUsers / $[0].License.MaxUsers * 100\"`\n   - Object is always passed as $[0], then keys are access as normal JSONPath\n   - gval provides basic compute operations (/, +, -, *, etc...)\n   \n\nThe flow should be expanded with a \"Send Email\" action to alert Administrator that license limits are soon to be reached."
  },
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
