






 
Create a temporary selection for further action (namely download)  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Nodes** | Create a temporary selection out of this list of nodes | _array_ |   
**Persist** | Whether to save the selection or just get a temporary Uuid in return | _boolean_ |   
**TargetAction** | Associated target action for this selection | _string_ |   


### Body Example
```
{
  "Nodes": [
    {
      "Path": "string"
    }
  ],
  "Persist": true,
  "TargetAction": "string"
}
```






### Response Example (200)
Response Type /definitions/restCreateSelectionResponse

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
  "SelectionUUID": "string"
}
```


