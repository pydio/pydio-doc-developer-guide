
Clear activities on files/folders based on criteria.

[:image:1_preset_flows/capture-purge-files-activities.png]

This flow is a preset version of the "Purge Activities" generic job, providing out-of-the-box parameters for regular pruning of files and folders activities.  It should be run on a regular basis to avoid growing the on-file activities database to a very large size.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|KeepAtLeast|integer|1|false|Keep at least N activities on each file/folder.|
|KeepMax|integer|10|false|Maximum number of activities to be kept on each file/folder.|
|UpdatedDays|integer|30|false|Purge activities recorded before this date (today minus NN days).|
|CompactDB|boolean|true|false|For Bolt implementation, compact database after purge|
|ClearBackups|boolean|false|false|After DB compaction, remove original db, otherwise keep a backup (default)|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Files Activities",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Clear activities on files/folders based on criteria",
    "Icon": "mdi mdi-playlist-remove",
    "TplCategory": "maintenance",
    "Usage": "This flow is a preset version of the \"Purge Activities\" generic job, providing out-of-the-box parameters for regular pruning of files and folders activities.  It should be run on a regular basis to avoid growing the on-file activities database to a very large size."
  },
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Activities",
      "Parameters": {
        "method": "activity.ActivityService.PurgeActivities",
        "request": "{{$computed := .JobParameters.UpdatedDays|mul 24}}{{$hours := list \"-\" $computed \"h\" | join \"\"}}{\n      \"OwnerType\": 0,\n      \"OwnerID\": \"*\",\n      \"BoxName\": \"outbox\",\n      \"minCount\": {{.JobParameters.KeepAtLeast}},\n      \"maxCount\": {{.JobParameters.KeepMax}},\n      \"updatedBeforeTimestamp\": {{now | date_modify $hours | unixEpoch}},\n     \"CompactDB\": {{.JobParameters.CompactDB}},\n      \"ClearBackups\": {{.JobParameters.ClearBackups}}\n}",
        "service": "pydio.grpc.activity",
        "timeout": "6h"
      }
    }
  ],
  "Parameters": [
    {
      "Name": "KeepAtLeast",
      "Description": "Keep at least N activities on each file/folder.",
      "Value": "1",
      "Type": "integer"
    },
    {
      "Name": "KeepMax",
      "Description": "Maximum number of activities to be kept on each file/folder.",
      "Value": "10",
      "Type": "integer"
    },
    {
      "Name": "UpdatedDays",
      "Description": "Purge activities recorded before this date (today minus NN days).",
      "Value": "30",
      "Type": "integer"
    },
    {
      "Name": "CompactDB",
      "Description": "For Bolt implementation, compact database after purge",
      "Value": "true",
      "Type": "boolean"
    },
    {
      "Name": "ClearBackups",
      "Description": "After DB compaction, remove original db, otherwise keep a backup (default)",
      "Value": "false",
      "Type": "boolean"
    }
  ]
}
```
