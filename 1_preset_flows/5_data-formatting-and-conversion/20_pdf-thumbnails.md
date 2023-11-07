
Create image previews from PDF files.

[:image:1_preset_flows/capture-pdf-thumbnails.png]

This Flow generates an image thumbnail from PDF using the command-line tool `pdftoppm`. 

### Important Note

As the Flow is using the "Shell Command" action, you must make sure to **install** the pdftoppm binary on the machine, **and declare** it manually in the Cells configuration to allow Cells Flows user to acces it. 
This is done using the configuration key "defaults/schedulerShellAllowedCommands", that must contains a {key:Label} object. It will look like : 
```
{
/// config file
   "defaults":{
      // other existing keys
      "schedulerShellAllowedCommands":{
      	"pdftoppm": "PDF Converter"
      }
   }
```
You can add here any other binary that you wish to use with Cells Flows.

### How It Works

The Flow is composed of two branches to handle the complete files lifecycle: 

 - The Create/Update event triggers a call to pdfppm to associate a preview image with the PDF. It is attached to the original file as "**ImagePreview**" metadata.
 - The Delete event will clean the associated thumbnail if it exists.

### Parameters

No parameters defined


### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "PDF Thumbnails",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Create image previews from PDF files",
    "Icon": "mdi mdi-image-filter",
    "TplCategory": "content-processing",
    "Usage": "This Flow generates an image thumbnail from PDF using the command-line tool `pdftoppm`. \n\n### Important Note\n\nAs the Flow is using the \"Shell Command\" action, you must make sure to **install** the pdftoppm binary on the machine, **and declare** it manually in the Cells configuration to allow Cells Flows user to acces it. \nThis is done using the configuration key \"defaults/schedulerShellAllowedCommands\", that must contains a {key:Label} object. It will look like : \n```\n{\n/// config file\n   \"defaults\":{\n      // other existing keys\n      \"schedulerShellAllowedCommands\":{\n      \t\"pdftoppm\": \"PDF Converter\"\n      }\n   }\n```\nYou can add here any other binary that you wish to use with Cells Flows.\n\n### How It Works\n\nThe Flow is composed of two branches to handle the complete files lifecycle: \n\n - The Create/Update event triggers a call to pdfppm to associate a preview image with the PDF. It is attached to the original file as \"**ImagePreview**\" metadata.\n - The Delete event will clean the associated thumbnail if it exists."
  },
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
