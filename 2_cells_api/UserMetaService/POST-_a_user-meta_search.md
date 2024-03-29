






 
Search a list of meta by node Id or by User id and by namespace  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**MetaUuids** | Look for meta by their unique identifier | _array_ |   
**Namespace** | Filter meta by their namespace | _string_ |   
**NodeUuids** | Look for all meta for a list of nodes | _array_ |   
**ResourceQuery** | Filter meta by policies query | _#/definitions/serviceResourcePolicyQuery_ |   
**ResourceSubjectOwner** | Filter meta by owner (in the sense of the policies) | _string_ |   


### Body Example
```
{
  "MetaUuids": [
    "string"
  ],
  "Namespace": "string",
  "NodeUuids": [
    "string"
  ],
  "ResourceQuery": {
    "Any": true,
    "Empty": true,
    "Subjects": [
      "string"
    ]
  },
  "ResourceSubjectOwner": "string"
}
```






### Response Example (200)
Response Type /definitions/restUserMetaCollection

```
{
  "Metadatas": [
    {
      "JsonValue": "string",
      "Namespace": "string",
      "NodeUuid": "string",
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
      "ResolvedNode": {
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
      },
      "Uuid": "string"
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
