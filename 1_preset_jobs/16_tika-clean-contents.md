
Clean associated content binary when removing a file.

[:image:1_preset_jobs/capture-tika-clean-contents.png]

Apache Tika is an independant, open source, content extractor that supports a very wide range of file formats. It can 
even support OCR for extracting text from images. See the dedicated job for content extraction. This job is here to clean textual
content that is stored on the Cells-side when deleting a file.


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|Extensions|text|pdf,doc,docx,html,xlsx,xls,pptx,key|false|Files extensions to consider.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Tika - Clean Contents||Clean associated content binary when removing a file||mdi mdi-delete-forever",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:5"
  ],
  "Actions": [
    {
      "ID": "actions.script.anko",
      "Parameters": {
        "script": "output = input\noutput.Nodes[0].Path = \"pydio-binaries/tika-\" + input.Nodes[0].Uuid + \".gz\""
      },
      "ChainedActions": [
        {
          "ID": "actions.tree.delete",
          "Parameters": {
            "ignoreNonExisting": "true"
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 20,
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
      "Name": "Extensions",
      "Description": "Files extensions to consider.",
      "Value": "pdf,doc,docx,html,xlsx,xls,pptx,key",
      "Type": "text"
    }
  ]
}
```
