
 Extract files contents using Doconv

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Extract and store textual content** (extractContent)|string|pydio-binaries/doconv-{{.Node.Uuid}}.gz|Doconv can extract content from many files types, that can be indexed by search server|
|**Compress extracted contents** (compressContent)|boolean|true|If switched on, extracted content is compressed before storing|
|**Additional metadata fields** (additionalMeta)|string||Try to find additional known keys in metadata extracted by Doconv. Use comma separated list of field names|





