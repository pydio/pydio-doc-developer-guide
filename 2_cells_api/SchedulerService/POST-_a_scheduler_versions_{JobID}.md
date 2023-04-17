






 
  


### Body Parameters

Name | Description | Type | Required
---|---|---|---






### Response Example (200)
Response Type /definitions/entListJobVersionsResponse

```
{
  "Versions": [
    {
      "Date": 10,
      "ID": "string",
      "Job": {
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
          }
        ],
        "AutoClean": true,
        "AutoRestart": true,
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
                "@type": "string"
              }
            ],
            "groupBy": 10
          },
          "Type": "string"
        },
        "CreatedAt": 10,
        "Custom": true,
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
        "EventNames": [
          "string"
        ],
        "Hooks": [
          {
            "AllowOverridePresets": true,
            "ApiSlug": "string",
            "Metadata": {},
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
            "PresetParameters": {}
          }
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
        "Inactive": true,
        "Label": "string",
        "Languages": [
          "string"
        ],
        "MaxConcurrency": 10,
        "MergeAction": {
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
        "ModifiedAt": 10,
        "NodeEventFilter": {
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
            "@type": "string"
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
                      "@context": "string",
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
                    "@type": "string"
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
                      "Time": 10,
                      "Vars": {}
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
                      "@context": "string",
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
                    "@type": "string"
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
                      "Time": 10,
                      "Vars": {}
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
        "Timeout": "string",
        "UserEventFilter": {
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
        "VersionMeta": {}
      },
      "JobID": "string",
      "Label": "string"
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.2.0-alpha1 on 17-Apr-2023
