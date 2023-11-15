
 Attach or remove resources (root nodes, users) to/from a Cell

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Variable Name** (inputVar)|string|Cell|Cell object stored in variable by previous actions|
|**Resource Type** (op)|Possible Values Below|roots|Resource to modify|
|**&nbsp;&nbsp;&nbsp;&bull; Cell Root Nodes** (roots)|op|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Operation Type** (rootOp)|select, possible values: Add node to roots (a),<br/>Delete node from roots (d)|a|Roots Operations (read from Input.Nodes)|
|**&nbsp;&nbsp;&nbsp;&bull; Cell Users** (acls)|op|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Operation Type** (aclOp)|select, possible values: Add - Read only (r),<br/>Add - Read/Write (rw),<br/>Add - Write only (w),<br/>Remove (d)|r|Users Operations (read from Input.Users)|
|**&nbsp;&nbsp;&nbsp;&bull; Update Expiration Date** (date)|op|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Expiration Date (Timestamp)** (expirationDate)|integer|<no value>|Disable Cell after this date|





