
When uploaded in A/, automatically move file to B/.

[:image:1_preset_flows/capture-move-files-automatically.png]

### Usecase 

This template implements a simple workflow: 

 * **When any file is uploaded** inside a "source" folder, 
 * Automatically **move it** to a "target" folder.
   
The "Source" and "Target" parameters are mandatory to enable the Flow.
   
### How It Works

This show-cases various aspects of Cells Flows: 

 * Listening to files creation with an "Event"-based trigger
 * Filtering these events based on various conditions (inside source folder only, files only)
 * Use a piece of script to compute target destination

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
  "Label": "Move Files Automatically",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "When uploaded in A/, automatically move file to B/",
    "Icon": "mdi mdi-folder-move",
    "TplCategory": "file-management",
    "Usage": "### Usecase \n\nThis template implements a simple workflow: \n\n * **When any file is uploaded** inside a \"source\" folder, \n * Automatically **move it** to a \"target\" folder.\n   \nThe \"Source\" and \"Target\" parameters are mandatory to enable the Flow.\n   \n### How It Works\n\nThis show-cases various aspects of Cells Flows: \n\n * Listening to files creation with an \"Event\"-based trigger\n * Filtering these events based on various conditions (inside source folder only, files only)\n * Use a piece of script to compute target destination"
  },
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
