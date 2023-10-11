
Scan files by sending them to a Clamd server.

[:image:1_preset_flows/capture-scan-with-antivirus.png]

Clamd is a de-facto open source standard for antivirus scanning. This flow assumes a Clamd server is running and can be accessed
either locally (unix socket) or remotely (tcp socket). 

Once scanned, infected files can be put in a dedicated Quarantine folder. If scan fails for other reasons, files are tagged to alert that
they could not be scanned properly.


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ServerProtocol|select, possible values: tcp (tcp), unix (unix)|tcp|true|Select protocol used to access server.|
|ServerAddress|text|IP:PORT|true|Select server address. Use IP:PORT for tcp or file path for unix protocol.|
|QuarantineFolder|text|pydiods1/QUARANTINE|true|Folder where to move files when a virus is detected.|
|TagInfected|text|infected|true|Tag file with this value when a virus is detected.|
|TagFailed|text|scan-failed|false|Tag file when virus detection failed (result is unknown).|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Scan with Antivirus||Scan files by sending them to a Clamd server||mdi mdi-bug",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3"
  ],
  "Actions": [
    {
      "ID": "actions.clamd.scan",
      "Label": "Send to Clamd",
      "Parameters": {
        "address": "{{.JobParameters.ServerProtocol}}://{{.JobParameters.ServerAddress}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Scan Passed",
          "ActionOutputFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                  "value": "CAE="
                }
              ]
            },
            "Label": "Scan passed",
            "Description": "Check if last output string body contains a given text"
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"StringBodyRegexp\"}",
            "message": "Successfully scanned \"{{base .Node.Path}}\"",
            "protocol": "{\"@value\":\"tcp\"}",
            "taskLogger": "true"
          },
          "ChainedActions": [
            {
              "ID": "actions.put-meta",
              "Label": "Tag as infected",
              "ActionOutputFilter": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                      "value": "EgVGT1VORA=="
                    }
                  ]
                },
                "Label": "Output contains \"FOUND\"",
                "Description": "Check if last output string body contains a given text"
              },
              "Parameters": {
                "json": "{\"usermeta-tags\":\"{{.JobParameters.TagInfected}}\"}"
              },
              "ChainedActions": [
                {
                  "ID": "actions.tree.copymove",
                  "Label": "Move to Quarantine",
                  "Parameters": {
                    "create": "true",
                    "fieldname": "{\"@value\":\"StringBodyRegexp\"}",
                    "protocol": "{\"@value\":\"tcp\"}",
                    "recursive": "false",
                    "target": "{{.JobParameters.QuarantineFolder}}",
                    "targetParent": "true",
                    "type": "move"
                  }
                },
                {
                  "ID": "actions.cmd.sendmail",
                  "Label": "Alert Owner",
                  "Bypass": true,
                  "Parameters": {
                    "fieldname": "{\"@value\":\"StringBodyRegexp\"}",
                    "message": "Virus was found on **{{.Node.Path}}**, uploaded by **{{.ContextUser.Login}}**",
                    "sender": "{\"@value\":\"smtp\"}",
                    "subject": "Virus Found",
                    "to-user": "{{.ContextUser.Login}},admin"
                  }
                }
              ]
            }
          ],
          "FailedFilterActions": [
            {
              "ID": "actions.put-meta",
              "Label": "Tag File",
              "Parameters": {
                "json": "{\"usermeta-tags\":\"{{.JobParameters.TagFailed}}\"}"
              }
            }
          ]
        }
      ]
    }
  ],
  "MaxConcurrency": 10,
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CiwKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRIKOgYucHlkaW9wARAB"
        },
        {
          "type_url": "type.googleapis.com/service.Query",
          "value": "CiQKHnR5cGUuZ29vZ2xlYXBpcy5jb20vdHJlZS5RdWVyeRICMAEKJwoedHlwZS5nb29nbGVhcGlzLmNvbS90cmVlLlF1ZXJ5EgUYwKjlBBAB"
        }
      ],
      "Operation": 1
    },
    "Label": "Files \u003c 10MB"
  },
  "Parameters": [
    {
      "Name": "ServerProtocol",
      "Description": "Select protocol used to access server.",
      "Value": "tcp",
      "Mandatory": true,
      "Type": "select",
      "JsonChoices": "{\"tcp\":\"tcp\",\"unix\":\"unix\"}"
    },
    {
      "Name": "ServerAddress",
      "Description": "Select server address. Use IP:PORT for tcp or file path for unix protocol.",
      "Value": "IP:PORT",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "QuarantineFolder",
      "Description": "Folder where to move files when a virus is detected.",
      "Value": "pydiods1/QUARANTINE",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "TagInfected",
      "Description": "Tag file with this value when a virus is detected.",
      "Value": "infected",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "TagFailed",
      "Description": "Tag file when virus detection failed (result is unknown).",
      "Value": "scan-failed",
      "Type": "text"
    }
  ]
}
```
