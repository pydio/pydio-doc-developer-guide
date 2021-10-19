
Clear all workspaces recycle bin folders.

[:image:1_preset_jobs/capture-empty-all-recycles.png]

This job looks up for specific `recycle_root` ACL that are attached to the root of workspaces. Once they 
are loaded, it loads the corresponding node (ACL refer to nodes via their `UUID` and we need to reload them to get their `Path`), and compute
the recycle path by appending the recycle_bin folder, then calls the "Delete" action.

Default setup makes it run every day at 3AM, but it can also be ran manually.

### Parameters

No parameters defined


### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Empty All Recycles||Clear all workspaces recycle bin folders||mdi mdi-delete-forever",
  "Owner": "pydio.system.user",
  "Schedule": {
    "Iso8601Schedule": "R/2020-03-04T02:00:59.471Z/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Recycle Root ACLs",
      "IdmSelector": {
        "Type": 3,
        "All": true,
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.ACLSingleQuery",
              "value": "Cg4KDHJlY3ljbGVfcm9vdA=="
            }
          ]
        },
        "Label": "Find \"recycle_root\" ACLs"
      },
      "Parameters": {
        "fieldname/@value": "FileName",
        "internalLogger": "false",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Recycle Root Folder",
          "NodesSelector": {
            "All": true,
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "eg97ey5BY2wuTm9kZUlEfX0="
                }
              ],
              "Operation": 1
            },
            "Collect": true,
            "Label": "Find folder for ACL"
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"UUIDs\"}",
            "internalLogger": "false",
            "message": "Acl Node: {{.Acl.NodeID}}",
            "taskLogger": "true"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Recycle Bin Folder",
              "NodesSelector": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/tree.Query",
                      "value": "OgtyZWN5Y2xlX2Jpbmoae3suTm9kZS5QYXRofX0vcmVjeWNsZV9iaW4="
                    }
                  ],
                  "Operation": 1
                },
                "Label": "Find Recycle Bin"
              },
              "Parameters": {
                "fieldname": "{\"@value\":\"Paths\"}",
                "internalLogger": "false",
                "message": "Will delete children of {{.Node.Path}}",
                "taskLogger": "true"
              },
              "ChainedActions": [
                {
                  "ID": "actions.tree.delete",
                  "Label": "Clear content",
                  "Parameters": {
                    "childrenOnly": "true",
                    "fieldname/@value": "FileName"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```
