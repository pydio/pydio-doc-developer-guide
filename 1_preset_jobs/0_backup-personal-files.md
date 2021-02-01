
Create a compressed archive for each personal files for all users

[:image:1_preset_jobs/backup-personal-files.png]

### Trigger(s)
Scheduled


### Parameters
|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|ArchivePrefix|text|daily-|false|Used to build archive name.|
|ArchivePath|text|/pydiods1/backups|true|Path where to store all archives.|
|Format|select, possible values: Zip (zip), Tar.gz (tar.gz)|zip|true|Archive format|


