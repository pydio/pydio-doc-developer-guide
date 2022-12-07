
Query objects service to get statistics about storage.

[:image:1_preset_jobs/capture-storage-usage.png]

Like for the License Stats, this flow is a good demonstration of using gRPC request to an internal Cells service, which result is returned in JSON format,
then using Go Template with `gval` function to compute percentage of storage usage. Note that "storage" here is seens as Cells "objects" service running for each (or shared by) datasources. 

By default, the "Send Email" action at the end (to alert administrator that storage limits are soon to be reached) is in Bypass mode and has to be activated.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ObjectsService|text|local1|true|Objects service to check.|
|Threshold|integer|5|true|Threshold in percent.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Storage Usage||Query objects service to get statistics about storage||mdi mdi-gauge",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Stats Request",
      "Parameters": {
        "method": "ObjectsEndpoint.StorageStats",
        "request": "{}",
        "service": "pydio.grpc.data.objects.{{.JobParameters.ObjectsService}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Storage OK",
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "am97e2d2YWwgIiRbMF0uU3RhdHMuRnJlZSAvICRbMF0uU3RhdHMuVG90YWwgKiAxMDAgPiAkWzFdIiAuTGFzdE91dHB1dC5Kc29uQXNWYWx1ZS5NYXAgLkpvYlBhcmFtZXRlcnMuVGhyZXNob2xkfX0="
                }
              ]
            },
            "Label": "Analyze Result"
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"FreeCondition\"}",
            "message": "{{.LastOutput.JsonAsValue.Map.Stats.Free | humanBytes}} /  {{.LastOutput.JsonAsValue.Map.Stats.Total | humanBytes}}",
            "taskLogger": "true"
          },
          "FailedFilterActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Storage Almost FULL",
              "Parameters": {
                "fieldname": "{\"@value\":\"FreeCondition\"}",
                "message": "Storage Full ! \n{{.LastOutput.JsonAsValue.Map.Stats.Free | humanBytes}} /  {{.LastOutput.JsonAsValue.Map.Stats.Total | humanBytes}}",
                "taskLogger": "true"
              },
              "ChainedActions": [
                {
                  "ID": "actions.cmd.sendmail",
                  "Bypass": true,
                  "Parameters": {
                    "fieldname": "{\"@value\":\"FreeCondition\"}",
                    "message": "Storage left is \u003c {{.JobParameters.Threshold}}% !\n\nFree Space is {{.LastOutput.JsonAsValue.Map.Stats.Free | humanBytes}} on a total of  {{.LastOutput.JsonAsValue.Map.Stats.Total | humanBytes}}",
                    "subject": "Storage left is \u003c {{.JobParameters.Threshold}}% ! ",
                    "to-mail": "",
                    "to-user": "admin"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "ObjectsService",
      "Description": "Objects service to check.",
      "Value": "local1",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Threshold",
      "Description": "Threshold in percent.",
      "Value": "5",
      "Mandatory": true,
      "Type": "integer"
    }
  ]
}
```
