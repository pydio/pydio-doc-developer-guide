
Take action when a SmartForm is submitted.

[:image:1_preset_jobs/capture-smartform-submission-flow.png]

This flow shows how to read the SmartForm output by loading the `form.values` file content, and listing the content of the SmartForm folder. This is triggered by a metadata change, assuming the SmartForm is configured to set a metadata value to "submitted" on completion.

### Parameters

No parameters defined


### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "SmartForm Submission Flow||Take action when a SmartForm is submitted||mdi mdi-playlist-check",
  "Owner": "pydio.system.user",
  "EventNames": [
    "NODE_CHANGE:6"
  ],
  "Actions": [
    {
      "ID": "actions.script.anko",
      "Label": "Form Values Node",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "ahp7ey5Ob2RlLlBhdGh9fS9mb3JtLnZhbHVlcw=="
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Find form node"
      },
      "Parameters": {
        "script": "origin = input.Nodes[0].Clone()\noutput = input\noutput.Nodes[0] = input.Nodes[1]\noutput.Nodes[1] = origin\n"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.read",
          "Label": "Load Form Values",
          "Parameters": {
            "fieldname": "{\"@value\":\"HasProfile\"}",
            "format": "binary"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Do Something",
              "NodesSelector": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/tree.Query",
                      "value": "Ch97eyhpbmRleCAuSW5wdXQuTm9kZXMgMSkuUGF0aH19"
                    }
                  ],
                  "Operation": 1
                },
                "Collect": true
              },
              "Parameters": {
                "fieldname": "{\"@value\":\"PathPrefix\"}",
                "internalLogger": "true",
                "message": "Form Data Is : {{.LastOutput.JsonBody | toString}}\nFiles in Folder are :\n{{range .Input.Nodes}} - {{.Path}}\n{{end}}",
                "taskLogger": "true"
              }
            }
          ]
        }
      ]
    }
  ],
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "ShxNZXRhLnVzZXJtZXRhLXRhZ3M6c3VibWl0dGVk"
        }
      ]
    },
    "Label": "Tags contain \"submitted\""
  }
}
```
