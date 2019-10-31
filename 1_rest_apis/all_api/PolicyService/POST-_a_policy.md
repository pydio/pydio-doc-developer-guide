






 
List all defined security policies  


### Body Parameters

Name | Description | Type | Required
---|---|---|---






### Response Example (200)
Response Type /definitions/idmListPolicyGroupsResponse

```
{
  "PolicyGroups": [
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
  ],
  "Total": 10
}
```


