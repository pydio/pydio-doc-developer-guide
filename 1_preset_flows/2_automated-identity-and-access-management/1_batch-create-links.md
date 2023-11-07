
Create links on all files inside a folder and generate a CSV.

[:image:1_preset_flows/capture-batch-create-links.png]

This Flow automatically creates a unique public link for every files in a folder, and generates a reporting CSV with all links URLs.

### How It Works

The Flow basically loops on all files and call the "Create Link" action on them. The "Merge" features allows to resynchronize the loop and gather all generated links (as metadata of each Node), finally creating a unique CSV. For each node, the Link URL is retrieved with the `GeneratedLinkURL` key in its metadata.

__Note about links__: a link owner must always be provided to create a public link, thus the first action that loads a user by its login at the beginning of the flow.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|FolderPath|text||true|Path to folder where to list and create links|
|OwnerLogin|text|admin|true|A link owner is mandatory to create public link with correct permissions.|
|CSVReport|boolean|false|false|Create a CSV report with all new links.|
|OutputCSVFile|text|GeneratedLinks.csv|true|CSV file where all generated links will be written.|
|ExpirationDate|text||false|Optional expiration date for public links - golang duration to now.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Batch Create Links",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Create links on all files inside a folder and generate a CSV",
    "Icon": "mdi mdi-share-variant",
    "TplCategory": "idm",
    "Usage": "This Flow automatically creates a unique public link for every files in a folder, and generates a reporting CSV with all links URLs.\n\n### How It Works\n\nThe Flow basically loops on all files and call the \"Create Link\" action on them. The \"Merge\" features allows to resynchronize the loop and gather all generated links (as metadata of each Node), finally creating a unique CSV. For each node, the Link URL is retrieved with the `GeneratedLinkURL` key in its metadata.\n\n__Note about links__: a link owner must always be provided to create a public link, thus the first action that loads a user by its login at the beginning of the flow."
  },
  "CreatedAt": 1680601112,
  "ModifiedAt": 1682588307,
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.scheduler.build-message",
      "Label": "Compute Working Dir",
      "Parameters": {
        "Condition": "{\"@value\":\"StringEqualCondition\"}",
        "ctype": "string",
        "fieldname": "{\"@value\":\"PathPrefix\"}",
        "paramName": "WorkingDir",
        "paramType": "string",
        "paramValue": "{{if .Node}}{{.Node.Path}}{{else}}{{.JobParameters.FolderPath}}{{end}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Load Owner User",
          "Description": "Owner user is mandatory to create a public link",
          "IdmSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/idm.UserSingleQuery",
                  "value": "Ch17ey5Kb2JQYXJhbWV0ZXJzLk93bmVyTG9naW59fQ=="
                }
              ],
              "Operation": 1
            },
            "Collect": true
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"Paths\"}",
            "message": "",
            "taskLogger": "false"
          },
          "ChainedActions": [
            {
              "ID": "actions.idm.link.create",
              "Label": "Create Links",
              "NodesSelector": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/tree.Query",
                      "value": "ChR7ey5WYXJzLldvcmtpbmdEaXJ9fTAB"
                    }
                  ],
                  "Operation": 1
                },
                "Label": "All Files in FolderPath"
              },
              "Parameters": {
                "accessTypeDownload": "true",
                "expirationDate": "{{if .JobParameters.ExpirationDate}}{{now | date_modify .JobParameters.ExpirationDate | toStamp}}{{end}}",
                "fieldname": "{\"@value\":\"LastUpdated\"}",
                "foldersTemplateName": "pydio_shared_folder",
                "maxDownloads": "0",
                "onExistsBehavior": "update",
                "password": "",
                "resetDownloads": "false"
              }
            }
          ],
          "MergeAction": {
            "ID": "actions.scheduler.log-input",
            "Label": "Collect Links",
            "Description": "This action synchronize previous actions and collects all outputs.",
            "Parameters": {
              "fieldname": "{\"@value\":\"Paths\"}",
              "message": "Finished",
              "taskLogger": "true"
            },
            "ChainedActions": [
              {
                "ID": "actions.etl.transform",
                "Label": "To CSV Format",
                "Description": "Use output Nodes metadata to create a simple CSV format",
                "ActionOutputFilter": {
                  "Query": {
                    "SubQueries": [
                      {
                        "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                        "value": "ahx7ey5Kb2JQYXJhbWV0ZXJzLkNTVlJlcG9ydH19"
                      }
                    ]
                  },
                  "Label": "CSVReport True?"
                },
                "Parameters": {
                  "Condition": "{\"@value\":\"StringEqualCondition\"}",
                  "cellwidth": "NaN",
                  "cellwidth_1": "NaN",
                  "csv-separator": ",",
                  "dataformat": "string",
                  "dataformat_1": "",
                  "expand": "",
                  "expand_1": "",
                  "fieldname": "{\"@value\":\"PathPrefix\"}",
                  "format": "csv",
                  "input": "input",
                  "jsonpath": "{{.Data.Path | base}}",
                  "jsonpath_1": "$.MetaStore.GeneratedLinkURL",
                  "name": "File",
                  "name_1": "Link",
                  "selector": "$.Nodes"
                },
                "ChainedActions": [
                  {
                    "ID": "actions.tree.put",
                    "Label": "Write CSV File",
                    "Parameters": {
                      "Condition": "{\"@value\":\"StringEqualCondition\"}",
                      "fieldname": "{\"@value\":\"PathPrefix\"}",
                      "input": "rawbody",
                      "target_file": "{{.Vars.WorkingDir}}/{{.JobParameters.OutputCSVFile}}"
                    }
                  }
                ]
              }
            ]
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 4,
  "Parameters": [
    {
      "Name": "FolderPath",
      "Description": "Path to folder where to list and create links",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "OwnerLogin",
      "Description": "A link owner is mandatory to create public link with correct permissions.",
      "Value": "admin",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "CSVReport",
      "Description": "Create a CSV report with all new links.",
      "Value": "false",
      "Type": "boolean"
    },
    {
      "Name": "OutputCSVFile",
      "Description": "CSV file where all generated links will be written.",
      "Value": "GeneratedLinks.csv",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "ExpirationDate",
      "Description": "Optional expiration date for public links - golang duration to now.",
      "Type": "text"
    }
  ],
  "Hooks": [
    {
      "ApiSlug": "batch-create-links",
      "PresetParameters": {
        "CSVReport": "false",
        "OutputCSVFile": "BatchGeneratedLinks.csv",
        "OwnerLogin": "{{.ContextUser.Login}}"
      },
      "AllowOverridePresets": true,
      "Metadata": {
        "action": "{\"name\":\"batch-create-links\",\"gui\":{\"iconClass\":\"mdi mdi-share-variant\",\"text\":\"Batch Create Links\",\"title\":\"batch-create-links\",\"context\":{\"actionBar\":\"true\",\"actionBarGroup\":\"other\",\"selection\":\"false\"}},\"rightsContext\":{\"read\":\"true\",\"userLogged\":\"true\",\"write\":\"true\"}}",
        "formParameters": "[{\"Description\":\"Optional expiration date (timestamp) for public links - number of days starting now.\",\"Name\":\"ExpirationDate\",\"Type\":\"text\"},{\"Type\":\"boolean\",\"Name\":\"CSVReport\",\"Value\":\"true\",\"Description\":\"Create a CSV report with all new links.\"}]",
        "formPrompt": "true",
        "promptMessage": "Create one public link per file. Optionally add an expiration (in hours, e.g. 240h for 10 days), and generate a CSV report with all created links.",
        "successMessage": "Creating public links for all files in folder.",
        "useContextNode": "true"
      },
      "Policies": [
        {
          "Action": 3,
          "Subject": "profile:admin",
          "Effect": 1
        }
      ]
    }
  ]
}
```
