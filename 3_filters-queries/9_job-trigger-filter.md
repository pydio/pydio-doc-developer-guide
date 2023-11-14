

Trigger Filter is useful to group similar tasks under one job and decide what to do based on how the job was triggered.

For example, the thumbnails task will trigger thumbs extraction on Create/Update events, and remove thumbnails on Delete event.


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Scheduled Trigger**|IsSchedule|boolean|Event was triggered by a programed schedule|
|**Manual Trigger**|IsManual|boolean|Event was triggered manually in the CellsFlows/Scheduler console|
|**Triggered by Webhook**|IsApiHook|boolean|Event was triggered by a WebHook (can be in the user space)|
|**Webhook Api Slug**|ApiHookSlug|string|Event was triggered by a specific WebHook (by its unique slug)|
|**Run Parameter Name**|RunParameterName|string|Filter by a name/value on a runtime defined parameter|
|**Run Parameter Value**|RunParameterValue|string|Combined with RunParameterName, value used for comparison|
|**Events**|EventNames|string|Event was trigger by one of these Events|

