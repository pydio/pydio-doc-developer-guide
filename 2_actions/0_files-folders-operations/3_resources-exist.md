
 Check that files or folders are properly indexed

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Retries Maximum time** (max)|string|10s|Leave empty for no retries, or set a maximum time to retry for existence (useful for waiting for new file indexation)|
|**Do not break on error** (ignoreError)|boolean|false|If resource does not exist, pass a message with Success=false but do not break flow.|
|**Path** (nodes.path)|string||File or Folder Path|



### Expected Input
Standard input message


### Expected Input
New message containing a Success flag


