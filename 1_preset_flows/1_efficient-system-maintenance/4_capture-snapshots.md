
Capture snapshots from both s3 and index for debugging purpose.

[:image:1_preset_flows/capture-capture-snapshots.png]

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|DataSourceName|text||true|Name of the datasource to capture.|
|TargetFolder|text||true|Folder where to store the snapshots (must be created).|
|Format|select, possible values: BoltDB (bolt), JSON (json)|json|true|Output format for the snapshots.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Capture Snapshots||Capture snapshots from both s3 and index for debugging purpose||mdi mdi-reload",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.cmd.capture",
      "DataSourceSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/object.DataSourceSingleQuery",
              "value": "CiF7ey5Kb2JQYXJhbWV0ZXJzLkRhdGFTb3VyY2VOYW1lfX0="
            }
          ]
        }
      },
      "Parameters": {
        "format": "{{.JobParameters.Format}}",
        "prefix": "snapshot-",
        "sides": "both",
        "target": "{{.JobParameters.TargetFolder}}"
      }
    }
  ],
  "Parameters": [
    {
      "Name": "DataSourceName",
      "Description": "Name of the datasource to capture.",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "TargetFolder",
      "Description": "Folder where to store the snapshots (must be created).",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "Format",
      "Description": "Output format for the snapshots.",
      "Value": "json",
      "Mandatory": true,
      "Type": "select",
      "JsonChoices": "{\"json\": \"JSON\", \"bolt\": \"BoltDB\"}"
    }
  ]
}
```
