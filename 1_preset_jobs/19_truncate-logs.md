
Truncate log databases to a given size every day at 6AM

[:image:1_preset_jobs/capture-truncate-logs.png]

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SystemLogSize|integer|50|false|(MB) Size of logs to keep.|
|AuditLogSize|integer||false|(MB) Size of audit logs to keep. Leave empty to avoid truncating audit logs.|



### Trigger Type
Scheduled

