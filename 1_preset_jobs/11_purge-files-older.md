
Definitely remove files that were not modified since a given period

[:image:1_preset_jobs/purge-files-older.png]

### Trigger(s)
Scheduled


### Parameters
|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|RootFolder|text|pydiods1|false|Root path where to look for files to purge.|
|FilesOlderThan|integer|30|false|(days) Look for files older than XX days|
|Action|select, possible values: Mark for deletion (tag), Delete (delete)|tag|false|Either mark for deletion with a tag, or permanently delete file.|
|MarkTagValue|text|to-be-deleted|false|If Action is "Mark for deletion", value of the tag to set. |


