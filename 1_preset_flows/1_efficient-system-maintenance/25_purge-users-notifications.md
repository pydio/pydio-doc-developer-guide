
Purge users notification feeds based on criteria.

[:image:1_preset_flows/capture-purge-users-notifications.png]

This flow is a preset version of the "Purge Activities" generic job, providing out-of-the-box parameters for regular pruning of users notifications (activities). It should be run on a regular basis to avoid growing the on-file activities database to a very large size.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|KeepAtLeast|integer|1|false|Keep at least N notifications in the user inbox.|
|KeepMax|integer|10|false|Maximum number of notifications to be kept in each user's inbox.|
|UpdatedDays|integer|30|false|Purge notifications received before this date (today minus N days).|
|CompactDB|boolean|true|false|For Bolt implementation, compact database after purge|
|ClearBackups|boolean|false|false|After DB compaction, remove original db, otherwise keep a backup (default)|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Users Notifications",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Purge users notification feeds based on criteria",
    "Icon": "mdi mdi-bell-off",
    "TplCategory": "maintenance",
    "Usage": "This flow is a preset version of the \"Purge Activities\" generic job, providing out-of-the-box parameters for regular pruning of users notifications (activities). It should be run on a regular basis to avoid growing the on-file activities database to a very large size."
  },
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Notifications",
      "Parameters": {
        "method": "activity.ActivityService.PurgeActivities",
        "request": "{{$computed := .JobParameters.UpdatedDays|mul 24}}{{$hours := list \"-\" $computed \"h\" | join \"\"}}{\n      \"OwnerType\": 1,\n      \"OwnerID\": \"*\",\n      \"BoxName\": \"inbox\",\n      \"minCount\": {{.JobParameters.KeepAtLeast}},\n      \"maxCount\": {{.JobParameters.KeepMax}},\n      \"updatedBeforeTimestamp\": {{now | date_modify $hours | unixEpoch}},\n     \"CompactDB\": {{.JobParameters.CompactDB}},\n      \"ClearBackups\": {{.JobParameters.ClearBackups}}\n}",
        "service": "pydio.grpc.activity",
        "timeout": "6h"
      }
    }
  ],
  "Parameters": [
    {
      "Name": "KeepAtLeast",
      "Description": "Keep at least N notifications in the user inbox.",
      "Value": "1",
      "Type": "integer"
    },
    {
      "Name": "KeepMax",
      "Description": "Maximum number of notifications to be kept in each user's inbox.",
      "Value": "10",
      "Type": "integer"
    },
    {
      "Name": "UpdatedDays",
      "Description": "Purge notifications received before this date (today minus N days).",
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
