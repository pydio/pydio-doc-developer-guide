
Definitely remove files that were not modified since a given period.

[:image:1_preset_flows/capture-purge-files-older.png]

This flow automates task of purging old files to maintain storage size under control. It can either "Delete" old files directly, or
for more security it can simply put a tag on them so that user is informed that they are to be removed soon, and another job can crawl
tagged files for actual deletion.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|RootFolder|text|pydiods1|false|Root path where to look for files to purge.|
|FilesOlderThan|integer|30|false|(days) Look for files older than XX days|
|Action|select, possible values: Mark for deletion (tag), Delete (delete)|tag|false|Either mark for deletion with a tag, or permanently delete file.|
|MarkTagValue|text|to-be-deleted|false|If Action is "Mark for deletion", value of the tag to set. |



### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Purge Files Older...||Definitely remove files that were not modified since a given period||mdi mdi-delete-forever",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Schedule": {
    "Iso8601Schedule": "R/2020-03-03T20:00:00.471Z/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "Collect Files",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "Ch17ey5Kb2JQYXJhbWV0ZXJzLlJvb3RGb2xkZXJ9fTABggEjPnt7LkpvYlBhcmFtZXRlcnMuRmlsZXNPbGRlclRoYW59fWQ="
            }
          ],
          "Operation": 1
        },
        "Label": "List Root Folder"
      },
      "Parameters": {
        "internalLogger": "false",
        "message": "{{.Node.Path}}",
        "taskLogger": "false"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-input",
          "Label": "Additional Filtering",
          "NodesFilter": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "OgYucHlkaW9wAQ=="
                }
              ]
            },
            "Label": "Exclude .pydio",
            "Description": "Filter out .pydio hidden files from selection."
          },
          "Parameters": {
            "fieldname": "{\"@value\":\"DurationDate\"}",
            "message": "",
            "taskLogger": "false"
          },
          "ChainedActions": [
            {
              "ID": "actions.tree.delete",
              "ActionOutputFilter": {
                "Query": {
                  "SubQueries": [
                    {
                      "type_url": "type.googleapis.com/jobs.ActionOutputSingleQuery",
                      "value": "akB7e2lmIGVxIC5Kb2JQYXJhbWV0ZXJzLkFjdGlvbiAiZGVsZXRlIn19dHJ1ZXt7ZWxzZX19ZmFsc2V7e2VuZH19"
                    }
                  ]
                },
                "Label": "Delete or Tag?"
              },
              "Parameters": {
                "fieldname": "{\"@value\":\"FreeCondition\"}",
                "ignoreNonExisting": "true"
              },
              "FailedFilterActions": [
                {
                  "ID": "actions.put-meta",
                  "Parameters": {
                    "json": "{\"usermeta-tags\":\"{{.JobParameters.MarkTagValue}}\"}"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "MaxConcurrency": 10,
  "Parameters": [
    {
      "Name": "RootFolder",
      "Description": "Root path where to look for files to purge.",
      "Value": "pydiods1",
      "Type": "text"
    },
    {
      "Name": "FilesOlderThan",
      "Description": "(days) Look for files older than XX days",
      "Value": "30",
      "Type": "integer"
    },
    {
      "Name": "Action",
      "Description": "Either mark for deletion with a tag, or permanently delete file.",
      "Value": "tag",
      "Type": "select",
      "JsonChoices": "{\"tag\":\"Mark for deletion\",\"delete\":\"Delete\"}"
    },
    {
      "Name": "MarkTagValue",
      "Description": "If Action is \"Mark for deletion\", value of the tag to set. ",
      "Value": "to-be-deleted",
      "Type": "text"
    }
  ]
}
```
