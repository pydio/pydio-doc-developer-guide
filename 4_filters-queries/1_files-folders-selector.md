

Files/Folders selector is the building block used to build either Queries or Filters on Nodes.

Node types can be either "File" (LEAF) or "Folder" (COLLECTION). An important note is to always filter out ".pydio" hidden files from your queries.

In the Queries case, depending on the complexity of the query, underlying data loader may directly send request to the internal TreeService or to the Search Engine if metadata are involved. 
Typically, using bleve-like queries will request the Search Engine, these queries can be built by observing the requests sent by the browser in the main interface Search Engine.


### Parameters
|Label (internal name)|Type|
|---|---|
|**Absolute Paths** (Paths)|string|
|**Path Prefix** (PathPrefix)|string|
|**Size greater than** (MinSize)|integer|
|**MaxSize** (MaxSize)|integer|
|**Modified since** (MinDate)|integer|
|**Modified before** (MaxDate)|integer|
|**Modification date (use comparison)** (DurationDate)|string|
|**Type** (Type)|select, possible values: Any (UNKNOWN), File (LEAF), Folder (COLLECTION)|
|**File name** (FileName)|string|
|**Content** (Content)|string|
|**File name or Content** (FileNameOrContent)|string|
|**Bleve-like search string** (FreeString)|string|
|**File Extension** (Extension)|string|
|**Path Depth** (PathDepth)|integer|
|**Node UUIDs** (UUIDs)|string|
|**Not** (Not)|boolean|

