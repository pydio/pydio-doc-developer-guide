
When uploaded in A/, automatically move file to B/.

[:image:1_preset_jobs/capture-move-files-automatically.png]

This job demonstrates how to listen for all new files added to a specific folder (`upload`) and move them
automatically to another location (`download`). This can be handy if these two locations are inside two different 
workspaces whose accesses are restricted on a per-network access using Security Policies for specific compliance/regulatory rules.



### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SourceFolder|text|pydiods1/upload/|false|Source folder to watch for new files uploaded.|
|TargetFolder|text|pydiods1/download|false|Target folder where to move uploaded files.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Move Files Automatically||When uploaded in A/, automatically move file to B/||mdi mdi-folder-move",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0"
  ],
  "Actions": [
    {
      "ID": "actions.script.anko",
      "Label": "Compute New Target",
      "NodesFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "OgYucHlkaW9wAQ=="
            }
          ]
        },
        "Label": "Exclude hidden files"
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"FileName\"}",
        "paramName": "Basename",
        "paramName_1": "TargetFolder",
        "paramValue": "{{.Node.Path | base}}",
        "paramValue_1": "{{.JobParameters.TargetFolder}}",
        "script": "strings = import(\"strings\")\njobs = import(\"jobs\")\n\noutput = input\ntargetPath = Params[\"TargetFolder\"] + \"/\" + Params[\"Basename\"]\noutput.Nodes[0].MetaStore[\"MoveTarget\"] = targetPath"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.copymove",
          "Label": "Move to Destination",
          "Parameters": {
            "create": "false",
            "fieldname": "{\"@value\":\"Type\"}",
            "recursive": "false",
            "target": "{{.Node.MetaStore.MoveTarget}}",
            "targetParent": "false",
            "type": "move"
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 20,
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "Ch97ey5Kb2JQYXJhbWV0ZXJzLlNvdXJjZUZvbGRlcn19"
        },
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "MAE="
        }
      ],
      "Operation": 1
    },
    "Label": "Watch SourceFolder"
  },
  "Parameters": [
    {
      "Name": "SourceFolder",
      "Description": "Source folder to watch for new files uploaded.",
      "Value": "pydiods1/upload/",
      "Type": "text"
    },
    {
      "Name": "TargetFolder",
      "Description": "Target folder where to move uploaded files.",
      "Value": "pydiods1/download",
      "Type": "text"
    }
  ]
}
```
