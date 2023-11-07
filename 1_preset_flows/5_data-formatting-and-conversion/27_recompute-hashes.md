
Recompute files unique hashes (using Cells custom algorithm).

[:image:1_preset_flows/capture-recompute-hashes.png]

This flow can be used to compute (or recompute) files hashes inside a specific folder. 

### Usage

It was primarily introduced in version 4 to attach a new hash signature to files `x-cells-hash` metadata. This new algorithm (`Cells Internal`) was introduced to provide a consistent hashing through the whole application, whatever the upload method (direct PUT, Multipart), the encryption mechanism and the datasource storage.

Apart from this `x-cells-hash` format, The "Compute Hash" action can also be used to compute common hashes and attach them to any metadata. Supported algorithm are `md4`, `md5`, `sha1`, `sha256`, `sha512`.

### How It Works

This Flow is a good demonstration of the "Merge Action" mechanism, that allows running many tasks in parallel, and wait for all of them to be finished before going to next step. In that case, the hash of many files are computed in parallel. The number of actually running tasks is defined by the job "Max. Parallel Task" shown at the bottom of the graph. 

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SelectionPrefix|text||true|Use a datasource (or a deeper path) to limit the initial selection.|
|ForceRecompute|boolean|false|false|Force recomputing hash even if it is found|
|UpdateDSHashing|boolean|false|false|Trigger datasource attribute update after all hashes are computed.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Recompute hashes",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Recompute files unique hashes (using Cells custom algorithm)",
    "Icon": "mdi mdi-pound-box",
    "TplCategory": "content-processing",
    "Usage": "This flow can be used to compute (or recompute) files hashes inside a specific folder. \n\n### Usage\n\nIt was primarily introduced in version 4 to attach a new hash signature to files `x-cells-hash` metadata. This new algorithm (`Cells Internal`) was introduced to provide a consistent hashing through the whole application, whatever the upload method (direct PUT, Multipart), the encryption mechanism and the datasource storage.\n\nApart from this `x-cells-hash` format, The \"Compute Hash\" action can also be used to compute common hashes and attach them to any metadata. Supported algorithm are `md4`, `md5`, `sha1`, `sha256`, `sha512`.\n\n### How It Works\n\nThis Flow is a good demonstration of the \"Merge Action\" mechanism, that allows running many tasks in parallel, and wait for all of them to be finished before going to next step. In that case, the hash of many files are computed in parallel. The number of actually running tasks is defined by the job \"Max. Parallel Task\" shown at the bottom of the graph. "
  },
  "Actions": [
    {
      "ID": "actions.tree.cells-hash",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "CiJ7ey5Kb2JQYXJhbWV0ZXJzLlNlbGVjdGlvblByZWZpeH19MAE="
            }
          ],
          "Operation": 1
        },
        "Label": "List Files"
      },
      "Parameters": {
        "forceRecompute": "{{.JobParameters.ForceRecompute}}"
      }
    }
  ],
  "MergeAction": {
    "ID": "actions.scheduler.log-input",
    "Label": "Wait for all Hashes",
    "Parameters": {
      "message": "",
      "taskLogger": "false"
    },
    "ChainedActions": [
      {
        "ID": "actions.tree.ds-attribute",
        "Label": "Set DS Attribute",
        "DataSourceSelector": {
          "Query": {
            "SubQueries": [
              {
                "type_url": "type.googleapis.com/object.DataSourceSingleQuery",
                "value": "CiJ7ey5Kb2JQYXJhbWV0ZXJzLlNlbGVjdGlvblByZWZpeH19"
              }
            ]
          }
        },
        "ActionOutputFilter": {
          "Query": {
            "SubQueries": [
              {
                "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                "value": "aiJ7ey5Kb2JQYXJhbWV0ZXJzLlVwZGF0ZURTSGFzaGluZ319"
              }
            ]
          },
          "Label": "UpdateDSHashing is True"
        },
        "Parameters": {
          "attName": "hashingVersion",
          "attValue": "v4",
          "fieldname": "{\"@value\":\"Name\"}"
        }
      }
    ]
  },
  "MaxConcurrency": 10,
  "Parameters": [
    {
      "Name": "SelectionPrefix",
      "Description": "Use a datasource (or a deeper path) to limit the initial selection.",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "ForceRecompute",
      "Description": "Force recomputing hash even if it is found",
      "Value": "false",
      "Type": "boolean"
    },
    {
      "Name": "UpdateDSHashing",
      "Description": "Trigger datasource attribute update after all hashes are computed.",
      "Value": "false",
      "Type": "boolean"
    }
  ],
  "Timeout": "30m"
}
```
