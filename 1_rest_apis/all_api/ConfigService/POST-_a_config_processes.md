






 
List running Processes, with option PeerId or ServiceName filter  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**PeerId** | Id of the peer node | _string_ |   
**ServiceName** | Look for a service name | _string_ |   


### Body Example
```
{
  "PeerId": "string",
  "ServiceName": "string"
}
```






### Response Example (200)
Response Type /definitions/restListProcessesResponse

```
{
  "Processes": [
    {
      "ID": "string",
      "MetricsPort": 10,
      "ParentID": "string",
      "PeerAddress": "string",
      "PeerId": "string",
      "Services": [
        "string"
      ],
      "StartTag": "string"
    }
  ]
}
```


