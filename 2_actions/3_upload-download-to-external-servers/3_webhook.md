
 Transfer data input to an external WebHook like IFTTT or Zapier. Build your own Json body using templating and send using GET, PUT or POST request.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Webhook URL** (url)|string|<no value>|The WebHook url|
|**Method** (method)|select, possible values: GET (get),<br/>PUT (put),<br/>POST (post),<br/>POST MULTIPART (post-multi)|<no value>||
|**Body: valid JSON or @content. For GET, JSON key/values are transformed to QueryString.** (jsonBody)|textarea|<no value>|JsonBody with the key:value sent to the webhook|
|**Name** (mpart-name)|string|<no value>|Name of the multipart|
|**File Contents** (content-source)|select, possible values: .Input.Node (input),<br/>.LastOutput.StringBody (stringBody),<br/>.LastOutput.RawBody (rawBody),<br/>.LastOutput.JsonBody (jsonBody)|input|Source to be used as file contents either in multiparts or as request body|
|**Header Name** (header-name)|string|<no value>|Header Name|
|**Handle Response** (response)|select, possible values: Discard (discard),<br/>Body as Json (json),<br/>Body as String (string),<br/>Headers as Json (headers)|discard|Select response management|





