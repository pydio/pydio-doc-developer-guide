
Create image previews from PDF files.

[:image:1_preset_jobs/capture-pdf-thumbnails.png]

This flow demonstrates how to generate image thumbnails from PDF using the command-line tool `pdftoppm`. 

### Parameters

No parameters defined


### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "PDF Thumbnails||Create image previews from PDF files||mdi mdi-image-filter",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3",
    "NODE_CHANGE:5"
  ],
  "Actions": [
    {
      "ID": "actions.cmd.shell",
      "Label": "PDF to Image",
      "TriggerFilter": {
        "Label": "Create/Update",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTowGg1OT0RFX0NIQU5HRToz"
            }
          ]
        }
      },
      "Parameters": {
        "cmd": "pdftoppm",
        "inputStream": "true",
        "inputTempFile": "false",
        "outputBinary": "true",
        "outputStream": "true",
        "parameters": "- -jpeg -jpegopt quality=60 -f 1 -l 1 -r 72 -singlefile",
        "storeOutput": "thumbnails/{{.Node.Uuid}}.jpg"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Parameters": {
            "fieldname": "{\"@value\":\"Paths\"}",
            "metaJSON": "{\"ImagePreview\":\"{{.Node.Uuid}}.jpg\"}"
          }
        }
      ]
    },
    {
      "ID": "actions.scheduler.log-input",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "ah10aHVtYm5haWxzL3t7Lk5vZGUuVXVpZH19LmpwZw=="
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Find Thumbnail"
      },
      "TriggerFilter": {
        "Label": "Clean on Delete",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTo1"
            }
          ]
        }
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"Paths\"}",
        "message": "",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.delete",
          "NodesFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "Cgp0aHVtYm5haWxz"
                }
              ]
            }
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 10,
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CicKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIFUgNwZGY="
        },
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CiQKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRICMAEQAQ=="
        }
      ],
      "Operation": 1
    }
  }
}
```
