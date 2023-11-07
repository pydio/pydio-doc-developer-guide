
Create PDF and Image preview for various formats.

[:image:1_preset_flows/capture-convert-tools.png]

Cells Convert Tools is a ready-to-use docker image that provides file formats conversion via a REST API. This flow will observes files creation/modification and call Convert Tools API to extract thumbnails.

### Installing Convert Tools

As it [hosted on Docker Hub](https://hub.docker.com/r/pydio/cells-convert-tools), you can simply run Cells Convert Tools with the following command:
```
docker run --name cells-convert-tools -it -d -p 9997:9997 pydio/cells-convert-tools
```
Once the docker is running, you can configure the action host/port accordingly.

### Supported Conversions

This flow currently supports : 
 - Office to PDF export (unoconv)
 - PDF to Image thumbnails (pdf2ppm)
 - Movies frame extraction for thumbnails (ffmpeg)
 - Other images thumbnails (ImageMagick).

This is a great add-on to Cells Enterprise for providing previews for most documents directly inside Cells interface.

### How It Works

The Flow is composed of multiple branches triggered depending on the file extension. The Cells Convert Tools dedicated Action already implements the internals to call the docker REST API. And additional branch listens for the files deletion to make sure to properly clean the created resources.

Note the special "ImagePreview" and "PDFPreview“ metadata that are used to reference the created previews. These are handled by the end-user interface to display the preview accordingly.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ConvertToolsUrl|text|http://localhost:9997|true|Address of the Cells Convert Tools service|
|MetaImagePreview|text|ImagePreview|true|Metadata name for reference to image preview.|
|MetaPdfPreview|text|PDFPreview|true|Metadata name for reference to PDF preview.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Convert Tools",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Create PDF and Image preview for various formats",
    "Icon": "mdi mdi-image-filter",
    "TplCategory": "content-processing",
    "Usage": "Cells Convert Tools is a ready-to-use docker image that provides file formats conversion via a REST API. This flow will observes files creation/modification and call Convert Tools API to extract thumbnails.\n\n### Installing Convert Tools\n\nAs it [hosted on Docker Hub](https://hub.docker.com/r/pydio/cells-convert-tools), you can simply run Cells Convert Tools with the following command:\n```\ndocker run --name cells-convert-tools -it -d -p 9997:9997 pydio/cells-convert-tools\n```\nOnce the docker is running, you can configure the action host/port accordingly.\n\n### Supported Conversions\n\nThis flow currently supports : \n - Office to PDF export (unoconv)\n - PDF to Image thumbnails (pdf2ppm)\n - Movies frame extraction for thumbnails (ffmpeg)\n - Other images thumbnails (ImageMagick).\n\nThis is a great add-on to Cells Enterprise for providing previews for most documents directly inside Cells interface.\n\n### How It Works\n\nThe Flow is composed of multiple branches triggered depending on the file extension. The Cells Convert Tools dedicated Action already implements the internals to call the docker REST API. And additional branch listens for the files deletion to make sure to properly clean the created resources.\n\nNote the special \"ImagePreview\" and \"PDFPreview“ metadata that are used to reference the created previews. These are handled by the end-user interface to display the preview accordingly."
  },
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3",
    "NODE_CHANGE:5"
  ],
  "Actions": [
    {
      "ID": "actions.content.convert-tools",
      "Label": "PDF to Image",
      "NodesFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "UgNwZGY="
            }
          ]
        },
        "Label": "PDF files"
      },
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
        "fieldname": "{\"@value\":\"Extension\"}",
        "limitReader": "0",
        "srvUrl": "{{.JobParameters.ConvertToolsUrl}}/pdf/image",
        "target_path": "thumbnails/{{.Event.Target.Uuid}}.jpg"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Label": "Store Image Meta",
          "Parameters": {
            "fieldname": "{\"@value\":\"Extension\"}",
            "metaJSON": "{\"{{.JobParameters.MetaImagePreview}}\":\"{{.Node.Uuid}}.jpg\"}"
          }
        }
      ]
    },
    {
      "ID": "actions.content.convert-tools",
      "Label": "Image Thumbnails",
      "NodesFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "UjBnaWYsdGlmZix0aWYscHNkLGJtcCxkY20sZG90LGRweCxlcHMsc3ZnLGhlaWMscHM="
            }
          ]
        },
        "Label": "Non-standard images"
      },
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
        "limitReader": "0",
        "paramName": "format",
        "paramName_1": "resize",
        "paramValue": "jpg",
        "paramValue_1": "400",
        "srvUrl": "{{.JobParameters.ConvertToolsUrl}}/image/convert",
        "target_path": "thumbnails/{{.Event.Target.Uuid}}.jpg"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Label": "Store Image Meta",
          "Parameters": {
            "metaJSON": "{\"{{.JobParameters.MetaImagePreview}}\":\"{{.Node.Uuid}}.jpg\"}"
          }
        }
      ]
    },
    {
      "ID": "actions.content.convert-tools",
      "Label": "Extract Frame Video",
      "NodesFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "Ugdtb3YsbXA0"
            }
          ]
        },
        "Label": "Video files"
      },
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
        "fieldname": "{\"@value\":\"Extension\"}",
        "limitReader": "5242880",
        "srvUrl": "{{.JobParameters.ConvertToolsUrl}}/video/frame",
        "target_path": "thumbnails/{{.Event.Target.Uuid}}.jpg"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Label": "Store Image Meta",
          "Parameters": {
            "fieldname": "{\"@value\":\"Extension\"}",
            "metaJSON": "{\"{{.JobParameters.MetaImagePreview}}\":\"{{.Node.Uuid}}.jpg\"}"
          }
        }
      ]
    },
    {
      "ID": "actions.content.convert-tools",
      "Label": "Office to PDF",
      "NodesFilter": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CiYKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIEUgJtZAooCh50eXBlLmdvb2dsZWFwaXMuY29tL3RyZWUuUXVlcnkSBlIEaHRtbApXCh50eXBlLmdvb2dsZWFwaXMuY29tL3RyZWUuUXVlcnkSNVIzZG9jeCx0eHQscnRmLGZvZHQsZG9jLG9kdCx4bHMseGxzeCxvZHMscHB0LHBwdHgsb2Rw"
            }
          ],
          "Operation": 1
        },
        "Label": "Office, MD, HTML"
      },
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
        "limitReader": "0",
        "srvUrl": "{{.JobParameters.ConvertToolsUrl}}/office/convert",
        "target_path": "thumbnails/{{.Event.Target.Uuid}}.pdf"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Label": "Store PDF Meta",
          "Parameters": {
            "fieldname": "{\"@value\":\"Extension\"}",
            "metaJSON": "{\"{{.JobParameters.MetaPdfPreview}}\":\"{{.Node.Uuid}}.pdf\"}"
          }
        },
        {
          "ID": "actions.script.anko",
          "Label": "PDF Node as Input",
          "Parameters": {
            "script": "output = input\noutput.Nodes[0].Uuid = input.Nodes[0].Uuid + \".pdf\"\noutput.Nodes[0].Path = \"thumbnails/\" + output.Nodes[0].Uuid"
          },
          "ChainedActions": [
            {
              "ID": "actions.content.convert-tools",
              "Label": "PDF To Image",
              "Parameters": {
                "fieldname": "{\"@value\":\"Extension\"}",
                "limitReader": "0",
                "srvUrl": "{{.JobParameters.ConvertToolsUrl}}/pdf/image",
                "target_path": "thumbnails/{{.Event.Target.Uuid}}.jpg"
              },
              "ChainedActions": [
                {
                  "ID": "actions.script.anko",
                  "Label": "Event Node as Input",
                  "Parameters": {
                    "paramName": "InputPath",
                    "paramName_1": "InputUuid",
                    "paramValue": "{{.Event.Target.Path}}",
                    "paramValue_1": "{{.Event.Target.Uuid}}",
                    "script": "output = input\noutput.Nodes[0].Uuid = Params.InputUuid\noutput.Nodes[0].Path = Params.InputPath"
                  },
                  "ChainedActions": [
                    {
                      "ID": "actions.tree.meta",
                      "Label": "Store Image Meta",
                      "Parameters": {
                        "fieldname": "{\"@value\":\"Extension\"}",
                        "metaJSON": "{\"{{.JobParameters.MetaImagePreview}}\":\"{{.Event.Target.Uuid}}.jpg\"}"
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Collect Thumbs",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "ah10aHVtYm5haWxzL3t7Lk5vZGUuVXVpZH19LnBkZmoddGh1bWJuYWlscy97ey5Ob2RlLlV1aWR9fS5qcGc="
            }
          ],
          "Operation": 1
        },
        "Label": "Find Previews"
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
        "taskLogger": "false"
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
            },
            "Label": "Keep only thumbnails"
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
          "value": "CiYKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIEUgJtZAooCh50eXBlLmdvb2dsZWFwaXMuY29tL3RyZWUuUXVlcnkSBlIEaHRtbApXCh50eXBlLmdvb2dsZWFwaXMuY29tL3RyZWUuUXVlcnkSNVIzZG9jeCx0eHQscnRmLGZvZHQsZG9jLG9kdCx4bHMseGxzeCxvZHMscHB0LHBwdHgsb2RwCicKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIFUgNwZGYKKwoedHlwZS5nb29nbGVhcGlzLmNvbS90cmVlLlF1ZXJ5EglSB21wNCxtb3YKVAoedHlwZS5nb29nbGVhcGlzLmNvbS90cmVlLlF1ZXJ5EjJSMGdpZix0aWZmLHRpZixwc2QsYm1wLGRjbSxkb3QsZHB4LGVwcyxzdmcsaGVpYyxwcw=="
        },
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CiQKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRICMAEQAQ=="
        }
      ],
      "Operation": 1
    }
  },
  "Parameters": [
    {
      "Name": "ConvertToolsUrl",
      "Description": "Address of the Cells Convert Tools service",
      "Value": "http://localhost:9997",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "MetaImagePreview",
      "Description": "Metadata name for reference to image preview.",
      "Value": "ImagePreview",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "MetaPdfPreview",
      "Description": "Metadata name for reference to PDF preview.",
      "Value": "PDFPreview",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
