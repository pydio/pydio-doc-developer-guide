






 
Handle nodes restoration from recycle bin  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Nodes** | Restore this node from the recycle bin to its original location | _array_ |   


### Body Example
```
{
  "Nodes": [
    {
      "Path": "string"
    }
  ]
}
```






### Response Example (200)
Response Type /definitions/restRestoreNodesResponse

```
{
  "RestoreJobs": [
    {
      "Label": "string",
      "NodeUuid": "string",
      "Uuid": "string"
    }
  ]
}
```


