






 
Handle nodes deletion  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Nodes** | List of nodes to delete | _array_ |   
**Recursive** | Whether to delete all the children if node is a folder | _boolean_ |   


### Body Example
```
{
  "Nodes": [
    {
      "Path": "string"
    }
  ],
  "Recursive": true
}
```






### Response Example (200)
Response Type /definitions/restDeleteNodesResponse

```
{
  "DeleteJobs": [
    {
      "Label": "string",
      "NodeUuid": "string",
      "Uuid": "string"
    }
  ]
}
```


