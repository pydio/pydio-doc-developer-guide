






 
List meta for a list of nodes, or a full directory using /path/* syntax  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**AllMetaProviders** | Whether to query all services for the metadata they can contribute to enrich the node | _boolean_ |   
**Limit** | Limit number of results | _integer_ |   
**NodePaths** | List of node paths to query (use paths ending with /* to load the children) | _array_ |   
**NodeUuids** | List of nodes based on their Uuids | _array_ |   
**Offset** | Start listing at a given position | _integer_ |   
**Versions** | Load Versions of the given node | _boolean_ |   


### Body Example
```
{
  "AllMetaProviders": true,
  "Limit": 10,
  "NodePaths": [
    "string"
  ],
  "NodeUuids": [
    "string"
  ],
  "Offset": 10,
  "Versions": true
}
```






### Response Example (200)
Response Type /definitions/restBulkMetaResponse

```
{
  "Nodes": [
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
  "Pagination": {
    "CurrentOffset": 10,
    "CurrentPage": 10,
    "Limit": 10,
    "NextOffset": 10,
    "PrevOffset": 10,
    "Total": 10,
    "TotalPages": 10
  }
}
```


