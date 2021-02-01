
Fill personal files with data from a template folder.

[:image:1_preset_jobs/capture-personal-files-preset.png]

This job shows how to automatically provision the content of every user's Personal Files folder at their first login. This
can be handy to provide a set of specific folders or "README" data for each users.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|TemplateFolder|text|pydiods1/template|true|Path to a template folder to be replicated for each user.|
|AssignRoleUuid|text|custom-role-uuid|true|Role uuid for detecting first connection (make sure to create the role first).|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Personal Files Preset||Fill personal files with data from a template folder||mdi mdi-folder-account",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "IDM_CHANGE:USER:4"
  ],
  "Actions": [
    {
      "ID": "actions.script.anko",
      "Label": "Assign Role",
      "IdmSelector": {
        "Type": 1,
        "All": true,
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.RoleSingleQuery",
              "value": "CiF7ey5Kb2JQYXJhbWV0ZXJzLkFzc2lnblJvbGVVdWlkfX0="
            }
          ]
        },
        "Collect": true,
        "Label": "Load Role"
      },
      "Parameters": {
        "script": "idm = import(\"idm\")\nfmt = import(\"fmt\")\n\noutput = input\n\n\nuser = input.Users[0]\nrole = input.Roles[0]\n\nuser.Roles[len(user.Roles)] = role\n\noutput.Users = [user]"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.store",
          "Label": "Save User",
          "Parameters": {
            "fieldname/@value": "HasRole",
            "objectTypes": "User"
          },
          "ChainedActions": [
            {
              "ID": "actions.tree.copymove",
              "Label": "Copy Templates",
              "NodesSelector": {
                "All": true,
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/tree.Query",
                      "value": "aiF7ey5Kb2JQYXJhbWV0ZXJzLlRlbXBsYXRlRm9sZGVyfX0="
                    }
                  ],
                  "Operation": 1
                },
                "Collect": true,
                "Label": "Load Template Files"
              },
              "Parameters": {
                "create": "false",
                "fieldname": "{\"@value\":\"Paths\"}",
                "recursive": "true",
                "target": "personal/{{.User.Login}}",
                "targetParent": "true",
                "type": "copy"
              }
            }
          ]
        }
      ]
    },
    {
      "ID": "actions.cmd.sendmail",
      "Label": "Notify Admin",
      "Bypass": true,
      "Parameters": {
        "fieldname/@value": "Paths",
        "message": "User {{.User.Login}} connected for the first time!",
        "subject": "User {{.User.Login}} connected for the first time",
        "to-mail": "charles.dujeu@gmail.com"
      }
    }
  ],
  "IdmFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/idm.UserSingleQuery",
          "value": "QiF7ey5Kb2JQYXJhbWV0ZXJzLkFzc2lnblJvbGVVdWlkfX1QAQ=="
        }
      ],
      "Operation": 1
    },
    "Label": "User does not have role"
  },
  "Parameters": [
    {
      "Name": "TemplateFolder",
      "Description": "Path to a template folder to be replicated for each user.",
      "Value": "pydiods1/template",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "AssignRoleUuid",
      "Description": "Role uuid for detecting first connection (make sure to create the role first).",
      "Value": "custom-role-uuid",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
