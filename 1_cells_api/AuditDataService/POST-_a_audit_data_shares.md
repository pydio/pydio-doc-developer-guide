






 
[Enterprise Only] Audit all shares across the application  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**LastUpdatedBefore** |  | _integer_ |   
**LastUpdatedSince** |  | _integer_ |   
**Limit** |  | _integer_ |   
**NodeSizeMin** |  | _integer_ |   
**NodeType** |  | _#/definitions/treeNodeType_ |   
**Offset** | Listing options | _integer_ |   
**OwnerUUID** |  | _string_ |   
**RolesReadAND** |  | _boolean_ |   
**RolesReadUUIDs** |  | _array_ |   
**RootPath** | Filter by root path | _string_ |   
**ShareType** |  | _#/definitions/reportsSharedResourceShareType_ |   
**UsersReadCountMax** |  | _integer_ |   
**UsersReadCountMin** |  | _integer_ |   


### Body Example
```
{
  "LastUpdatedBefore": 10,
  "LastUpdatedSince": 10,
  "Limit": 10,
  "NodeSizeMin": 10,
  "NodeType": "string",
  "Offset": 10,
  "OwnerUUID": "string",
  "RolesReadAND": true,
  "RolesReadUUIDs": [
    "string"
  ],
  "RootPath": "string",
  "ShareType": "string",
  "UsersReadCountMax": 10,
  "UsersReadCountMin": 10
}
```






### Response Example (200)
Response Type /definitions/reportsSharedResourcesResponse

```
{
  "Facets": {},
  "Limit": 10,
  "Offset": 10,
  "Resources": [
    {
      "ChildrenSharedResources": 10,
      "Node": {
        "AppearsIn": [
          {
            "Path": "string",
            "WsLabel": "string",
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
      "Workspaces": [
        {
          "BrokenLink": true,
          "OwnerUser": {
            "Attributes": {},
            "GroupLabel": "string",
            "GroupPath": "string",
            "IsGroup": true,
            "Login": "string",
            "OldPassword": "string",
            "Password": "string",
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
            "Roles": [
              {
                "AutoApplies": [
                  "string"
                ],
                "ForceOverride": true,
                "GroupRole": true,
                "IsTeam": true,
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
                "UserRole": true,
                "Uuid": "string"
              }
            ],
            "Uuid": "string"
          },
          "RolesRead": [
            {
              "AutoApplies": [
                "string"
              ],
              "ForceOverride": true,
              "GroupRole": true,
              "IsTeam": true,
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
              "UserRole": true,
              "Uuid": "string"
            }
          ],
          "RolesWrite": [
            {
              "AutoApplies": [
                "string"
              ],
              "ForceOverride": true,
              "GroupRole": true,
              "IsTeam": true,
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
              "UserRole": true,
              "Uuid": "string"
            }
          ],
          "UsersReadCount": 10,
          "UsersWriteCount": 10,
          "Workspace": {
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
        }
      ]
    }
  ],
  "Total": 10
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.1.0-rc2 on 26-Jun-2020
