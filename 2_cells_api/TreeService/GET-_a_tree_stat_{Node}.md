






 
Return node meta without the node content itself  


### Path Parameters

 - **Node** (_string, required_) The node to state




### Response Example (200)
Response Type /definitions/restHeadNodeResponse

```
{
  "Node": {
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
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.0.1 on 17-Oct-2022