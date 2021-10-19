
Purge users notification feeds based on criteria.

[:image:1_preset_jobs/capture-purge-users-notifications.png]

This job is a preset version of the "Purge Activities" generic job, providing out-of-the-box parameters for regular pruning of users notifications (activities). It should be run on a regular basis to avoid growing the on-file activities database to a very large size.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|KeepAtLeast|integer|1|false|Keep at least N notifications in the user inbox.|
|KeepMax|integer|10|false|Maximum number of notifications to be kept in each user's inbox.|
|UpdatedDays|integer|30|false|Purge notifications received before this date (today minus N days).|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Users Notifications||Purge users notification feeds based on criteria||mdi mdi-bell-off",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Notifications",
      "Parameters": {
        "method": "ActivityService.PurgeActivities",
        "request": "{{$computed := .JobParameters.UpdatedDays|mul 24}}{{$hours := list \"-\" $computed \"h\" | join \"\"}}{\n      \"OwnerType\": 1,\n      \"OwnerId\": \"*\",\n      \"BoxName\": \"inbox\",\n      \"MinCount\": {{.JobParameters.KeepAtLeast}},\n      \"MaxCount\": {{.JobParameters.KeepMax}},\n      \"UpdatedBeforeTimestamp\": {{now | date_modify $hours | unixEpoch}}\n}",
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
    }
  ]
}
```
