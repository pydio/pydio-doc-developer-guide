

Users selector is the building block used to build either Queries or Filters on Users.

Users can be of type "User" or "Groups". To filter or look for a specific attribute value, use both AttributeName and AttributeValue combined. 


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Uuid**|Uuid|string|Lookup a user by its Uuid|
|**Login**|Login|string|Lookup a user by Login|
|**Password**|Password|string|Lookup by hashed password, probably never used|
|**Group Path**|GroupPath|string|List users below a specific on group path|
|**Recursive**|Recursive|boolean|When searching on group path, load all users and groups recursively|
|**Full Path**|FullPath|string|Search one specific Group by its path|
|**Attribute Name**|AttributeName|string|Search on attribute, to be combined with AttributeValue|
|**Attribute Value**|AttributeValue|string|Value used for comparison|
|**Has any value**|AttributeAnyValue|boolean|Search for the existence of the AttributeName, whatever its value|
|**Has Role**|HasRole|string|Search users having a specific role UUID|
|**Object Type**|NodeType|Any (UNKNOWN),<br/>User (USER),<br/>Group (GROUP)|Filter/Search by NodeType (generally user or group)|
|**Has Profile**|HasProfile|string|Lookup by profile name (e.g. admin, standard, shared). This is a shortcut for searching on the pydio:profile attribute|
|**Connected Since**|ConnectedSince|string|Lookup by last connection date. Must be a timestamp with a leading comparison symbol ('<' or '>')|
|**not**|not|boolean|Internal - Negate the query/filter result|

