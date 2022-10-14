
 Write contents to file (inside a datasource or locally)

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Data input** (input)|select, possible values: Free Contents (below) (contents), LastOutput.JsonBody (jsonbody), LastOutput.RawBody (rawbody), LastOutput.StringBody (stringbody)|contents|Read data from input message or from contents below|
|**Contents** (contents)|textarea|<no value>|Contents to write to file - Use templating if necessary|
|**Local FS** (is_local)|boolean|<no value>|If set, target file is expected to be an absolute path on the server|
|**Target File** (target_file)|string||Full name of the file to write, either inside a datasource or on local FS. If not specified, will be written in application temporary directory|



### Expected Input
Standard input message


### Expected Input
New message containing a Success flag


