

Trigger Filter is useful to group similar tasks under one job and decide what to do based on how the job was triggered.

For example, the thumbnails task will trigger thumbs extraction on Create/Update events, and remove thumbnails on Delete event.


### Parameters
|Label (internal name)|Type|
|---|---|
|**Scheduled Trigger** (IsSchedule)|boolean|
|**Manual Trigger** (IsManual)|boolean|
|**Events** (EventNames)|string|

