






 
Templates management for actions  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Template** |  | _#/definitions/entActionTemplate_ |   


### Body Example
```
{
  "Template": {
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
          "SortDesc": true,
          "SortField": "string",
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
      "ChatEventFilter": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        }
      },
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Type": "string"
      },
      "DataFilter": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Timeout": "string"
      },
      "DataSelector": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Timeout": "string"
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
}
```






### Response Example (200)
Response Type /definitions/entPutActionTemplateResponse

```
{
  "Template": {
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
          "SortDesc": true,
          "SortField": "string",
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
      "ChatEventFilter": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        }
      },
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Type": "string"
      },
      "DataFilter": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Timeout": "string"
      },
      "DataSelector": {
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Timeout": "string"
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
          "SubQueries": [
            {
              "@type": "string"
            }
          ],
          "groupBy": 10
        },
        "Range": {
          "Limit": "string",
          "Offset": "string",
          "OrderBy": "string",
          "OrderDir": "string"
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
          "SortDesc": true,
          "SortField": "string",
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
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
