
 Extract files contents using Doconv

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Extract and store textual content** (extractContent)|string|pydio-binaries/doconv-{{.Node.Uuid}}.gz|Doconv can extract content from many files types, that can be indexed by search server. Extracted content is stored to the specified file, and the url of this file is attached to the 'content ref' metadata.|
|**Content Reference Metadata** (contentRef)|string|pydio:ContentRef|Where to attach textual file content|
|**Compress extracted contents** (compressContent)|boolean|true|If switched on, extracted content is compressed before storing|
|**Additional metadata fields** (additionalMeta)|string||Try to find additional known keys in metadata extracted by Doconv. Use comma separated list of field names|





