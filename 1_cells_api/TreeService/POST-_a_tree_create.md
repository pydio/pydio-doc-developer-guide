






 
Create dirs or empty files inside the tree  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Nodes** | A list of nodes that must be created | _array_ |   
**Recursive** | If nodes are created inside non-existing folders, whether the parents should be created automatically or not | _boolean_ |   
**TemplateUUID** | Use a template to create this node | _string_ |   


### Body Example
```
{
  "Nodes": [
    {
      "Path": "string"
    }
  ],
  "Recursive": true,
  "TemplateUUID": "string"
}
```






### Response Example (200)
Response Type /definitions/restNodesCollection

```
{
  "Children": [
    {
      "AppearsIn": [
        {
          "Path": "string",
          "WsLabel": "string",
          "WsUuid": "string"
        }
      ],
      "Commits": [
        {
          "Data": "string",
          "Description": "string",
          "Event": {
            "Metadata": {},
            "Optimistic": true,
            "Silent": true,
            "Source": "[Recursive structure]",
            "Target": "[Recursive structure]",
            "Type": "string"
          },
          "MTime": "string",
          "OwnerUuid": "string",
          "Size": "string",
          "Uuid": "string"
        }
      ],
      "Etag": "string",
      "MTime": "string",
      "MetaStore": {},
      "Mode": 10,
      "Path": "string",
      "Size": "string",
      "Type": "string",
      "Uuid": "string"
    }
  ],
  "Parent": {
    "AppearsIn": [
      {
        "Path": "string",
        "WsLabel": "string",
        "WsUuid": "string"
      }
    ],
    "Commits": [
      {
        "Data": "string",
        "Description": "string",
        "Event": {
          "Metadata": {},
          "Optimistic": true,
          "Silent": true,
          "Source": "[Recursive structure]",
          "Target": "[Recursive structure]",
          "Type": "string"
        },
        "MTime": "string",
        "OwnerUuid": "string",
        "Size": "string",
        "Uuid": "string"
      }
    ],
    "Etag": "string",
    "MTime": "string",
    "MetaStore": {},
    "Mode": 10,
    "Path": "string",
    "Size": "string",
    "Type": "string",
    "Uuid": "string"
  }
}
```


