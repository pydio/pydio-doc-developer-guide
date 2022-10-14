
Extract and index textual contents using Tika service.

[:image:1_preset_jobs/capture-tika-contents-extraction.png]

Apache Tika is an independant, open source, content extractor that supports a very wide range of file formats. It can
even support OCR for extracting text from images. 

This flow sends file contents to Tika and gets the textual information to be indexed internally by the Cells search engine. 
This textual content is stored on Cells side to avoid having to resend file to Tika on re-indexation. Job is also in charge 
of cleaning associated metadata on file deletion, and can be triggered manually to re-extract contents from all compatible files (can be handy when first enabling job to run on existing files).

Tika provides also metadata extraction, that can be indexed by Cells search engine as well.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|TikaServer|text|localhost:9998|true|TCP address for querying Tika server.|
|Extensions|text|pdf,doc,docx,html,xls,xlsx,pptx,key|false|List of extensions to be analyzed by Tika|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Tika Contents Extraction||Extract and index textual contents using Tika service||mdi mdi-delete-forever",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3",
    "NODE_CHANGE:5"
  ],
  "Actions": [
    {
      "ID": "actions.contents.tika",
      "TriggerFilter": {
        "Label": "Create/Update",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTowGg1OT0RFX0NIQU5HRToz"
            }
          ],
          "Operation": 1
        }
      },
      "Parameters": {
        "additionalMeta": "Content-Type",
        "compressContent": "true",
        "extractContent": "pydio-binaries/tika-{{.Node.Uuid}}.gz",
        "fieldname": "{\"@value\":\"Extension\"}",
        "serverAddress": "{{.JobParameters.TikaServer}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Parameters": {
            "metaJSON": "{}"
          }
        }
      ]
    },
    {
      "ID": "actions.script.anko",
      "Label": "Find binary name",
      "TriggerFilter": {
        "Label": "Delete",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Gg1OT0RFX0NIQU5HRTo1"
            }
          ],
          "Operation": 1
        }
      },
      "Parameters": {
        "script": "output = input\noutput.Nodes[0].Path = \"pydio-binaries/tika-\" + input.Nodes[0].Uuid + \".gz\""
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.delete",
          "Label": "Delete Binaries",
          "Parameters": {
            "fieldname": "{\"@value\":\"EventNames\"}",
            "ignoreNonExisting": "true"
          }
        }
      ]
    },
    {
      "ID": "actions.contents.tika",
      "Label": "Tika Extractor",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "MAFSL3t7LkpvYlBhcmFtZXRlcnMuRXh0ZW5zaW9ucyB8IHJlcGxhY2UgIiwiICJ8In19"
            }
          ],
          "Operation": 1
        },
        "Label": "Select files with extension"
      },
      "TriggerFilter": {
        "Label": "Re-indexation",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "EAE="
            },
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "CAE="
            }
          ]
        }
      },
      "Parameters": {
        "additionalMeta": "Content-Type",
        "compressContent": "true",
        "extractContent": "pydio-binaries/tika-{{.Node.Uuid}}.gz",
        "fieldname": "{\"@value\":\"Extension\"}",
        "serverAddress": "{{.JobParameters.TikaServer}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.meta",
          "Label": "Store Internal Meta",
          "Parameters": {
            "metaJSON": "{}"
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
          "value": "CiwKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIKOgYucHlkaW9wARAB"
        },
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CiQKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRICMAEQAQ=="
        },
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "Uh17ey5Kb2JQYXJhbWV0ZXJzLkV4dGVuc2lvbnN9fQ=="
        }
      ],
      "Operation": 1
    },
    "Label": "Restricted Extensions",
    "Description": "Keep only files, excluding .pydio hidden files"
  },
  "Parameters": [
    {
      "Name": "TikaServer",
      "Description": "TCP address for querying Tika server.",
      "Value": "localhost:9998",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Extensions",
      "Description": "List of extensions to be analyzed by Tika",
      "Value": "pdf,doc,docx,html,xls,xlsx,pptx,key",
      "Type": "text"
    }
  ]
}
```
