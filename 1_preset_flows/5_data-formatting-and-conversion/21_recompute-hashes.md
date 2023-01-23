
Recompute files unique hashes (using Cells custom algorithm).

[:image:1_preset_flows/capture-recompute-hashes.png]

This flow can be used to compute (or recompute) files hashes inside a specific folder. It was primarily introduced in version 4 to attach a new hash signature to files `x-cells-hash` metadata. This new algorithm (`Cells Internal`) was introduced to provide a consistent hashing through the whole application, whatever the upload method (direct PUT, Multipart), the encryption mechanism and the datasource storage.

The "Compute Hash" action can also be used to compute common hashes and attach them to any metadata. Supported algorithm are `md4`, `md5`, `sha1`, `sha256`, `sha512`.

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
  "Label": "Recompute hashes||Recompute files unique hashes (using Cells custom algorithm)||mdi mdi-pound-box",
  "Owner": "pydio.system.user",
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
