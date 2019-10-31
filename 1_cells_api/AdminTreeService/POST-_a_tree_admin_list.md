






 
List files and folders starting at the root (first level lists the datasources)  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Ancestors** | Send back a list of parent nodes, until the root, including the original node | _boolean_ |   
**FilterType** | Filter by node type (LEAF / COLLECTION) | _#/definitions/treeNodeType_ |   
**Limit** | Limit the number of results | _string_ |   
**Node** | Main node used as a parent | _#/definitions/treeNode_ |   
**Offset** | Start listing at a given position | _string_ |   
**Recursive** | Send back all children of the node | _boolean_ |   
**WithCommits** | Sends the list of commits for a given node (not used) | _boolean_ |   
**WithVersions** | Sends the list of versions for a given node | _boolean_ |   


### Body Example
```
{
  "Ancestors": true,
  "FilterType": "string",
  "Limit": "string",
  "Node": {
    "Path": "string"
  },
  "Offset": "string",
  "Recursive": true,
  "WithCommits": true,
  "WithVersions": true
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


