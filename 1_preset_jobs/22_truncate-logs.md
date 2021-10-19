
Truncate log databases to a given size every day at 6AM.

[:image:1_preset_jobs/capture-truncate-logs.png]

Housekeeping job to keep logs databases size under control. Can be applied to both pydio.grpc.log (system logs) and pydio.grpc.audit (audit logs) services.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SystemLogSize|integer|50|false|(MB) Size of logs to keep.|
|AuditLogSize|integer||false|(MB) Size of audit logs to keep. Leave empty to avoid truncating audit logs.|



### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Truncate Logs||Truncate log databases to a given size every day at 6AM||mdi mdi-delete-sweep",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Schedule": {
    "Iso8601Schedule": "R/2020-03-04T05:00:00.471Z/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.cmd.resync",
      "Label": "System Logs",
      "Parameters": {
        "dry-run": "false",
        "fieldname": "{\"@value\":\"FreeString\"}",
        "path": "truncate/{{.JobParameters.SystemLogSize | gval \"$[0] * 1024 * 1024\" | int64}}",
        "service": "pydio.grpc.log"
      }
    },
    {
      "ID": "actions.cmd.resync",
      "Label": "Audit Logs",
      "ActionOutputFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
              "value": "ajp7e2lmIC5Kb2JQYXJhbWV0ZXJzLkF1ZGl0TG9nU2l6ZX19dHJ1ZXt7ZWxzZX19ZmFsc2V7e2VuZH19"
            }
          ]
        },
        "Label": "Stop if AuditLogSize is empty"
      },
      "Parameters": {
        "dry-run": "false",
        "fieldname": "{\"@value\":\"FreeString\"}",
        "path": "truncate/{{.JobParameters.AuditLogSize | gval \"$[0] * 1024 * 1024\" | int64}}",
        "service": "pydio.grpc.audit"
      }
    }
  ],
  "Parameters": [
    {
      "Name": "SystemLogSize",
      "Description": "(MB) Size of logs to keep.",
      "Value": "50",
      "Type": "integer"
    },
    {
      "Name": "AuditLogSize",
      "Description": "(MB) Size of audit logs to keep. Leave empty to avoid truncating audit logs.",
      "Type": "integer"
    }
  ]
}
```
