






 
Send a control command to clean tasks on a given job  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**JobId** | Id of the job | _string_ |   
**PruneLimit** | If deleting by status, optionally keep only a number of tasks | _integer_ |   
**Status** | If no TaskID and/or no JobID are passed, delete tasks by status | _array_ |   
**TaskID** | Ids of tasks to delete | _array_ |   


### Body Example
```
{
  "JobId": "string",
  "PruneLimit": 10,
  "Status": [
    "string"
  ],
  "TaskID": [
    "string"
  ]
}
```






### Response Example (200)
Response Type /definitions/jobsDeleteTasksResponse

```
{
  "Deleted": [
    "string"
  ]
}
```


