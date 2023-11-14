
 Transfer data input to an external WebHook like IFTTT or Zapier. Build your own Json body using templating and send using GET, PUT or POST request.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Webhook URL** (url)|string|<no value>|The WebHook full URL, including http[s]:// protocol.|
|**Method** (method)|select, possible values: GET (get),<br/>PUT (put),<br/>POST (post),<br/>POST MULTIPART (post-multi)|<no value>|HTTP Method used for the Request|
|**Body: valid JSON or @content. For GET, JSON key/values are transformed to QueryString.** (jsonBody)|textarea|<no value>|JsonBody with the key:value sent to the webhook|
|**File Contents** (content-source)|select, possible values: .Input.Node (input),<br/>.LastOutput.StringBody (stringBody),<br/>.LastOutput.RawBody (rawBody),<br/>.LastOutput.JsonBody (jsonBody)|input|Source to be used as file contents either in multiparts or as request body|
|**Read Response From** (responseFrom)|select, possible values: HTTP Body (body),<br/>HTTP Headers (headers)|body|Whether to get response data from response.Body or response.Headers|
|**Name** (multipart-fields.mpart-name)|string|<no value>|Name of the multipart|
|**Value** (multipart-fields.mpart-value)|string|<no value>|Value of the multipart - Use @file to use Input as file upload|
|**Type** (multipart-fields.mpart-ctype)|select, possible values: String (key/value) (string),<br/>File Contents (see below - declare filename in value) (content),<br/>File Path (read contents - use base as filename) (path)|string|Parameter type|
|**Header Name** (headers.header-name)|string|<no value>|Header Name|
|**Header Value** (headers.header-value)|string|<no value>|Header Value|





