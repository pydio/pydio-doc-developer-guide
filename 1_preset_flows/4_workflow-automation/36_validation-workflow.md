
Validation workflow based on metadata and roles.

[:image:1_preset_flows/capture-validation-workflow.png]

### Usecase Overview

This flow provides a full-featured, customizable validation workflow. It uses files metadata and specific roles to achieve the following approval scenario: 

 - **Alert Reviewers**: when a file is created, tag it as "pending" and send an alert to all users with "reviewer" role.
 - **Inform Owner**: when a reviewer changes its metadata from "pending" to another status ("In Review" or "Validated"), notify the original creator that his file is being looked at.
 - **Reminder**: A scheduled task look for "pending" files that were not reviewed since a specific period, and proactively notify reviewers that they still have some work to do.

At job creation, "reviewer" role and specific metadata are created with the correct policies, making sure that only reviewers can manually change the status. 


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ReviewersRole|text|reviewer|true|Role applied to users in charge of reviewing files (role UUID).|
|ReminderAfter|text|-5m|true|Period after which reviewers are reminded of files still pending validation.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Validation Workflow",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Validation workflow based on metadata and roles",
    "Icon": "mdi mdi-file-check",
    "TplCategory": "workflow",
    "Usage": "### Usecase Overview\n\nThis flow provides a full-featured, customizable validation workflow. It uses files metadata and specific roles to achieve the following approval scenario: \n\n - **Alert Reviewers**: when a file is created, tag it as \"pending\" and send an alert to all users with \"reviewer\" role.\n - **Inform Owner**: when a reviewer changes its metadata from \"pending\" to another status (\"In Review\" or \"Validated\"), notify the original creator that his file is being looked at.\n - **Reminder**: A scheduled task look for \"pending\" files that were not reviewed since a specific period, and proactively notify reviewers that they still have some work to do.\n\nAt job creation, \"reviewer\" role and specific metadata are created with the correct policies, making sure that only reviewers can manually change the status. \n"
  },
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:6"
  ],
  "Schedule": {
    "Iso8601Schedule": "R/2012-01-01T07:00:00.828Z/PT1H"
  },
  "Actions": [
    {
      "ID": "actions.put-meta",
      "Label": "Set Pending",
      "ContextMetaFilter": {
        "Type": 1,
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "QiB7ey5Kb2JQYXJhbWV0ZXJzLlJldmlld2Vyc1JvbGV9fVAB"
            }
          ],
          "Operation": 1
        },
        "Label": "Exclude reviewers"
      },
      "TriggerFilter": {
        "Label": "File Created",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTow"
            }
          ]
        }
      },
      "Parameters": {
        "json": "{\"usermeta-validation\":\"pending\",\"usermeta-createdby\":\"{{.ContextUser.Login}}\",\"usermeta-validation-changed\":\"{{now | toStamp}}\"}"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.user-activity",
          "Label": "Notify Reviewers",
          "IdmSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "QiB7ey5Kb2JQYXJhbWV0ZXJzLlJldmlld2Vyc1JvbGV9fQ=="
                }
              ],
              "Operation": 1
            },
            "Collect": true,
            "Label": "Select reviewers",
            "Description": "Select admin user"
          },
          "Parameters": {
            "Condition": "{\"@value\":\"StringNotMatchCondition\"}",
            "attachActor": "true",
            "attachObject": "true",
            "input-users": "true",
            "markdown": "New file [Object] uploaded by [Actor] is pending validation",
            "title": "New file is pending validation"
          }
        }
      ]
    },
    {
      "ID": "actions.idm.user-activity",
      "Label": "Notify creator",
      "TriggerFilter": {
        "Label": "Status Updated",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTo2"
            }
          ]
        }
      },
      "Parameters": {
        "Condition": "{\"@value\":\"StringNotMatchCondition\"}",
        "attachActor": "true",
        "attachObject": "true",
        "markdown": "[Object] is now \"{{.Node.GetStringMeta \"usermeta-validation\"}}\" (currently reviewed by [Actor])",
        "targetLogins": "{{.Node.GetStringMeta \"usermeta-createdby\"}}",
        "title": "{{.Node.Path | base}} is {{.Node.GetStringMeta \"usermeta-validation\"}}"
      }
    },
    {
      "ID": "actions.put-meta",
      "Label": "Update reminder time",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "SoEBK01ldGEudXNlcm1ldGEtdmFsaWRhdGlvbjpwZW5kaW5nICtNZXRhLnVzZXJtZXRhLXZhbGlkYXRpb24tY2hhbmdlZDo8e3tub3cgfCBkYXRlX21vZGlmeSAuSm9iUGFyYW1ldGVycy5SZW1pbmRlckFmdGVyIHwgdG9TdGFtcH19"
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Needs Reminder",
        "Description": "Select all files except .pydio hidden files"
      },
      "TriggerFilter": {
        "Label": "Reminder checks",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "CAE="
            },
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "EAE="
            }
          ]
        }
      },
      "Parameters": {
        "json": "{\"usermeta-validation-changed\":\"{{now | toStamp}}\"}"
      },
      "ChainedActions": [
        {
          "ID": "actions.cmd.sendmail",
          "Label": "Notify reviewers",
          "IdmSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "QiB7ey5Kb2JQYXJhbWV0ZXJzLlJldmlld2Vyc1JvbGV9fQ=="
                }
              ],
              "Operation": 1
            },
            "Collect": true,
            "Label": "Select reviewers",
            "Description": "Select admin user"
          },
          "Parameters": {
            "Condition": "{\"@value\":\"StringNotMatchCondition\"}",
            "fieldname": "{\"@value\":\"HasProfile\"}",
            "input-users": "true",
            "message": "Warning, there are still {{len .Input.Nodes}} that are pending validation.\n\n{{range .Input.Nodes}}\n - {{.Path | base}}\n{{end}}",
            "subject": "{{len .Input.Nodes}} are still pending validation",
            "to-user": ""
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
          "value": "MAE="
        }
      ]
    },
    "Label": "Files only"
  },
  "Parameters": [
    {
      "Name": "ReviewersRole",
      "Description": "Role applied to users in charge of reviewing files (role UUID).",
      "Value": "reviewer",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "ReminderAfter",
      "Description": "Period after which reviewers are reminded of files still pending validation.",
      "Value": "-5m",
      "Mandatory": true,
      "Type": "text"
    }
  ],
  "ResourcesDependencies": [
    {
      "type_url": "type.googleapis.com/idm.UserMetaNamespace",
      "value": "ChN1c2VybWV0YS12YWxpZGF0aW9uEhFWYWxpZGF0aW9uIFN0YXR1cyABKt0BeyJ0eXBlIjoiY2hvaWNlIiwiZGF0YSI6eyJpdGVtcyI6W3sia2V5IjoicGVuZGluZyIsInZhbHVlIjoiUGVuZGluZyB2YWxpZGF0aW9uIiwiY29sb3IiOiIjYzY2In0seyJrZXkiOiJyZXZpZXciLCJ2YWx1ZSI6IkluIFJldmlldyIsImNvbG9yIjoiI2ZmOTgwMCJ9LHsia2V5IjoidmFsaWRhdGVkIiwidmFsdWUiOiJWYWxpZGF0ZWQiLCJjb2xvciI6IiM2YzYifV0sInN0ZXBzIjp0cnVlfX0yBxgCIgEqKAEyExgDIg1wcm9maWxlOmFkbWluKAEyExgDIg1yb2xlOnJldmlld2VyKAE="
    },
    {
      "type_url": "type.googleapis.com/idm.UserMetaNamespace",
      "value": "ChJ1c2VybWV0YS1jcmVhdGVkYnkSCkNyZWF0ZWQgQnkYAyoReyJ0eXBlIjoic3RyaW5nIn0yExgCIg1yb2xlOnJldmlld2VyKAEyExgDIg1yb2xlOnJldmlld2VyKAEyExgCIg1wcm9maWxlOmFkbWluKAEyExgDIg1wcm9maWxlOmFkbWluKAE="
    },
    {
      "type_url": "type.googleapis.com/idm.UserMetaNamespace",
      "value": "Cht1c2VybWV0YS12YWxpZGF0aW9uLWNoYW5nZWQSGVZhbGlkYXRpb24gU3RhdHVzIENoYW5nZWQYBCABKkB7InR5cGUiOiJkYXRlIiwiZGF0YSI6eyJmb3JtYXQiOiJkYXRlLXRpbWUiLCJkaXNwbGF5Ijoibm9ybWFsIn19MhMYAyINcHJvZmlsZTphZG1pbigBMhMYAiINcHJvZmlsZTphZG1pbigBMhMYAyINcm9sZTpyZXZpZXdlcigBMhMYAiINcm9sZTpyZXZpZXdlcigB"
    },
    {
      "type_url": "type.googleapis.com/idm.Role",
      "value": "CghyZXZpZXdlchIIUmV2aWV3ZXJCFhgCIhBwcm9maWxlOnN0YW5kYXJkKAFCExgDIg1wcm9maWxlOmFkbWluKAE="
    }
  ]
}
```
