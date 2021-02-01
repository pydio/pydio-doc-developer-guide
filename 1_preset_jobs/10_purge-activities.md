
Purge users/files activities or notifications.

[:image:1_preset_jobs/capture-purge-activities.png]

Based on the internal gRPC API of the activity service, this jobs is useful for housekeeping and maintaining activity DB size
under control. Run regularly, it allows you to prune activities (either files/folders activities displayed in the right-hand panel of the interface or users notifications) on 
a regular basis, based on various rules : 

 - **Updated** : remove records registered before a given date. It can be combined with **KeepAtLeast** parameter to still make
   sure to keep a given number of rows, even if they were older than the purge dates (avoid empty feeds!).
 - **KeepMax** : remove records based on a maximum number of rows.



### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|PurgeOn|select, possible values: Users (1), Files/Folders (0)|1|false|Purge users or files/folders activities.|
|OwnerId|text|*|true|Specific user or node ID, or "*" to browse all records.|
|BoxName|select, possible values: Inbox (inbox), Outbox (outbox)|inbox|false|Either Inbox (notifications received) or Outbox (user activity / file activity).|
|KeepAtLeast|integer|1|false|Keep at least X records in the box.|
|KeepMax|integer|100|false|Maximum number of records to be kept.|
|Updated|text|{{now &#124; date_modify &#34;-720h&#34; &#124; unixEpoch}}|false|Limit to purge records registered before this date. Default value is 30 days ago (24*30 hours)|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Purge Activities||Purge users/files activities or notifications||mdi mdi-delete-sweep",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Purge Activities",
      "Parameters": {
        "method": "ActivityService.PurgeActivities",
        "request": "{\n      \"OwnerType\": {{.JobParameters.PurgeOn}},\n      \"OwnerId\": \"{{.JobParameters.OwnerId}}\",\n      \"BoxName\": \"{{.JobParameters.BoxName}}\",\n      \"MinCount\": {{.JobParameters.KeepAtLeast}},\n      \"MaxCount\": {{.JobParameters.KeepMax}},\n      \"Updated\": \"{{.JobParameters.Updated}}\"\n}",
        "service": "pydio.grpc.activity"
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
    }
  ]
}
```
