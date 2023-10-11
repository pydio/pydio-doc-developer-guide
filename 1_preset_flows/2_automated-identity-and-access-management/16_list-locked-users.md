
Build a list of all users that have locked themselves out.

[:image:1_preset_flows/capture-list-locked-users.png]

This flow looks up for users with a specific attribute name/value combination (`locks` contains `logout`) and 
then uses conditional filtering to build two lists of users: "hidden" ones (that are basically the temporary identifiers
associated with each public link) and the standard ones.

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "List Locked Users||Build a list of all users that have locked themselves out||mdi mdi-account",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "All Locked",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "KgVsb2NrczIIKmxvZ291dCo="
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Users with lock attribute"
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"AttributeName\"}",
        "internalLogger": "false",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.build-message",
          "Label": "Links Message",
          "IdmFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "KgZoaWRkZW4yBHRydWU="
                }
              ],
              "Operation": 1
            },
            "Label": "Hidden (links) vs. internal"
          },
          "Parameters": {
            "ctype": "string",
            "fieldname": "{\"@value\":\"AttributeValue\"}",
            "fromCtl": "{\"@value\":\"default\"}",
            "message": "There are {{len .Input.Users}} hidden users currently locked : \n{{range .Input.Users}}\n- User : {{.Login}}\n{{end}}\nThis means that some public links are currently inaccessible. ",
            "sender": "{\"@value\":\"smtp\"}"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.log-input",
              "Parameters": {
                "fieldname": "{\"@value\":\"AttributeValue\"}",
                "internalLogger": "false",
                "message": "{{.LastOutput.StringBody}}",
                "taskLogger": "true"
              }
            }
          ],
          "FailedFilterActions": [
            {
              "ID": "actions.scheduler.build-message",
              "Parameters": {
                "ctype": "string",
                "message": "There are {{len .Input.Users}} standard users currently locked :  \n{{range .Input.Users}}\n- User : {{.Login}}\n{{end}}",
                "sender": "{\"@value\":\"smtp\"}"
              },
              "ChainedActions": [
                {
                  "ID": "actions.scheduler.log-input",
                  "Parameters": {
                    "fieldname": "{\"@value\":\"AttributeValue\"}",
                    "internalLogger": "false",
                    "message": "{{.LastOutput.StringBody}}",
                    "taskLogger": "true"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```
