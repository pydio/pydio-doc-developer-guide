






 
List jobs associated with current user  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**EventsOnly** | Filter with only event-based jobs | _boolean_ |   
**JobIDs** | Load jobs by their ID | _array_ |   
**LoadTasks** | Load tasks that correspond to the given TaskStatus | _#/definitions/jobsTaskStatus_ |   
**Owner** | Restrict to a specific owner (current user by default) | _string_ |   
**TasksLimit** | Lmit the number of results | _integer_ |   
**TasksOffset** | Start listing at a given position | _integer_ |   
**TimersOnly** | Filter with only timer-based jobs | _boolean_ |   


### Body Example
```
{
  "EventsOnly": true,
  "JobIDs": [
    "string"
  ],
  "LoadTasks": "string",
  "Owner": "string",
  "TasksLimit": 10,
  "TasksOffset": 10,
  "TimersOnly": true
}
```






### Response Example (200)
Response Type /definitions/restUserJobsCollection

```
{
  "Jobs": [
    {
      "Actions": [
        {
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
                  "type_url": "string",
                  "value": "string"
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
                  "type_url": "string",
                  "value": "string"
                }
              ],
              "groupBy": 10
            },
            "Type": "string"
          },
          "DataSourceFilter": {
            "All": true,
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
                  "type_url": "string",
                  "value": "string"
                }
              ],
              "groupBy": 10
            },
            "Type": "string"
          },
          "DataSourceSelector": {
            "All": true,
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
            "Description": "string",
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
            "Description": "string",
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
                  "type_url": "string",
                  "value": "string"
                }
              ],
              "groupBy": 10
            }
          },
          "Parameters": {},
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
        }
      ],
      "AutoClean": true,
      "AutoStart": true,
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
              "type_url": "string",
              "value": "string"
            }
          ],
          "groupBy": 10
        },
        "Type": "string"
      },
      "Custom": true,
      "DataSourceFilter": {
        "All": true,
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
              "type_url": "string",
              "value": "string"
            }
          ],
          "groupBy": 10
        },
        "Type": "string"
      },
      "EventNames": [
        "string"
      ],
      "ID": "string",
      "IdmFilter": {
        "All": true,
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
              "type_url": "string",
              "value": "string"
            }
          ],
          "groupBy": 10
        },
        "Type": "string"
      },
      "Inactive": true,
      "Label": "string",
      "Languages": [
        "string"
      ],
      "MaxConcurrency": 10,
      "NodeEventFilter": {
        "All": true,
        "Collect": true,
        "Description": "string",
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
              "type_url": "string",
              "value": "string"
            }
          ],
          "groupBy": 10
        }
      },
      "Owner": "string",
      "Parameters": [
        {
          "Description": "string",
          "JsonChoices": "string",
          "Mandatory": true,
          "Name": "string",
          "Type": "string",
          "Value": "string"
        }
      ],
      "ResourcesDependencies": [
        {
          "type_url": "string",
          "value": "string"
        }
      ],
      "Schedule": {
        "Iso8601MinDelta": "string",
        "Iso8601Schedule": "string"
      },
      "Tasks": [
        {
          "ActionsLogs": [
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
                        "type_url": "string",
                        "value": "string"
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
                        "type_url": "string",
                        "value": "string"
                      }
                    ],
                    "groupBy": 10
                  },
                  "Type": "string"
                },
                "DataSourceFilter": {
                  "All": true,
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
                        "type_url": "string",
                        "value": "string"
                      }
                    ],
                    "groupBy": 10
                  },
                  "Type": "string"
                },
                "DataSourceSelector": {
                  "All": true,
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
                  "Description": "string",
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
                  "Description": "string",
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
                        "type_url": "string",
                        "value": "string"
                      }
                    ],
                    "groupBy": 10
                  }
                },
                "Parameters": {},
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
              "InputMessage": {
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
                    "markdown": "string",
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
                "DataSources": [
                  {
                    "ApiKey": "string",
                    "ApiSecret": "string",
                    "CreationDate": 10,
                    "Disabled": true,
                    "EncryptionKey": "string",
                    "EncryptionMode": "string",
                    "FlatStorage": true,
                    "LastSynchronizationDate": 10,
                    "Name": "string",
                    "ObjectsBaseFolder": "string",
                    "ObjectsBucket": "string",
                    "ObjectsHost": "string",
                    "ObjectsPort": 10,
                    "ObjectsSecure": true,
                    "ObjectsServiceName": "string",
                    "PeerAddress": "string",
                    "SkipSyncOnRestart": true,
                    "StorageConfiguration": {},
                    "StorageType": "string",
                    "VersioningPolicyName": "string",
                    "Watch": true
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
              "OutputMessage": {
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
                    "markdown": "string",
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
                "DataSources": [
                  {
                    "ApiKey": "string",
                    "ApiSecret": "string",
                    "CreationDate": 10,
                    "Disabled": true,
                    "EncryptionKey": "string",
                    "EncryptionMode": "string",
                    "FlatStorage": true,
                    "LastSynchronizationDate": 10,
                    "Name": "string",
                    "ObjectsBaseFolder": "string",
                    "ObjectsBucket": "string",
                    "ObjectsHost": "string",
                    "ObjectsPort": 10,
                    "ObjectsSecure": true,
                    "ObjectsServiceName": "string",
                    "PeerAddress": "string",
                    "SkipSyncOnRestart": true,
                    "StorageConfiguration": {},
                    "StorageType": "string",
                    "VersioningPolicyName": "string",
                    "Watch": true
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
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v3.0.5 on 25-Feb-2022
