
List folder contents, write a CSV and/or send a markdown email.

[:image:1_preset_jobs/capture-folder-content-report.png]

This job interestingly demonstrates various capacities of Cells Flows: 

 - Use Golang templating to generate proper CSV or Markdown format based on actions input (in "Write To CSV File" and "Email In Markdown" actions)

 - Use custom filters "Free Condition" to trigger an action based on the job-level parameter.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|Folder|text|pydiods1|true|Path to folder where to list contents.|
|CsvPathPrefix|text|personal/admin/Listing-|false|Prefix used to generated CSV. Current date and CSV extension will be appended.|
|EmailToUser|text|admin|false|Send report by email (enter user Login).|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Folder Content Report||List folder contents, write a CSV and/or send a markdown email||mdi mdi-format-list-bulleted",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Collect nodes",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "Chl7ey5Kb2JQYXJhbWV0ZXJzLkZvbGRlcn19"
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "List all files/folders"
      },
      "Parameters": {
        "message": "",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.put",
          "Label": "Write To CSV File",
          "NodesFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "OgYucHlkaW9wAQ=="
                }
              ]
            },
            "Label": "Filter out .pydio"
          },
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "ajt7e2lmIC5Kb2JQYXJhbWV0ZXJzLkNzdlBhdGhQcmVmaXh9fXRydWV7e2Vsc2V9fWZhbHNle3tlbmR9fQ=="
                }
              ]
            },
            "Label": "Stop if CSVPathPrefix is empty"
          },
          "Parameters": {
            "contents": "{{$prefix:=.JobParameters.Folder}}\"Name\";\"Type\";\"Size\";\"Modified\";{{range .Input.Nodes}}\n\"{{.Path | trimPrefix $prefix | trimPrefix \"/\"}}\";\"{{if eq .Type 1}}File{{else}}Folder{{end}}\";\"{{.Size}}\";\"{{.MTime | fromStamp}}\";{{end}}",
            "fieldname": "{\"@value\":\"FreeCondition\"}",
            "target_file": "{{.JobParameters.CsvPathPrefix}}{{now | date \"2006-01-02\"}}.csv"
          }
        },
        {
          "ID": "actions.cmd.sendmail",
          "Label": "Email in Markdown",
          "NodesFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "OgYucHlkaW9wAQ=="
                }
              ]
            },
            "Label": "Filter out .pydio"
          },
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "ajl7e2lmIC5Kb2JQYXJhbWV0ZXJzLkVtYWlsVG9Vc2VyfX10cnVle3tlbHNlfX1mYWxzZXt7ZW5kfX0="
                }
              ]
            },
            "Label": "Stop if EmailToUser parameter is empty"
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"PathPrefix\"}",
            "message": "{{$prefix:=\"pydiods1\"}}|Type|Name|Size|Modified Since|\n|---|---|---|---|\n{{range .Input.Nodes}}|{{if eq .Type 1}}File{{else}}Folder{{end}}|{{.Path| trimPrefix \"pydiods1/\"}}|{{.Size}}|{{.MTime | fromStamp | ago}}|\n{{end}}",
            "subject": "Content listing of {{.JobParameters.Folder}}",
            "to-mail": "",
            "to-user": "{{.JobParameters.EmailToUser}}"
          }
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "Folder",
      "Description": "Path to folder where to list contents.",
      "Value": "pydiods1",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "CsvPathPrefix",
      "Description": "Prefix used to generated CSV. Current date and CSV extension will be appended.",
      "Value": "personal/admin/Listing-",
      "Type": "text"
    },
    {
      "Name": "EmailToUser",
      "Description": "Send report by email (enter user Login).",
      "Value": "admin",
      "Type": "text"
    }
  ]
}
```
