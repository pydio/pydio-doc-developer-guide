






 
Send Control Commands to one or many jobs / tasks  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Cmd** | Type of command to send (None, Pause, Resume, Stop, Delete, RunOnce, Inactive, Active) | _#/definitions/jobsCommand_ |   
**JobId** | Id of the job | _string_ |   
**OwnerId** | Owner of the job | _string_ |   
**TaskId** | Id of the associated task | _string_ |   


### Body Example
```
{
  "Cmd": "string",
  "JobId": "string",
  "OwnerId": "string",
  "TaskId": "string"
}
```






### Response Example (200)
Response Type /definitions/jobsCtrlCommandResponse

```
{
  "Msg": "string"
}
```


