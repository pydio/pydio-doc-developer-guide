
Compute accesses on each workspaces for each users.

[:image:1_preset_flows/capture-export-users-permissions.png]

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ExportFolder|text||true|The path to save the exported file. |
|Profile|select, possible values: Internal Users (standard), Administrator (admin), External Users (shared)|standard|false|Select a profile to list all users. |



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Export Users Permissions||Compute accesses on each workspaces for each users||mdi mdi-account-settings",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Collect Users",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "ahp7ey5Kb2JQYXJhbWV0ZXJzLlByb2ZpbGV9fQ=="
            }
          ],
          "Operation": 1
        }
      },
      "Parameters": {
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "action.idm.user-load-permissions",
          "Label": "Load Permissions",
          "Parameters": {
            "attributePrefix": "permission:",
            "ignoreWorkspacesInternal": "true",
            "outputFormat": "expand-wsp"
          }
        }
      ]
    }
  ],
  "MergeAction": {
    "ID": "actions.scheduler.log-input",
    "Label": "Log Output",
    "Parameters": {
      "message": "Computed {{.Input.Users | len}} permissions lines",
      "taskLogger": "true"
    },
    "ChainedActions": [
      {
        "ID": "actions.etl.transform",
        "Label": "Format XLSX",
        "ActionOutputFilter": {
          "Query": {
            "SubQueries": [
              {
                "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                "value": "ah17e2d0ICguSW5wdXQuVXNlcnMgfCBsZW4pIDB9fQ=="
              }
            ]
          },
          "Label": "Check Lines Number"
        },
        "Parameters": {
          "cellwidth": "40",
          "cellwidth_1": "30",
          "cellwidth_2": "40",
          "cellwidth_3": "45",
          "cellwidth_4": "20",
          "cellwidth_5": "20",
          "csv-separator": ",",
          "dataformat": "string",
          "dataformat_1": "string",
          "dataformat_2": "string",
          "dataformat_3": "string",
          "dataformat_4": "string",
          "dataformat_5": "string",
          "expand": "",
          "expand_1": "",
          "expand_2": "",
          "expand_3": "",
          "expand_4": "",
          "expand_5": "",
          "format": "xlsx",
          "input": "input",
          "jsonpath": "$.Uuid",
          "jsonpath_1": "$.Login",
          "jsonpath_2": "$.Attributes[\"permission:workspace_uuid\"]",
          "jsonpath_3": "$.Attributes[\"permission:workspace_label\"]",
          "jsonpath_4": "$.Attributes[\"permission:workspace_scope\"]",
          "jsonpath_5": "$.Attributes[\"permission:workspace_rights\"]",
          "name": "User UUID",
          "name_1": "Login ID",
          "name_2": "Workspace UUID",
          "name_3": "Workspace Label",
          "name_4": "Workspace Scope",
          "name_5": "Permissions",
          "selector": "$.Users",
          "sheet": "Data"
        },
        "ChainedActions": [
          {
            "ID": "actions.tree.put",
            "Label": "Write Excel File",
            "Parameters": {
              "fieldname": "{\"@value\":\"HasProfile\"}",
              "input": "rawbody",
              "target_file": "{{.JobParameters.ExportFolder | trimSuffix \"/\"}}/users-permissions-{{.JobParameters.Profile}}-{{now | htmlDate}}.xlsx"
            }
          }
        ],
        "FailedFilterActions": [
          {
            "ID": "actions.scheduler.log-input",
            "Label": "Nothing to Export",
            "Parameters": {
              "fieldname": "{\"@value\":\"FreeCondition\"}",
              "message": "Nothing to export",
              "taskLogger": "true"
            }
          }
        ]
      }
    ]
  },
  "Parameters": [
    {
      "Name": "ExportFolder",
      "Description": "The path to save the exported file. ",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Profile",
      "Description": "Select a profile to list all users. ",
      "Value": "standard",
      "Type": "select",
      "JsonChoices": "{\"standard\": \"Internal Users\", \"admin\": \"Administrator\", \"shared\": \"External Users\"}"
    }
  ]
}
```
