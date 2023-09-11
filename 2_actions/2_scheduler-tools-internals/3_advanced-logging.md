
 Build a custom log or metrics published internally

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Message** (message)|textarea|<no value>|Create custom message - If left empty, a summary of the input is used instead.|
|**Level** (level)|select, possible values: DEBUG (debug),<br/>INFO (info),<br/>WARN (warn),<br/>ERROR (error)|info||
|**Key** (zap_key)|string|<no value>||
|**Application Log** (internalLogger)|boolean|false|Display message in general application log|
|**Audit Log** (auditLogger)|boolean|false|Display message in audit log|
|**Task Log** (taskLogger)|boolean|false|Display message in task summary|
|**Metric Name (use underscores)** (metric_name)|string|<no value>||





