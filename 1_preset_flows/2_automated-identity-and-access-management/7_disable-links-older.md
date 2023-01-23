
Disable links that are older than a given period of time.

[:image:1_preset_flows/capture-disable-links-older.png]

This flow looks for all existing "LINK"-scoped workspaces (=public links) that were not updated since a given period of time, and delete them. Can be useful to make sure some public links are not left out in the wild.


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|LastUpdated|text|&gt;30d|true|Find links created within a range date. Use for example >30d for links older than 30 days.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Disable Links Older...||Disable links that are older than a given period of time||mdi mdi-share-variant",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Select Links",
      "IdmSelector": {
        "Type": 2,
        "All": true,
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.WorkspaceSingleQuery",
              "value": "KAM="
            },
            {
              "type_url": "type.googleapis.com/idm.WorkspaceSingleQuery",
              "value": "Oh57ey5Kb2JQYXJhbWV0ZXJzLkxhc3RVcGRhdGVkfX0="
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Find Links"
      },
      "Parameters": {
        "fieldname/@value": "FileName",
        "internalLogger": "false",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.delete",
          "Label": "Delete",
          "Bypass": true,
          "Parameters": {
            "fieldname": "{\"@value\":\"LastUpdated\"}",
            "objectTypes": "Workspace"
          }
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "LastUpdated",
      "Description": "Find links created within a range date. Use for example \u003e30d for links older than 30 days.",
      "Value": "\u003e30d",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
