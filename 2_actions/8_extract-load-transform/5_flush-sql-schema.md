
 Close temporary handle to DB and optionally flush to file

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Schema Variable Name** (var)|string|DbDescriptor|Name of the variable where schema is stored.|
|**Flush to...** (target)|string|<no value>|Use a path to file, for example {{.Input.Node.Path}} of {{.JobParameters.OutputDB}}|
|**Clean ephemeral file** (clean)|boolean|true|Remove temporary DB from temp folder, should be always done at the end of the job|





