
 Perform a document query on Docstore service and prepare JSON output as {"ID":"","Owner":"", "Data":{}} or a slice of these.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Store ID** (storeId)|string|<no value>|Docstore Store Identifier|
|**Search Query** (metaQuery)|string|<no value>|Bleve-style search query on document JSON|
|**Document Owner** (owner)|string|<no value>|Restrict search to a given owner name|
|**Return Data Only** (dataOnly)|boolean|true|Directly returns the document data, without keeping docstore ID and Owner.|
|**Unique Result Expected** (unique)|boolean|false|Check if you want only one document, otherwise output will be an array of documents.|
|**Fail if Result is Empty** (emptyFails)|boolean|false|If no document are found, fail this step on error, otherwise just Warn and continue.|




### Expected Input
JSON Body


