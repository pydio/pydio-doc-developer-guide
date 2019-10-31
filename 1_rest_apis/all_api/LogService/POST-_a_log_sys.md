






 
Technical Logs, in Json or CSV format  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Format** |  | _#/definitions/ListLogRequestLogFormat_ |   
**Page** | Start at page | _integer_ |   
**Query** | Bleve-type Query stsring | _string_ |   
**Size** | Number of results | _integer_ |   


### Body Example
```
{
  "Format": "string",
  "Page": 10,
  "Query": "string",
  "Size": 10
}
```






### Response Example (200)
Response Type /definitions/restLogMessageCollection

```
{
  "Logs": [
    {
      "GroupPath": "string",
      "HttpProtocol": "string",
      "Level": "string",
      "Logger": "string",
      "Msg": "string",
      "MsgId": "string",
      "NodePath": "string",
      "NodeUuid": "string",
      "OperationLabel": "string",
      "OperationUuid": "string",
      "Profile": "string",
      "RemoteAddress": "string",
      "RoleUuids": [
        "string"
      ],
      "SpanParentUuid": "string",
      "SpanRootUuid": "string",
      "SpanUuid": "string",
      "Ts": 10,
      "UserAgent": "string",
      "UserName": "string",
      "UserUuid": "string",
      "WsScope": "string",
      "WsUuid": "string"
    }
  ]
}
```


