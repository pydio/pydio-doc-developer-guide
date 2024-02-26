






 
List Shared Resources for current user or all users  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Limit** | Limit number of results | _integer_ |   
**Offset** | Start listing at a given offset | _integer_ |   
**OwnedBySubject** | If true, will also check filter the output to shares actually owned by subject | _boolean_ |   
**ShareType** | Filter output to a given type | _#/definitions/ListSharedResourcesRequestListShareType_ |   
**Subject** | Will restrict the list to the shares readable by a specific subject.
In user-context, current user is used by default. In admin-context, this can
be any resource policy subject | _string_ |   


### Body Example
```
{
  "Limit": 10,
  "Offset": 10,
  "OwnedBySubject": true,
  "ShareType": "string",
  "Subject": "string"
}
```






### Response Example (200)
Response Type /definitions/restListSharedResourcesResponse

```
{
  "Limit": 10,
  "Offset": 10,
  "Resources": [
    {
      "Cells": [
        {
          "ACLs": {},
          "AccessEnd": "string",
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
          "Uuid": "string"
        }
      ],
      "Link": {
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
      },
      "Node": {
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
    }
  ],
  "Total": 10
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-alpha1 on 26-Feb-2024
