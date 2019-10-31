






 
[Not Implemented]  Start/Stop a service  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Command** | Command to apply (START or STOP) | _#/definitions/ctlServiceCommand_ |   
**NodeName** | Name of the node | _string_ |   
**ServiceName** | Name of the service to stop | _string_ |   


### Body Example
```
{
  "Command": "string",
  "NodeName": "string",
  "ServiceName": "string"
}
```






### Response Example (200)
Response Type /definitions/ctlService

```
{
  "Controllable": true,
  "Description": "string",
  "Name": "string",
  "RunningPeers": [
    {
      "Address": "string",
      "Id": "string",
      "Metadata": {},
      "Port": 10
    }
  ],
  "Status": "string",
  "Tag": "string",
  "Version": "string"
}
```


