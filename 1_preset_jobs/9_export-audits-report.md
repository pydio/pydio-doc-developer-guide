
Read audit report and transform to XLSX.

[:image:1_preset_jobs/capture-export-audits-report.png]

This flows uses an internal gRPC call to the Audit Reports service, transforms the JSON output into XLSX or CSV and stores it in a location of your choice.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|OutputPath|text|personal/admin/audit-export-{{now &#124; date &#34;2006-01-02&#34;}}.xlsx|true|Where to store the output.|
|RequestLimit|integer|1000|true|Limit for 'Load Report' request.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Export Audits Report||Read audit report and transform to XLSX||mdi mdi-file-excel",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Load Report",
      "Parameters": {
        "method": "reports.ReportsService.ListSharedResources",
        "request": "{\"Limit\": {{.JobParameters.RequestLimit}}}",
        "service": "pydio.grpc.reports"
      },
      "ChainedActions": [
        {
          "ID": "actions.etl.transform",
          "Label": "JSON to XLSX",
          "Parameters": {
            "csv-separator": ",",
            "expand": "",
            "expand_1": "$.Workspaces",
            "expand_2": "$.Workspaces",
            "expand_3": "$.Workspaces",
            "expand_4": "$.Workspaces",
            "expand_5": "$.Workspaces",
            "expand_6": "$.Workspaces",
            "format": "xlsx",
            "input": "jsonbody",
            "jsonpath": "$.Node.Path",
            "jsonpath_1": "$.Workspace.Scope",
            "jsonpath_2": "$.Workspace.Label",
            "jsonpath_3": "$.OwnerUser.Login",
            "jsonpath_4": "$.UsersReadCount",
            "jsonpath_5": "$.UsersWriteCount",
            "jsonpath_6": "$.Workspace.UUID",
            "name": "File/Folder",
            "name_1": "Resource Type",
            "name_2": "Label",
            "name_3": "Owner",
            "name_4": "Readable by",
            "name_5": "Writeable by",
            "name_6": "Workspace ID",
            "selector": "$.Resources"
          },
          "ChainedActions": [
            {
              "ID": "actions.tree.put",
              "Label": "Save Excel File",
              "Parameters": {
                "contents": "",
                "input": "rawbody",
                "target_file": "{{.JobParameters.OutputPath}}"
              }
            }
          ]
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "OutputPath",
      "Description": "Where to store the output.",
      "Value": "personal/admin/audit-export-{{now | date \"2006-01-02\"}}.xlsx",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "RequestLimit",
      "Description": "Limit for 'Load Report' request.",
      "Value": "1000",
      "Mandatory": true,
      "Type": "integer"
    }
  ]
}
```
