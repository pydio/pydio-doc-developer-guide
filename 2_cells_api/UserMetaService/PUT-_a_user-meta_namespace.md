






 
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
      ],
      "PoliciesContextEditable": true
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
      ],
      "PoliciesContextEditable": true
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
