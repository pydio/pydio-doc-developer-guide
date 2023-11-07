
Check for software available updates, and send an email notification..

[:image:1_preset_flows/capture-check-software-updates.png]

This Flow checks for updates in background and alerts an administrator if an update is available.

### How It Works

The Flow performs a gRPC call to the dedicated update service on a regular basis, and parses the output as JSON. If there is an available update, it will try to notify the user defined by the parameters. To avoid spamming the user, a specific attribute is attached to it as soon as a notification is sent once for a given version.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|NotifyUser|text, possible values: {"type":"string","data":{"defaultValue":"","mandatory":true}}||false|User login who will receive a notification|
|NotifyAttribute|text, possible values: {"type":"string","data":{"defaultValue":"pydio:update-version-notify","mandatory":true}}|pydio:update-version-notify|false|Attribute used to avoid multiple notifications|



### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Check Software Updates",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Check for software available updates, and send an email notification.",
    "Icon": "mdi mdi-update",
    "TplCategory": "maintenance",
    "Usage": "This Flow checks for updates in background and alerts an administrator if an update is available.\n\n### How It Works\n\nThe Flow performs a gRPC call to the dedicated update service on a regular basis, and parses the output as JSON. If there is an available update, it will try to notify the user defined by the parameters. To avoid spamming the user, a specific attribute is attached to it as soon as a notification is sent once for a given version."
  },
  "Schedule": {
    "Iso8601Schedule": "R/2012-01-01T00:00:00.828696-09:00/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Service grpc.update",
      "Parameters": {
        "method": "update.UpdateService.UpdateRequired",
        "request": "{}",
        "service": "pydio.grpc.update"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.build-message",
          "Label": "Extract Version Info",
          "IdmSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "Ch17ey5Kb2JQYXJhbWV0ZXJzLk5vdGlmeVVzZXJ9fQ=="
                }
              ],
              "Operation": 1
            },
            "Label": "Load User"
          },
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "akx7eyhndCAoLkxhc3RPdXRwdXQuSnNvbkFzVmFsdWVzLk1hcC5BdmFpbGFibGVCaW5hcmllcyB8IGxlbikgMCkgfCB0b1N0cmluZ319"
                }
              ]
            },
            "Label": "Check Available Binaries"
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"Login\"}",
            "paramName": "NewVersion",
            "paramType": "string",
            "paramValue": "{{(index .LastOutput.JsonAsValues.Map.AvailableBinaries 0).Version}}"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Do nothing",
              "IdmFilter": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/idm.UserSingleQuery",
                      "value": "KiJ7ey5Kb2JQYXJhbWV0ZXJzLk5vdGlmeUF0dHJpYnV0ZX19MhR7ey5WYXJzLk5ld1ZlcnNpb259fQ=="
                    }
                  ],
                  "Operation": 1
                },
                "Label": "Already Notified?"
              },
              "Parameters": {
                "message": "User already notified, stopping!",
                "sender": "{\"@value\":\"disabled\"}",
                "taskLogger": "true"
              },
              "FailedFilterActions": [
                {
                  "ID": "actions.idm.user-set-attribute",
                  "Label": "Set Attribute",
                  "Parameters": {
                    "attributeName": "{{.JobParameters.NotifyAttribute}}",
                    "attributeValue": "{{.Vars.NewVersion}}",
                    "fieldname": "{\"@value\":\"AttributeName\"}"
                  },
                  "ChainedActions": [
                    {
                      "ID": "actions.cmd.sendmail",
                      "Parameters": {
                        "input-users": "true",
                        "message": "A new update is available",
                        "subject": "Pydio Cells {{.Vars.NewVersion}} is available!"
                      },
                      "ChainedActions": [
                        {
                          "ID": "actions.idm.store",
                          "Label": "Persist User",
                          "Parameters": {
                            "breakOnError": "true",
                            "fieldname": "{\"@value\":\"AttributeName\"}",
                            "objectTypes": "User"
                          }
                        }
                      ]
                    },
                    {
                      "ID": "actions.scheduler.log-advanced",
                      "Label": "Artifact New Version",
                      "Parameters": {
                        "artifact_format": "object",
                        "artifact_label": "New Version",
                        "as_object": "false",
                        "fieldname": "{\"@value\":\"FreeCondition\"}",
                        "internalLogger": "{{.JobParameters.ApplicationLog}}",
                        "is_artifact": "string",
                        "level": "{{",
                        "zap_key": "version-found",
                        "zap_value": "New version is available: {{.Vars.NewVersion}}"
                      }
                    }
                  ]
                }
              ]
            }
          ],
          "FailedFilterActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Label": "Do nothing",
              "Parameters": {
                "message": "No update available, stopping!",
                "sender": "{\"@value\":\"disabled\"}",
                "taskLogger": "true"
              }
            }
          ]
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "NotifyUser",
      "Description": "User login who will receive a notification",
      "Type": "text",
      "JsonChoices": "{\"type\":\"string\",\"data\":{\"defaultValue\":\"\",\"mandatory\":true}}"
    },
    {
      "Name": "NotifyAttribute",
      "Description": "Attribute used to avoid multiple notifications",
      "Value": "pydio:update-version-notify",
      "Type": "text",
      "JsonChoices": "{\"type\":\"string\",\"data\":{\"defaultValue\":\"pydio:update-version-notify\",\"mandatory\":true}}"
    }
  ]
}
```
