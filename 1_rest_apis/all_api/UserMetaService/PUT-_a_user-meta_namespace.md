






 
Admin: update namespaces  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Namespaces** |  | _array_ |   
**Operation** |  | _#/definitions/UpdateUserMetaNamespaceRequestUserMetaNsOp_ |   


### Body Example
```
{
  "Namespaces": [
    {
      "Indexable": true,
      "JsonDefinition": "string",
      "Label": "string",
      "Namespace": "string",
      "Order": 10,
      "Policies": [
        {
          "Action": "string",
          "Effect": "string",
          "JsonConditions": "string",
          "Resource": "string",
          "Subject": "string",
          "id": "string"
        }
      ]
    }
  ],
  "Operation": "string"
}
```






### Response Example (200)
Response Type /definitions/idmUpdateUserMetaNamespaceResponse

```
{
  "Namespaces": [
    {
      "Indexable": true,
      "JsonDefinition": "string",
      "Label": "string",
      "Namespace": "string",
      "Order": 10,
      "Policies": [
        {
          "Action": "string",
          "Effect": "string",
          "JsonConditions": "string",
          "Resource": "string",
          "Subject": "string",
          "id": "string"
        }
      ]
    }
  ]
}
```


