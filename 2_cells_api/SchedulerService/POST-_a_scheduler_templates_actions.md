






 
Templates management for actions  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**All** |  | _boolean_ |   


### Body Example
```
{
  "All": true
}
```






### Response Example (200)
Response Type /definitions/entListActionTemplatesResponse

```
{
  "Templates": [
    {
      "Action": {
        "ActionOutputFilter": {
          "Description": "string",
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          }
        },
        "BreakAfter": true,
        "Bypass": true,
        "ChainedActions": [
          "[Recursive structure]"
        ],
        "ContextMetaFilter": {
          "Description": "string",
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Type": "string"
        },
        "DataSourceFilter": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
          "Type": "string"
        },
        "DataSourceSelector": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
          "Type": "string"
        },
        "Description": "string",
        "FailedFilterActions": [
          "[Recursive structure]"
        ],
        "ID": "string",
        "IdmFilter": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
          "Type": "string"
        },
        "IdmSelector": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
          "Type": "string"
        },
        "Label": "string",
        "MergeAction": "[Recursive structure]",
        "NodesFilter": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string"
        },
        "NodesSelector": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "FanOutInput": true,
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string"
        },
        "Parameters": {},
        "Timeout": "string",
        "TriggerFilter": {
          "Description": "string",
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          }
        },
        "UsersFilter": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
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
          ]
        },
        "UsersSelector": {
          "All": true,
          "ClearInput": true,
          "Collect": true,
          "Description": "string",
          "Label": "string",
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Timeout": "string",
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
          ]
        }
      },
      "Name": "string"
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.2.6-beta1 on 10-Aug-2023
