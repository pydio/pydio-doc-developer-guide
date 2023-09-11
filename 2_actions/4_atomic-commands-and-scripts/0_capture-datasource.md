
 Capture datasource index/s3 into JSON or BoltDB for debugging purpose. Warning, this action expects a unique item to be passed in Input.DataSources (use a selector).

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Target Folder** (target)|string||Target path where to store the generated snapshot files.|
|**File name prefix** (prefix)|string|snapshot-|Prefix for the snapshots. Resulting name is prefix-dsName-source.format|
|**Format** (format)|select, possible values: JSON (json),<br/>BoltDB (bolt)|json|Output format, either JSON or BoltDB.|
|**Capture source/target endpoints** (sides)|select, possible values: S3 and Index (both),<br/>S3 only (s3),<br/>Index only (index)|both|Capture both sides or only of them.|





