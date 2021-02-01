
Trigger an action at user first connection to a workspace.

[:image:1_preset_jobs/capture-ws-first-connection.png]

This job uses a custom user attribute to detect if it is the first time the user "connects" to a workspace (which means here the first
time it reads any node under a given path in the tree). 

It could be continued with an email alert, auto-provisining of data or any other action.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|AttributePrefix|text|accessed-|true|Save user attribute "prefix-WorkspaceSlug" with current date.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "WS First Connection||Trigger an action at user first connection to a workspace||mdi mdi-account",
  "Owner": "pydio.system.user",
  "EventNames": [
    "NODE_CHANGE:1"
  ],
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Context workspace",
      "IdmSelector": {
        "Type": 2,
        "All": true,
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.WorkspaceSingleQuery",
              "value": "Chp7ey5Db250ZXh0V29ya3NwYWNlLlVVSUR9fQ=="
            }
          ]
        },
        "Collect": true,
        "Label": "Append workspace to input"
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"AttributeName\"}",
        "internalLogger": "false",
        "taskLogger": "false"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.user-set-attribute",
          "IdmSelector": {
            "All": true,
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "WhV7ey5Db250ZXh0VXNlci5VdWlkfX0="
                }
              ],
              "Operation": 1
            },
            "Collect": true,
            "Label": "Append user to input"
          },
          "ContextMetaFilter": {
            "Type": 1,
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "KjV7ey5Kb2JQYXJhbWV0ZXJzLkF0dHJpYnV0ZVByZWZpeH19e3suV29ya3NwYWNlLlNsdWd9fTgBUAE="
                }
              ],
              "Operation": 1
            },
            "Label": "Check current user attribute"
          },
          "Parameters": {
            "attributeName": "{{.JobParameters.AttributePrefix}}{{.Workspace.Slug}}",
            "attributeValue": "{{.Env.Date}}",
            "fieldname": "{\"@value\":\"AttributeName\"}"
          },
          "ChainedActions": [
            {
              "ID": "actions.idm.store",
              "Label": "Save user",
              "Parameters": {
                "fieldname/@value": "Uuid",
                "objectTypes": "User"
              }
            }
          ]
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "AttributePrefix",
      "Description": "Save user attribute \"prefix-WorkspaceSlug\" with current date.",
      "Value": "accessed-",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
