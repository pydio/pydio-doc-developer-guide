






 
Search indexed nodes (files/folders) on various aspects  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Details** | Load node details | _boolean_ |   
**From** | Start at given position | _integer_ |   
**Query** | The query object | _#/definitions/treeQuery_ |   
**Size** | Limit the number of results | _integer_ |   
**SortDirDesc** | Sort direction (asc by default) | _boolean_ |   
**SortField** | Sort result using a specific field | _string_ |   
**StatFlags** | Generic Details Flags | _array_ |   


### Body Example
```
{
  "Details": true,
  "From": 10,
  "Query": {
    "Content": "string",
    "DurationDate": "string",
    "ETag": "string",
    "Extension": "string",
    "FileName": "string",
    "FileNameOrContent": "string",
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
    "Not": true,
    "PathDepth": 10,
    "PathPrefix": [
      "string"
    ],
    "Paths": [
      "string"
    ],
    "Type": "string",
    "UUIDs": [
      "string"
    ]
  },
  "Size": 10,
  "SortDirDesc": true,
  "SortField": "string",
  "StatFlags": [
    10
  ]
}
```






### Response Example (200)
Response Type /definitions/restSearchResults

```
{
  "Facets": [
    {
      "Count": 10,
      "End": 10,
      "FieldName": "string",
      "Label": "string",
      "Max": "string",
      "Min": "string",
      "Start": 10,
      "Term": "string"
    }
  ],
  "Results": [
    {
      "AppearsIn": [
        {
          "Path": "string",
          "WsLabel": "string",
          "WsScope": "string",
          "WsSlug": "string",
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
          "Location": "[Recursive structure]",
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




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
