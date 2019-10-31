






 
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
      "Uuid": "string"
    }
  ]
}
```


