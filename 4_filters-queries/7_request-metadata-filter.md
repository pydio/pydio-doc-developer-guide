

Request Metadata Filter is the building block used to build Filters on request Metadata.

Request filtering can be useful for jobs triggered by events, that will carry the initial metadata of the request that triggered the action.

Conditions use the same syntax as security policies.



### Parameters
|Label (internal name)|Type|
|---|---|
|**Field Name** (FieldName)|select, possible values: Remote Address (RemoteAddress), User Agent (UserAgent), Content Type (ContentType), HTTP Protocol (HttpProtocol), contextMetaField.RequestHost (RequestHost), Request Hostname (RequestHostname), contextMetaField.RequestPort (RequestPort), Request Method (RequestMethod), Request URI (RequestURI), Cookies String (CookiesString), Server Time (ServerTime)|

