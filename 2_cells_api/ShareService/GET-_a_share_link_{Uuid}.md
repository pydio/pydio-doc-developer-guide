






 
Load a share link with all infos  


### Path Parameters

 - **Uuid** (_string, required_) Link Uuid




### Response Example (200)
Response Type /definitions/restShareLink

```
{
  "AccessEnd": "string",
  "AccessStart": "string",
  "CurrentDownloads": "string",
  "Description": "string",
  "Label": "string",
  "LinkHash": "string",
  "LinkUrl": "string",
  "MaxDownloads": "string",
  "PasswordRequired": true,
  "Permissions": [
    "string"
  ],
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
  "RestrictToTargetUsers": true,
  "RootNodes": [
    {
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
    }
  ],
  "TargetUsers": {},
  "UserLogin": "string",
  "UserUuid": "string",
  "Uuid": "string",
  "ViewTemplateName": "string"
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
