
Crawl all files and extract content using Tika.

[:image:1_preset_jobs/capture-tika-reindexation.png]

Apache Tika is an independant, open source, content extractor that supports a very wide range of file formats. It can
even support OCR for extracting text from images. 

Although content extraction should be done on an event-based manner (at files upload or modification), this job can be useful
when enabling Tika on an existing system to crawl all files and index them at once.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|TikaServer|text|localhost:9998|true|Address of the tika service.|
|Extensions|text|pdf&#124;doc&#124;docx&#124;html&#124;xls&#124;xlsx&#124;pptx&#124;key|true|Limit list of extensions to be analyzed|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Tika - Reindexation||Crawl all files and extract content using Tika||mdi mdi-magnify",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.contents.tika",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "MAFSHXt7LkpvYlBhcmFtZXRlcnMuRXh0ZW5zaW9uc319"
            }
          ],
          "Operation": 1
        },
        "Label": "Select files with extension"
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
    }
  ],
  "MaxConcurrency": 10,
  "Parameters": [
    {
      "Name": "TikaServer",
      "Description": "Address of the tika service.",
      "Value": "localhost:9998",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Extensions",
      "Description": "Limit list of extensions to be analyzed",
      "Value": "pdf|doc|docx|html|xls|xlsx|pptx|key",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
