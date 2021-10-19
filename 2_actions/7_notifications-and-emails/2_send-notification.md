
 Send an arbitrary notification in the user's feed

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Title** (title)|string|<no value>|Title used for notification|
|**Message** (markdown)|textarea|<no value>|Markdown message used to build notification.|
|**Collect users from input** (input-users)|boolean|<no value>|Send notification to users collected in input|
|**User Logins** (targetLogins)|string|<no value>|Set a comma-separated list of user logins to be used as recipient.|
|**Attach input Node as [Object]** (attachObject)|boolean|<no value>|Replace [Object] in markdown with a link to the incoming node|
|**Attach context user as [Actor]** (attachActor)|boolean|<no value>|Replace [Actor] in markdown with a link to the incoming contextual object|



### Expected Input
StringBody of the LastOutput


### Expected Input
Output.Success


