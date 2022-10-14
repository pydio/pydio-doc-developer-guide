
Clear activities on files/folders based on criteria.

[:image:1_preset_jobs/capture-purge-files-activities.png]

This flow is a preset version of the "Purge Activities" generic job, providing out-of-the-box parameters for regular pruning of files and folders activities.  It should be run on a regular basis to avoid growing the on-file activities database to a very large size.


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|KeepAtLeast|integer|1|false|Keep at least N activities on each file/folder.|
|KeepMax|integer|10|false|Maximum number of activities to be kept on each file/folder.|
|UpdatedDays|integer|30|false|Purge activities recorded before this date (today minus NN days).|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Files Activities||Clear activities on files/folders based on criteria||mdi mdi-playlist-remove",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Activities",
      "Parameters": {
        "method": "ActivityService.PurgeActivities",
        "request": "{{$computed := .JobParameters.UpdatedDays|mul 24}}{{$hours := list \"-\" $computed \"h\" | join \"\"}}{\n      \"OwnerType\": 0,\n      \"OwnerID\": \"*\",\n      \"BoxName\": \"outbox\",\n      \"minCount\": {{.JobParameters.KeepAtLeast}},\n      \"maxCount\": {{.JobParameters.KeepMax}},\n      \"updatedBeforeTimestamp\": {{now | date_modify $hours | unixEpoch}}\n}",
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
    }
  ]
}
```
