
Trigger an action at user first connection to a workspace.

[:image:1_preset_flows/capture-ws-first-connection.png]

This Flow uses a custom user attribute to detect if it is the first time that a user "connects" to a workspace.

### How It Works

Here, the "connection" to a workspace is assumed as the first time where the user reads any node inside this workspace. End-users can only access a node (file or folder) if an access has been open to them via a workspace or a Cell, the later being just a special workspace type. As such, we listen to the Read Node event and check load the "Contextual Workspace" under which the user is operating at the time.

From there, the Flow builds an attribute name for the current workspace, and check the existence of this key in the user attributes. If not created, this is a first connection, do something and update the user's attributes. Otherwise ignore it and do nothing.

This Flow should be further extended with an email alert, auto-provisining of data, or any other suited action.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|AttributePrefix|text|accessed-|true|Save user attribute "prefix-WorkspaceSlug" with current date.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "WS First Connection",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Trigger an action at user first connection to a workspace",
    "Icon": "mdi mdi-account",
    "TplCategory": "idm",
    "Usage": "This Flow uses a custom user attribute to detect if it is the first time that a user \"connects\" to a workspace.\n\n### How It Works\n\nHere, the \"connection\" to a workspace is assumed as the first time where the user reads any node inside this workspace. End-users can only access a node (file or folder) if an access has been open to them via a workspace or a Cell, the later being just a special workspace type. As such, we listen to the Read Node event and check load the \"Contextual Workspace\" under which the user is operating at the time.\n\nFrom there, the Flow builds an attribute name for the current workspace, and check the existence of this key in the user attributes. If not created, this is a first connection, do something and update the user's attributes. Otherwise ignore it and do nothing.\n\nThis Flow should be further extended with an email alert, auto-provisining of data, or any other suited action."
  },
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
