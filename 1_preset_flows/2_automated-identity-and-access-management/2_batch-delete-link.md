
Disable All Public Links inside a given Folder.

[:image:1_preset_flows/capture-batch-delete-link.png]

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|FolderPath|text||true|Folder where to remove all links.|
|OwnerLogin|text|admin|true||



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Batch Delete Link||Disable All Public Links inside a given Folder||mdi mdi-share-variant",
  "Owner": "pydio.system.user",
  "CreatedAt": 1680601112,
  "ModifiedAt": 1680624700,
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Feed User",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "Ch17ey5Kb2JQYXJhbWV0ZXJzLk93bmVyTG9naW59fQ=="
            }
          ],
          "Operation": 1
        },
        "Collect": true
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"Paths\"}",
        "message": "",
        "taskLogger": "false"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.link.delete",
          "NodesSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "Ch17ey5Kb2JQYXJhbWV0ZXJzLkZvbGRlclBhdGh9fQ=="
                }
              ],
              "Operation": 1
            }
          },
          "Parameters": {
            "onNotExists": "ignore"
          }
        }
      ],
      "MergeAction": {
        "ID": "actions.scheduler.log-input",
        "Label": "Collect Output Nodes",
        "Parameters": {
          "fieldname": "{\"@value\":\"Extension\"}",
          "message": "Finished!",
          "taskLogger": "true"
        }
      }
    }
  ],
  "MaxConcurrency": 4,
  "Parameters": [
    {
      "Name": "FolderPath",
      "Description": "Folder where to remove all links.",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "OwnerLogin",
      "Value": "admin",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
