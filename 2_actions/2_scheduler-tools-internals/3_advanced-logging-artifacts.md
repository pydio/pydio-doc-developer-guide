
 Build a custom log or metrics published internally

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Message** (message)|textarea|<no value>|Your custom message published to logs|
|**Level** (level)|select, possible values: DEBUG (debug),<br/>INFO (info),<br/>WARN (warn),<br/>ERROR (error)|info|Select logger level|
|**Key** (zaps.zap_key)|string|<no value>|Use an alphanumerical identifier for this field|
|**Value** (zaps.zap_value)|string|<no value>|Publish a simple string or a json-encoded object.|
|**Value is JSON** (zaps.as_object)|boolean|false|If set to true, the Value will be decoded from JSON to be properly stored as Zap. Any basic types are allowed (object, array of objects, integers, ...)|
|**Publish as Artifact** (zaps.is_artifact)|select, possible values: Other (object) (object),<br/>String (string),<br/>Node (node),<br/>User (user),<br/>Role (role),<br/>Acl (acl),<br/>Workspace (workspace),<br/>Datasource (datasource),<br/>Action Output (output)|<no value>|Publishing this field as artifact will 'pin' it to the task global summary. You can specify a type to help with display. Note the artifacts are always published to the 'Task' logger.|
|**Artifact Label** (zaps.artifact_label)|string|<no value>|Give a human-readable label to this artifact|
|**Artifact Display** (zaps.artifact_format)|select, possible values: Object/String (object),<br/>Objects List (list),<br/>Columnar Data (columns)|object|Additional formatting hint for better display (is it an object or a list of objects...?)|
|**Application Log** (internalLogger)|boolean|false|Display message in system logs (command line output and pydio.log file)|
|**Audit Log** (auditLogger)|boolean|false|Display message in audit log (see Audits in left-hand menu)|
|**Task Log** (taskLogger)|boolean|false|Display message in task summary|
|**Metric Name (use underscores)** (metrics.metric_name)|string|<no value>|Sensor name published to Prometheus|
|**Metric Type** (metrics.metric_type)|select, possible values: Counter (counter),<br/>Gauge (gauge)|counter|Sensor type, either a Counter (perpetual increment) or a Gauge (varying value).|
|**Metric Value (numerical)** (metrics.metric_value)|string|<no value>|Value to publish, will be converted to Int64|
|**Optional Tags** (metrics.metric_tags)|string|<no value>|Additional tagging of the sensor, you can use name1:value1,name2:value2, etc.|





