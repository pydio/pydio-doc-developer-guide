
 Use Cells Convert Tools remote service to extract thumbnails

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Convert Tools Endpoint** (srvUrl)|string|http://localhost:9997|Full URL to a running instance of Convert Tools (including http)|
|**Store converted data to file (with expected extension)** (target_path)|string|thumbnails/{{.Node.Uuid}}.jpg|Where to store conversion output|
|**Name** (paramName)|string|<no value>|Parameter Name|
|**HTTP Method** (method)|select, possible values: POST (POST), PUT (PUT)|POST||
|**Restrict stream size (for big files, send only a part)** (limitReader)|integer-bytes|<no value>||





