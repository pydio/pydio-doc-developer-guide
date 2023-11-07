
Import users from a CSV file uploaded at a given location.

[:image:1_preset_flows/capture-import-users-csv.png]

This flow allows automatic import of a CSV file containing users into Cells internal directory.

It takes a normal Cells file as input, and listen for its changes (triggers on "Create Node" or "Update Content"). That way you just have to setup a specific 
location in a workspace accessed by administrator to upload an updated CSV and have it parsed and imported automatically.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|FileLocation|text|personal/admin/imports/|true|Folder path where to watch for CSV files created or modified.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Import Users (CSV)",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Import users from a CSV file uploaded at a given location",
    "Icon": "mdi mdi-account-plus",
    "TplCategory": "idm",
    "Usage": "This flow allows automatic import of a CSV file containing users into Cells internal directory.\n\nIt takes a normal Cells file as input, and listen for its changes (triggers on \"Create Node\" or \"Update Content\"). That way you just have to setup a specific \nlocation in a workspace accessed by administrator to upload an updated CSV and have it parsed and imported automatically."
  },
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:0",
    "NODE_CHANGE:3"
  ],
  "Actions": [
    {
      "ID": "actions.etl.users-csv",
      "Parameters": {
        "attribute": "Login",
        "attribute_1": "Password",
        "attribute_2": "Attributes.displayName",
        "attribute_3": "Attributes.email",
        "comma": ";",
        "comment": "#",
        "csv": "Login",
        "csv_1": "Password",
        "csv_2": "Name",
        "csv_3": "Email",
        "fieldname": "{\"@value\":\"PathPrefix\"}",
        "group": "",
        "trimLeadingSpace": "true"
      }
    }
  ],
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "UgNjc3Y="
        },
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "Ch97ey5Kb2JQYXJhbWV0ZXJzLkZpbGVMb2NhdGlvbn19"
        }
      ],
      "Operation": 1
    },
    "Label": "Watch CSV files in location"
  },
  "Parameters": [
    {
      "Name": "FileLocation",
      "Description": "Folder path where to watch for CSV files created or modified.",
      "Value": "personal/admin/imports/",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
