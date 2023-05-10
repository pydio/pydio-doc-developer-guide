
 Recursively copy or move files or folders passed in input

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Destination** (target)|string|<no value>|Where to copy or move original files|
|**Operation Type** (type)|select, possible values: Copy (copy),<br/>Move (move)|copy|Copy or move|
|**Destination points to parent folder** (targetParent)|boolean|true|If set to true, the files are created inside the target folder, otherwise the destination should point to full path of target|
|**Create Destination** (create)|boolean|true|Whether to automatically create the destination folder or not|



### Expected Input
Single-selection of a file or a folder to process


### Expected Input
The processed file or folder at its new location


