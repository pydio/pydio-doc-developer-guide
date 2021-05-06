






 
Compute accessible workspaces for a given user  


### Path Parameters

 - **Segment** (_string, required_) 




### Response Example (200)
Response Type /definitions/restUserStateResponse

```
{
  "Workspaces": [
    {
      "Attributes": "string",
      "Description": "string",
      "Label": "string",
      "LastUpdated": 10,
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
      "RootNodes": {},
      "RootUUIDs": [
        "string"
      ],
      "Scope": "string",
      "Slug": "string",
      "UUID": "string"
    }
  ],
  "WorkspacesAccesses": {}
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.2.6 on 20-Apr-2021