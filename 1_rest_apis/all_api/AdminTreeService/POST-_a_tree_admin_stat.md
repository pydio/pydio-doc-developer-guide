






 
Read a node information inside the admin tree  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Node** | Input node | _#/definitions/treeNode_ |   
**ObjectStats** | Used internally for the router ReadNode request, stat the datasource instead of index | _boolean_ |   
**WithCommits** | Gather commit information | _boolean_ |   
**WithExtendedStats** | Get extended stats - For folders, computes ChildrenCount | _boolean_ |   


### Body Example
```
{
  "Node": {
    "Path": "string"
  },
  "ObjectStats": true,
  "WithCommits": true,
  "WithExtendedStats": true
}
```






### Response Example (200)
Response Type /definitions/treeReadNodeResponse

```
{
  "Node": {
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
  },
  "Success": true
}
```


