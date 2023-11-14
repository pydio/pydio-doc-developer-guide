
 Extract files contents by querying a running Apache Tika server

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Tika Service Address** (serverAddress)|string|localhost:9998|Use HOSTNAME or IP:PORT, http://host:port will be used to query Tika server|
|**Extract and store textual content** (extractContent)|string|pydio-binaries/tika-{{.Node.Uuid}}.gz|Tika can extract content from many files types, that can be indexed by search server. Extracted content is stored to the specified file, and the url of this file is attached to the 'content ref' metadata.|
|**Content Reference Metadata** (contentRef)|string|pydio:ContentRef|Where to attach textual file content|
|**Compress extracted contents** (compressContent)|boolean|true|If switched on, extracted content is compressed before storing|
|**Additional metadata fields** (additionalMeta)|string|Content-Type|Try to find additional known keys in metadata extracted by Tika. Use comma separated list of field names|





