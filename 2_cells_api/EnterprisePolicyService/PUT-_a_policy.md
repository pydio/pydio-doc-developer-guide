






 
[Enterprise Only] Update or create a security policy  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Description** |  | _string_ |   
**LastUpdated** |  | _integer_ |   
**Name** |  | _string_ |   
**OwnerUuid** |  | _string_ |   
**Policies** |  | _array_ |   
**ResourceGroup** |  | _#/definitions/idmPolicyResourceGroup_ |   
**Uuid** |  | _string_ |   


### Body Example
```
{
  "Description": "string",
  "LastUpdated": 10,
  "Name": "string",
  "OwnerUuid": "string",
  "Policies": [
    {
      "actions": [
        "string"
      ],
      "conditions": {},
      "description": "string",
      "effect": "string",
      "id": "string",
      "resources": [
        "string"
      ],
      "subjects": [
        "string"
      ]
    }
  ],
  "ResourceGroup": "string",
  "Uuid": "string"
}
```






### Response Example (200)
Response Type /definitions/idmPolicyGroup

```
{
  "Description": "string",
  "LastUpdated": 10,
  "Name": "string",
  "OwnerUuid": "string",
  "Policies": [
    {
      "actions": [
        "string"
      ],
      "conditions": {},
      "description": "string",
      "effect": "string",
      "id": "string",
      "resources": [
        "string"
      ],
      "subjects": [
        "string"
      ]
    }
  ],
  "ResourceGroup": "string",
  "Uuid": "string"
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
