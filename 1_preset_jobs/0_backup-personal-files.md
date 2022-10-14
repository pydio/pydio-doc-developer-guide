
Create a compressed archive for each personal files for all users.

[:image:1_preset_jobs/capture-backup-personal-files.png]

This flow combines various Queries to first list all "internal" users logins, then compute their personal 
folder and pass this location as input to the "Compress" action. Last action is parametrized to select the archive format, its location. 

This flow can be useful for automatic backups, by pointing the final archive generation to e.g. an external S3 encrypted datasource.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ArchivePrefix|text|daily-|false|Used to build archive name.|
|ArchivePath|text|/pydiods1/backups|true|Path where to store all archives.|
|Format|select, possible values: Zip (zip), Tar.gz (tar.gz)|zip|true|Archive format|



### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Backup Personal Files||Create a compressed archive for each personal files for all users||mdi mdi-archive",
  "Owner": "pydio.system.user",
  "Schedule": {
    "Iso8601Schedule": "R/2012-01-01T00:00:00.828696-09:00/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.scheduler.log-input",
      "Label": "User Personal",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "Ci0KJ3R5cGUuZ29vZ2xlYXBpcy5jb20vaWRtLlVzZXJTaW5nbGVRdWVyeRICSAEQAQ=="
            },
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CkYKJ3R5cGUuZ29vZ2xlYXBpcy5jb20vaWRtLlVzZXJTaW5nbGVRdWVyeRIbCg9weWRpby5hbm9uLnVzZXJQAWoGc2hhcmVkEAE="
            }
          ],
          "Operation": 1
        },
        "Label": "List all internal users"
      },
      "Parameters": {
        "internalLogger": "false",
        "message": "User {{.User.Login}}",
        "taskLogger": "true"
      },
      "ChainedActions": [
        {
          "ID": "actions.archive.compress",
          "Label": "Zip user data",
          "Description": "Create an archive for user data",
          "NodesSelector": {
            "Query": {
              "SubQueries": [
                {
                  "type_url": "type.googleapis.com/tree.Query",
                  "value": "ahhwZXJzb25hbC97ey5Vc2VyLkxvZ2lufX0="
                }
              ],
              "Operation": 1
            },
            "Collect": true,
            "Label": "Find personal folder"
          },
          "Parameters": {
            "format": "{{.JobParameters.Format}}",
            "target": "{{.JobParameters.ArchivePath}}/{{.JobParameters.ArchivePrefix}}{{.User.Login}}-{{now | date \"2006-01-02\"}}.{{.JobParameters.Format}}"
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 10,
  "Parameters": [
    {
      "Name": "ArchivePrefix",
      "Description": "Used to build archive name.",
      "Value": "daily-",
      "Type": "text"
    },
    {
      "Name": "ArchivePath",
      "Description": "Path where to store all archives.",
      "Value": "/pydiods1/backups",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Format",
      "Description": "Archive format",
      "Value": "zip",
      "Mandatory": true,
      "Type": "select",
      "JsonChoices": "{\"zip\":\"Zip\",\"tar.gz\":\"Tar.gz\"}"
    }
  ]
}
```
