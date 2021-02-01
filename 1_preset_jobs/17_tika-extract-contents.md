
Extract and store text contents for indexation.

[:image:1_preset_jobs/capture-tika-extract-contents.png]

Apache Tika is an independant, open source, content extractor that supports a very wide range of file formats. It can
even support OCR for extracting text from images. This job sends file contents to Tika and gets the textual information to
be indexed internally by the Cells search engine. This textual content is stored on Cells side to avoid having to resend file to Tika on re-indexation.

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
  "Label": "Tika - Extract Contents||Extract and store text contents for indexation||mdi mdi-magnify",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3"
  ],
  "Actions": [
    {
      "ID": "actions.contents.tika",
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
