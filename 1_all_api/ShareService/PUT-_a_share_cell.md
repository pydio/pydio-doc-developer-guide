






 
Put or Create a share room  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**CreateEmptyRoot** | Whether to create a dedicated folder for this cell at creation | _boolean_ |   
**Room** | Content of the Cell (Room is legacy name) | _#/definitions/restCell_ |   


### Body Example
```
{
  "CreateEmptyRoot": true,
  "Room": {
    "ACLs": {},
    "Description": "string",
    "Label": "string",
    "Policies": [
      {
        "Action": "string",
        "Effect": "string",
        "JsonConditions": "string",
        "Resource": "string",
        "Subject": "string",
        "id": "string"
      }
    ],
    "PoliciesContextEditable": true,
    "RootNodes": [
      {
        "Path": "string"
      }
    ],
    "Uuid": "string"
  }
}
```






### Response Example (200)
Response Type /definitions/restCell

```
{
  "ACLs": {},
  "Description": "string",
  "Label": "string",
  "Policies": [
    {
      "Action": "string",
      "Effect": "string",
      "JsonConditions": "string",
      "Resource": "string",
      "Subject": "string",
      "id": "string"
    }
  ],
  "PoliciesContextEditable": true,
  "RootNodes": [
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
  "Uuid": "string"
}
```


