
Daily dump of DB index for all flat datasources.

[:image:1_preset_jobs/capture-daily-snapshots-flat.png]

As "flat" storage datasource store the document using UUID's, one may be afraid of loosing files and folders tree information by loosing their database. 

This job secures eventual backup/recovery operations by daily snapshoting the index directly inside the storage. By default, it keeps snapshots for ten days (then deletes the oldest ones), but this can be changed using the job parameters. 

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|KeepDays|integer|10|true|Number of snapshot to keep|



### Trigger Type
Scheduled

### JSON Representation

```
{
  "Label": "Daily Snapshots (Flat)||Daily dump of DB index for all flat datasources||mdi mdi-database",
  "Owner": "pydio.system.user",
  "Custom": true,
  "Schedule": {
    "Iso8601Schedule": "R/2012-01-01T01:00:00.828Z/PT24H"
  },
  "Actions": [
    {
      "ID": "actions.cmd.resync",
      "Label": "Daily Snapshot",
      "DataSourceSelector": {
        "Label": "Flat DataSources",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CkYKMHR5cGUuZ29vZ2xlYXBpcy5jb20vb2JqZWN0LkRhdGFTb3VyY2VTaW5nbGVRdWVyeRISag1jZWxsc0ludGVybmFsgAEBEAE="
            },
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CjYKMHR5cGUuZ29vZ2xlYXBpcy5jb20vb2JqZWN0LkRhdGFTb3VyY2VTaW5nbGVRdWVyeRICKAEQAQ=="
            }
          ],
          "Operation": 1
        }
      },
      "Parameters": {
        "path": "write/snapshot-{{now | date \"2006-01-02\"}}.db",
        "service": "pydio.grpc.data.sync.{{.DataSource.Name}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.cmd.resync",
          "Label": "Clean Old Ones",
          "Parameters": {
            "path": "{{$h := mul 24 .JobParameters.KeepDays | printf \"-%dh\"}}delete/snapshot-{{now | dateModify $h | date \"2006-01-02\"}}.db",
            "service": "pydio.grpc.data.sync.{{.DataSource.Name}}"
          }
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "KeepDays",
      "Description": "Number of snapshot to keep",
      "Value": "10",
      "Mandatory": true,
      "Type": "integer"
    }
  ]
}
```
