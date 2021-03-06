






 
Run a code sample  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Code** |  | _string_ |   
**Input** |  | _#/definitions/jobsActionMessage_ |   
**LastOutputJsonBody** |  | _string_ |   


### Body Example
```
{
  "Code": "string",
  "Input": {
    "Acls": [
      {
        "Action": {
          "Name": "string",
          "Value": "string"
        },
        "ID": "string",
        "NodeID": "string",
        "RoleID": "string",
        "WorkspaceID": "string"
      }
    ],
    "Activities": [
      {
        "accuracy": "[Unknown Type number]",
        "actor": "[Recursive structure]",
        "altitude": "[Unknown Type number]",
        "anyOf": "[Recursive structure]",
        "attachment": "[Recursive structure]",
        "attributedTo": "[Recursive structure]",
        "audience": "[Recursive structure]",
        "bcc": "[Recursive structure]",
        "bto": "[Recursive structure]",
        "cc": "[Recursive structure]",
        "closed": "string",
        "content": "[Recursive structure]",
        "context": "[Recursive structure]",
        "current": "[Recursive structure]",
        "deleted": "string",
        "duration": "string",
        "endTime": "string",
        "first": "[Recursive structure]",
        "formerType": "string",
        "generator": "[Recursive structure]",
        "height": 10,
        "href": "string",
        "hreflang": "string",
        "icon": "[Recursive structure]",
        "id": "string",
        "image": "[Recursive structure]",
        "inReplyTo": "[Recursive structure]",
        "instrument": "[Recursive structure]",
        "items": [
          "[Recursive structure]"
        ],
        "jsonLdContext": "string",
        "last": "[Recursive structure]",
        "latitude": "[Unknown Type number]",
        "location": "[Recursive structure]",
        "longitude": "[Unknown Type number]",
        "mediaType": "string",
        "name": "string",
        "next": "[Recursive structure]",
        "object": "[Recursive structure]",
        "oneOf": "[Recursive structure]",
        "origin": "[Recursive structure]",
        "partOf": "[Recursive structure]",
        "prev": "[Recursive structure]",
        "preview": "[Recursive structure]",
        "published": "string",
        "radius": "[Unknown Type number]",
        "rel": "string",
        "relationship": "[Recursive structure]",
        "replies": "[Recursive structure]",
        "result": "[Recursive structure]",
        "startTime": "string",
        "subject": "[Recursive structure]",
        "summary": "string",
        "tag": "[Recursive structure]",
        "target": "[Recursive structure]",
        "to": "[Recursive structure]",
        "totalItems": 10,
        "type": "string",
        "units": "string",
        "updated": "string",
        "url": "[Recursive structure]",
        "width": 10
      }
    ],
    "Event": {
      "type_url": "string",
      "value": "string"
    },
    "Nodes": [
      {
        "Path": "string"
      }
    ],
    "OutputChain": [
      {
        "ErrorString": "string",
        "Ignored": true,
        "JsonBody": "string",
        "RawBody": "string",
        "StringBody": "string",
        "Success": true,
        "Time": 10
      }
    ],
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
    "Users": [
      {
        "Attributes": {},
        "GroupLabel": "string",
        "GroupPath": "string",
        "IsGroup": true,
        "LastConnected": 10,
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
      }
    ],
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
    ]
  },
  "LastOutputJsonBody": "string"
}
```






### Response Example (200)
Response Type /definitions/entPlaygroundResponse

```
{
  "Code": "string",
  "Input": {
    "Acls": [
      {
        "Action": {
          "Name": "string",
          "Value": "string"
        },
        "ID": "string",
        "NodeID": "string",
        "RoleID": "string",
        "WorkspaceID": "string"
      }
    ],
    "Activities": [
      {
        "accuracy": "[Unknown Type number]",
        "actor": "[Recursive structure]",
        "altitude": "[Unknown Type number]",
        "anyOf": "[Recursive structure]",
        "attachment": "[Recursive structure]",
        "attributedTo": "[Recursive structure]",
        "audience": "[Recursive structure]",
        "bcc": "[Recursive structure]",
        "bto": "[Recursive structure]",
        "cc": "[Recursive structure]",
        "closed": "string",
        "content": "[Recursive structure]",
        "context": "[Recursive structure]",
        "current": "[Recursive structure]",
        "deleted": "string",
        "duration": "string",
        "endTime": "string",
        "first": "[Recursive structure]",
        "formerType": "string",
        "generator": "[Recursive structure]",
        "height": 10,
        "href": "string",
        "hreflang": "string",
        "icon": "[Recursive structure]",
        "id": "string",
        "image": "[Recursive structure]",
        "inReplyTo": "[Recursive structure]",
        "instrument": "[Recursive structure]",
        "items": [
          "[Recursive structure]"
        ],
        "jsonLdContext": "string",
        "last": "[Recursive structure]",
        "latitude": "[Unknown Type number]",
        "location": "[Recursive structure]",
        "longitude": "[Unknown Type number]",
        "mediaType": "string",
        "name": "string",
        "next": "[Recursive structure]",
        "object": "[Recursive structure]",
        "oneOf": "[Recursive structure]",
        "origin": "[Recursive structure]",
        "partOf": "[Recursive structure]",
        "prev": "[Recursive structure]",
        "preview": "[Recursive structure]",
        "published": "string",
        "radius": "[Unknown Type number]",
        "rel": "string",
        "relationship": "[Recursive structure]",
        "replies": "[Recursive structure]",
        "result": "[Recursive structure]",
        "startTime": "string",
        "subject": "[Recursive structure]",
        "summary": "string",
        "tag": "[Recursive structure]",
        "target": "[Recursive structure]",
        "to": "[Recursive structure]",
        "totalItems": 10,
        "type": "string",
        "units": "string",
        "updated": "string",
        "url": "[Recursive structure]",
        "width": 10
      }
    ],
    "Event": {
      "type_url": "string",
      "value": "string"
    },
    "Nodes": [
      {
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
      }
    ],
    "OutputChain": [
      {
        "ErrorString": "string",
        "Ignored": true,
        "JsonBody": "string",
        "RawBody": "string",
        "StringBody": "string",
        "Success": true,
        "Time": 10
      }
    ],
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
    "Users": [
      {
        "Attributes": {},
        "GroupLabel": "string",
        "GroupPath": "string",
        "IsGroup": true,
        "LastConnected": 10,
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
      }
    ],
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
    ]
  },
  "LastOutputJsonBody": "string",
  "Output": "string"
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.2.9 on 1-Jul-2021
