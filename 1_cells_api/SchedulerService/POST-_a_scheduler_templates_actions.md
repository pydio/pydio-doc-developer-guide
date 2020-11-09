






 
Templates management for actions  


### Body Parameters

Name | Description | Type | Required
---|---|---|---






### Response Example (200)
Response Type /definitions/entListActionTemplatesResponse

```
{
  "Templates": [
    {
      "Action": {
        "ActionOutputFilter": {
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          }
        },
        "ChainedActions": [
          "[Recursive structure]"
        ],
        "ContextMetaFilter": {
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          },
          "Type": "string"
        },
        "Description": "string",
        "FailedFilterActions": [
          "[Recursive structure]"
        ],
        "ID": "string",
        "IdmFilter": {
          "All": true,
          "Collect": true,
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          },
          "Type": "string"
        },
        "IdmSelector": {
          "All": true,
          "Collect": true,
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          },
          "Type": "string"
        },
        "Label": "string",
        "NodesFilter": {
          "All": true,
          "Collect": true,
          "Pathes": [
            "string"
          ],
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          }
        },
        "NodesSelector": {
          "All": true,
          "Collect": true,
          "Pathes": [
            "string"
          ],
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          }
        },
        "Parameters": {},
        "UsersFilter": {
          "All": true,
          "Collect": true,
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          },
          "Users": [
            {
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
            }
          ]
        },
        "UsersSelector": {
          "All": true,
          "Collect": true,
          "Query": {
            "Limit": "string",
            "Offset": "string",
            "Operation": "string",
            "ResourcePolicyQuery": {
              "Any": true,
              "Empty": true,
              "Subjects": [
                "string"
              ]
            },
            "SubQueries": [
              {
                "type_url": "string",
                "value": "string"
              }
            ],
            "groupBy": 10
          },
          "Users": [
            {
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
            }
          ]
        }
      },
      "Name": "string"
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.1.8 on 9-Nov-2020
