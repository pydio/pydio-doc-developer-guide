
Recompute files unique hashes (using Cells custom algorithm).

[:image:1_preset_jobs/capture-recompute-hashes.png]

This flow can be used to compute (or recompute) files hashes inside a specific folder. It was primarily introduced in version 4 to attach a new hash signature to files `x-cells-hash` metadata. This new algorithm (`Cells Internal`) was introduced to provide a consistent hashing through the whole application, whatever the upload method (direct PUT, Multipart), the encryption mechanism and the datasource storage.

The "Compute Hash" action can also be used to compute common hashes and attach them to any metadata. Supported algorithm are `md4`, `md5`, `sha1`, `sha256`, `sha512`.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SelectionPrefix|text|pydiods1|true|Use a datasource (or a deeper path) to limit the initial selection.|
|ForceRecompute|boolean|false|false|Force recomputing hash even if it is found|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Recompute hashes||Recompute files unique hashes (using Cells custom algorithm)||mdi mdi-pound-box",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.tree.cells-hash",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "CiJ7ey5Kb2JQYXJhbWV0ZXJzLlNlbGVjdGlvblByZWZpeH19MAE="
            }
          ],
          "Operation": 1
        },
        "Label": "List Files"
      },
      "Parameters": {
        "forceRecompute": "{{.JobParameters.ForceRecompute}}"
      }
    }
  ],
  "MaxConcurrency": 10,
  "Parameters": [
    {
      "Name": "SelectionPrefix",
      "Description": "Use a datasource (or a deeper path) to limit the initial selection.",
      "Value": "pydiods1",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "ForceRecompute",
      "Description": "Force recomputing hash even if it is found",
      "Value": "false",
      "Type": "boolean"
    }
  ],
  "Timeout": "30m"
}
```
