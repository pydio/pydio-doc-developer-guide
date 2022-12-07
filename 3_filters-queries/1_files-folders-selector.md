

Files/Folders selector is the building block used to build either Queries or Filters on Nodes. Node types can be either "File" (LEAF) or "Folder" (COLLECTION). 

In the Queries case, depending on the complexity of the query, underlying data loader may directly send request to the internal TreeService or to the Search Engine if metadata are involved. Typically, using bleve-like queries will request the Search Engine, these queries can be built by observing the requests sent by the browser in the main interface Search Engine.

#### Notes

When querying/filtering a structured DataSource, do not forget to filter out ".pydio" hidden files from your queries (using the Basename filter).


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Absolute Paths**|Paths|string|List of nodes paths, exactly matching|
|**Path Prefix**|PathPrefix|string|Recursive listing of nodes below a given path. Combine with the PathDepth parameter to limit request results|
|**Size greater than**|MinSize|integer|Range for file size - size bigger than|
|**MaxSize**|MaxSize|integer|Range for file size - size is smaller than|
|**Modified since**|MinDate|integer|Range for modification date - node was modified after this date|
|**Modified before**|MaxDate|integer|Range for modification date - node was modified before this date|
|**Modification date (use comparison)**|DurationDate|string|Compute MinDate/MaxDate with a Golang duration with a leading comparator (> or <)<br/> Duration may contain "s" second, "m" minute, "d" day.<br/> Example: ">10m" for files modified before 10minutes ago|
|**Type**|Type|Any (UNKNOWN),<br/>File (LEAF),<br/>Folder (COLLECTION)|Limit to a given node type (file or folder)|
|**File name**|FileName|string|Lookup by file basename|
|**Content**|Content|string|Search in textual content (if search engine has this feature enabled)|
|**File name or Content**|FileNameOrContent|string|Search in either filename or content (if search engine has this feature enabled)|
|**Bleve-like search string**|FreeString|string|Bleve-like search query to search for a specific metadata value.<br/> When querying nodes, this will redirect this query to the Search Engine. When filtering an input, this will load an in-memory bleve engine to evaluate the node.<br/><br/> Bleve query string format is a space separated list of `[+-]key:value`, where node meta keys must be prepended with "Meta."<br/> For Example, for tags: `+Meta.usermeta-tags:myvalue`|
|**ETag**|ETag|string|Look for a specific ETag value, may only be useful to lookup for files with __temporary__ ETag|
|**File Extension**|Extension|string|Search files by their extension, use pipe symbol | if you wish to allow many extensions.<br/> Example png|pdf|jpg|
|**Path Depth**|PathDepth|integer|Restrict recursive listing to a given level of the tree starting from root.<br/> Special value "-1" should list only one level in the folder defined by PathPrefix|
|**Node UUIDs**|UUIDs|string|Preset list of specific node defined by their UUIDs|
|**Not**|Not|boolean|Negate this query|

