
Take action when a SmartForm is submitted by user.

[:image:1_preset_flows/capture-smartform-submission.png]

This Flow shows how to read a SmartForm submitted values. This is triggered by a metadata change, assuming the SmartForm is configured to set a metadata value to "submitted" on completion.

### Reading SmartForm Values

The values of a submitted SmartForm are stored in JSON inside the `form.values` file. The Flow uses the "JSON Object as Vars" feature of the Read File action to directly parse this JSON and assign its keys to runtime variables.

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "SmartForm Submission",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Take action when a SmartForm is submitted by user",
    "Icon": "mdi mdi-playlist-check",
    "TplCategory": "workflow",
    "Usage": "This Flow shows how to read a SmartForm submitted values. This is triggered by a metadata change, assuming the SmartForm is configured to set a metadata value to \"submitted\" on completion.\n\n### Reading SmartForm Values\n\nThe values of a submitted SmartForm are stored in JSON inside the `form.values` file. The Flow uses the \"JSON Object as Vars\" feature of the Read File action to directly parse this JSON and assign its keys to runtime variables."
  },
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.tree.read",
      "Label": "SmartForm as Vars",
      "ActionOutputFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
              "value": "aht7e2d0IChsZW4gLklucHV0Lk5vZGVzKSAwfX0="
            }
          ]
        },
        "Label": "Prevent empty trigger"
      },
      "Parameters": {
        "alt_input": "{{.Node.Path}}/form.values",
        "format": "vars"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Log form values",
          "Parameters": {
            "fieldname": "{\"@value\":\"FileName\"}",
            "message": "Loaded Runtime Variables : {{.Vars}}",
            "taskLogger": "true"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Submitted files",
              "NodesSelector": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/tree.Query",
                      "value": "Cg97ey5Ob2RlLlBhdGh9fS86C2Zvcm0udmFsdWVzcAE="
                    }
                  ],
                  "Operation": 1
                },
                "Collect": true,
                "Label": "Load submitted files",
                "Description": "Select all files except .pydio hidden files"
              },
              "Parameters": {
                "fieldname": "{\"@value\":\"FileName\"}",
                "message": "Submitted files\n{{range .Input.Nodes}}\n- {{.Path}}\n{{end}}",
                "taskLogger": "true"
              }
            }
          ]
        }
      ]
    }
  ],
  "Hooks": [
    {
      "ApiSlug": "submit-smart",
      "Policies": [
        {
          "Action": 3,
          "Subject": "profile:admin",
          "Effect": 1
        }
      ]
    }
  ]
}
```
