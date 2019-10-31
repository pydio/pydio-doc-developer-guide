






 
Search indexed nodes (files/folders) on various aspects  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Details** | Load node details | _boolean_ |   
**Facet** | Facet search | _string_ |   
**From** | Start at given position | _integer_ |   
**Query** | The query object | _#/definitions/treeQuery_ |   
**Size** | Limit the number of results | _integer_ |   


### Body Example
```
{
  "Details": true,
  "Facet": "string",
  "From": 10,
  "Query": {
    "Content": "string",
    "Extension": "string",
    "FileName": "string",
    "FreeString": "string",
    "GeoQuery": {
      "BottomRight": {
        "Lat": "[Unknown Type number]",
        "Lon": "[Unknown Type number]"
      },
      "Center": {
        "Lat": "[Unknown Type number]",
        "Lon": "[Unknown Type number]"
      },
      "Distance": "string",
      "TopLeft": {
        "Lat": "[Unknown Type number]",
        "Lon": "[Unknown Type number]"
      }
    },
    "MaxDate": "string",
    "MaxSize": "string",
    "MinDate": "string",
    "MinSize": "string",
    "PathPrefix": [
      "string"
    ],
    "Type": "string"
  },
  "Size": 10
}
```






### Response Example (200)
Response Type /definitions/restSearchResults

```
{
  "Results": [
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
  "Total": 10
}
```


