






 
[Enterprise Only] Put a job in the scheduler  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Job** |  | _#/definitions/jobsJob_ |   


### Body Example
```
{
  "Job": {
    "Actions": [
      {
        "ChainedActions": [
          "[Recursive structure]"
        ],
        "ID": "string",
        "NodesFilter": {
          "All": true,
          "Collect": true,
          "Nodes": [
            {
              "Path": "string"
            }
          ],
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
          "Nodes": [
            {
              "Path": "string"
            }
          ],
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
        "SourceFilter": {
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
      }
    ],
    "AutoClean": true,
    "AutoStart": true,
    "EventNames": [
      "string"
    ],
    "ID": "string",
    "Inactive": true,
    "Label": "string",
    "Languages": [
      "string"
    ],
    "MaxConcurrency": 10,
    "NodeEventFilter": {
      "All": true,
      "Collect": true,
      "Nodes": [
        {
          "Path": "string"
        }
      ],
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
    "Owner": "string",
    "Schedule": {
      "Iso8601MinDelta": "string",
      "Iso8601Schedule": "string"
    },
    "Tasks": [
      {
        "ActionsLogs": [
          {
            "Action": {
              "ChainedActions": [
                "[Recursive structure]"
              ],
              "ID": "string",
              "NodesFilter": {
                "All": true,
                "Collect": true,
                "Nodes": [
                  {
                    "Path": "string"
                  }
                ],
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
                "Nodes": [
                  {
                    "Path": "string"
                  }
                ],
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
              "SourceFilter": {
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
            "InputMessage": {
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
            "OutputMessage": {
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
          }
        ],
        "CanPause": true,
        "CanStop": true,
        "EndTime": 10,
        "HasProgress": true,
        "ID": "string",
        "JobID": "string",
        "Progress": "[Unknown Type number]",
        "StartTime": 10,
        "Status": "string",
        "StatusMessage": "string",
        "TriggerOwner": "string"
      }
    ],
    "TasksSilentUpdate": true,
    "UserEventFilter": {
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
  }
}
```






### Response Example (200)
Response Type /definitions/jobsPutJobResponse

```
{
  "Job": {
    "Actions": [
      {
        "ChainedActions": [
          "[Recursive structure]"
        ],
        "ID": "string",
        "NodesFilter": {
          "All": true,
          "Collect": true,
          "Nodes": [
            {
              "AppearsIn": [
                {
                  "Path": "string",
                  "WsLabel": "string",
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
          "Nodes": [
            {
              "AppearsIn": [
                {
                  "Path": "string",
                  "WsLabel": "string",
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
        "SourceFilter": {
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
      }
    ],
    "AutoClean": true,
    "AutoStart": true,
    "EventNames": [
      "string"
    ],
    "ID": "string",
    "Inactive": true,
    "Label": "string",
    "Languages": [
      "string"
    ],
    "MaxConcurrency": 10,
    "NodeEventFilter": {
      "All": true,
      "Collect": true,
      "Nodes": [
        {
          "AppearsIn": [
            {
              "Path": "string",
              "WsLabel": "string",
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
    "Owner": "string",
    "Schedule": {
      "Iso8601MinDelta": "string",
      "Iso8601Schedule": "string"
    },
    "Tasks": [
      {
        "ActionsLogs": [
          {
            "Action": {
              "ChainedActions": [
                "[Recursive structure]"
              ],
              "ID": "string",
              "NodesFilter": {
                "All": true,
                "Collect": true,
                "Nodes": [
                  {
                    "AppearsIn": [
                      {
                        "Path": "string",
                        "WsLabel": "string",
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
                "Nodes": [
                  {
                    "AppearsIn": [
                      {
                        "Path": "string",
                        "WsLabel": "string",
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
              "SourceFilter": {
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
            "InputMessage": {
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
            "OutputMessage": {
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
          }
        ],
        "CanPause": true,
        "CanStop": true,
        "EndTime": 10,
        "HasProgress": true,
        "ID": "string",
        "JobID": "string",
        "Progress": "[Unknown Type number]",
        "StartTime": 10,
        "Status": "string",
        "StatusMessage": "string",
        "TriggerOwner": "string"
      }
    ],
    "TasksSilentUpdate": true,
    "UserEventFilter": {
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
  }
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v2.0.4-rc1 on 20-Feb-2020
