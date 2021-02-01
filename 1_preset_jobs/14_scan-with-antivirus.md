
Scan files by sending them to a Clamd server

[:image:1_preset_jobs/capture-scan-with-antivirus.png]

### Trigger(s)
Event-based


### Parameters
|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ServerProtocol|select, possible values: tcp (tcp), unix (unix)|tcp|true|Select protocol used to access server.|
|ServerAddress|text|IP:PORT|true|Select server address. Use IP:PORT for tcp or file path for unix protocol.|
|QuarantineFolder|text|pydiods1/QUARANTINE|true|Folder where to move files when a virus is detected.|
|TagInfected|text|infected|true|Tag file with this value when a virus is detected.|
|TagFailed|text|scan-failed|false|Tag file when virus detection failed (result is unknown).|


