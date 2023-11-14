
 Build a custom log or metrics published internally

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Message** (message)|textarea|<no value>|Your custom message published to logs|
|**Level** (level)|select, possible values: DEBUG (debug),<br/>INFO (info),<br/>WARN (warn),<br/>ERROR (error)|info|Select logger level|
|**Key** (zap_key)|string|<no value>|Use an alphanumerical identifier for this field|
|**Application Log** (internalLogger)|boolean|false|Display message in system logs (command line output and pydio.log file)|
|**Audit Log** (auditLogger)|boolean|false|Display message in audit log (see Audits in left-hand menu)|
|**Task Log** (taskLogger)|boolean|false|Display message in task summary|
|**Metric Name (use underscores)** (metric_name)|string|<no value>|Sensor name published to Prometheus|





