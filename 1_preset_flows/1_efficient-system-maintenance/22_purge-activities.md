
Generic purge for users/files activities.

[:image:1_preset_flows/capture-purge-activities.png]

### Purging Activities

Based on the internal gRPC API of the activity service, this flow is useful for housekeeping and maintaining activity DB size under control. Run regularly, it allows you to prune activities (either files/folders activities displayed in the right-hand panel of the interface or users notifications) on  a regular basis. 

Purge is based on various rules : 

 - **Updated** : remove records registered before a given date. It can be combined with **KeepAtLeast** parameter to still make
   sure to keep a given number of rows, even if they were older than the purge dates (avoid empty feeds!).
 - **Number of Records to keep** : remove records based on a minimum and maximum number of rows.

### Defragmenting BoltDB

When not MongoDB-enabled, Cells default setup stores activities on-file inside a "BoltDB", which is a rapid key/value store. This has the downside that delete rows still eat up memory in the DB (and memory consumed by the application). After purging, it is thus necessary to compact the database. This flow provides the required parameters to do so.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|PurgeOn|select, possible values: Files/Folders (0), Users (1)|1|false|Purge users or files/folders activities.|
|OwnerId|text|*|true|Specific user or node ID, or "*" to browse all records.|
|BoxName|select, possible values: Inbox (inbox), Outbox (outbox)|inbox|false|Either Inbox (notifications received) or Outbox (user activity / file activity).|
|KeepAtLeast|integer|1|false|Keep at least X records in the box.|
|KeepMax|integer|100|false|Maximum number of records to be kept.|
|Updated|text|{{now &#124; date_modify &#34;-720h&#34; &#124; unixEpoch}}|false|Limit to purge records registered before this date. Default value is 30 days ago (24*30 hours)|
|CompactDB|boolean|true|false|For Bolt implementation, compact database after purge|
|ClearBackups|boolean|false|false|After DB compaction, remove original db, otherwise keep a backup (default)|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Activities",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Generic purge for users/files activities",
    "Icon": "mdi mdi-delete-sweep",
    "TplCategory": "maintenance",
    "Usage": "### Purging Activities\n\nBased on the internal gRPC API of the activity service, this flow is useful for housekeeping and maintaining activity DB size under control. Run regularly, it allows you to prune activities (either files/folders activities displayed in the right-hand panel of the interface or users notifications) on  a regular basis. \n\nPurge is based on various rules : \n\n - **Updated** : remove records registered before a given date. It can be combined with **KeepAtLeast** parameter to still make\n   sure to keep a given number of rows, even if they were older than the purge dates (avoid empty feeds!).\n - **Number of Records to keep** : remove records based on a minimum and maximum number of rows.\n\n### Defragmenting BoltDB\n\nWhen not MongoDB-enabled, Cells default setup stores activities on-file inside a \"BoltDB\", which is a rapid key/value store. This has the downside that delete rows still eat up memory in the DB (and memory consumed by the application). After purging, it is thus necessary to compact the database. This flow provides the required parameters to do so."
  },
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Activities",
      "Parameters": {
        "method": "activity.ActivityService.PurgeActivities",
        "request": "{\n      \"OwnerType\": {{.JobParameters.PurgeOn}},\n      \"OwnerID\": \"{{.JobParameters.OwnerId}}\",\n      \"BoxName\": \"{{.JobParameters.BoxName}}\",\n      \"minCount\": {{.JobParameters.KeepAtLeast}},\n      \"maxCount\": {{.JobParameters.KeepMax}},\n      \"updatedBeforeTimestamp\": \"{{.JobParameters.Updated}}\",\n      \"CompactDB\": {{.JobParameters.CompactDB}},\n      \"ClearBackups\": {{.JobParameters.ClearBackups}}\n}",
        "service": "pydio.grpc.activity",
        "timeout": "6h"
      }
    }
  ],
  "Parameters": [
    {
      "Name": "PurgeOn",
      "Description": "Purge users or files/folders activities.",
      "Value": "1",
      "Type": "select",
      "JsonChoices": "{\"1\":\"Users\",\"0\":\"Files/Folders\"}"
    },
    {
      "Name": "OwnerId",
      "Description": "Specific user or node ID, or \"*\" to browse all records.",
      "Value": "*",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "BoxName",
      "Description": "Either Inbox (notifications received) or Outbox (user activity / file activity).",
      "Value": "inbox",
      "Type": "select",
      "JsonChoices": "{\"inbox\":\"Inbox\",\"outbox\":\"Outbox\"}"
    },
    {
      "Name": "KeepAtLeast",
      "Description": "Keep at least X records in the box.",
      "Value": "1",
      "Type": "integer"
    },
    {
      "Name": "KeepMax",
      "Description": "Maximum number of records to be kept.",
      "Value": "100",
      "Type": "integer"
    },
    {
      "Name": "Updated",
      "Description": "Limit to purge records registered before this date. Default value is 30 days ago (24*30 hours)",
      "Value": "{{now | date_modify \"-720h\" | unixEpoch}}",
      "Type": "text"
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
