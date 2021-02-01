
Purge users/files activities or notifications

[:image:1_preset_jobs/purge-activities.png]

### Trigger(s)
Manual


### Parameters
|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|PurgeOn|select, possible values: Files/Folders (0), Users (1)|1|false|Purge users or files/folders activities.|
|OwnerId|text|*|true|Specific user or node ID, or "*" to browse all records.|
|BoxName|select, possible values: Inbox (inbox), Outbox (outbox)|inbox|false|Either Inbox (notifications received) or Outbox (user activity / file activity).|
|KeepAtLeast|integer|1|false|Keep at least X records in the box.|
|KeepMax|integer|100|false|Maximum number of records to be kept.|
|Updated|text|{{now &#124; date_modify &#34;-720h&#34; &#124; unixEpoch}}|false|Limit to purge records registered before this date. Default value is 30 days ago (24*30 hours)|


