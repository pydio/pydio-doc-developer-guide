
Create role automatically based on workspace creation.

[:image:1_preset_jobs/capture-role-for-each-workspace.png]

An advanced flow to demonstrate how Anko Script can provide flexibility to create a role automatically at each workspace
creation, with read/write access to this new workspace.



### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|UuidPrefix|text|access-|false|Prefix for new role uuid, workspace slug will be appended.|
|LabelPrefix|text|Access to workspace |false|Prefix for new role label, workspace label will be appended.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Role for each Workspace||Create role automatically based on workspace creation||mdi mdi-account-convert",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "IDM_CHANGE:WORKSPACE:0"
  ],
  "Actions": [
    {
      "ID": "actions.script.anko",
      "Label": "Create Role \u0026 ACL",
      "Parameters": {
        "fieldname": "{\"@value\":\"scope\"}",
        "paramName": "RoleUuid",
        "paramName_1": "RoleLabel",
        "paramValue": "{{.JobParameters.UuidPrefix}}-{{.Workspace.Slug}}",
        "paramValue_1": "{{.JobParameters.LabelPrefix}}{{.Workspace.Label}}",
        "script": "idm = import(\"idm\")\nfmt = import(\"fmt\")\n\noutput = input\nws = input.Workspaces[0]\nfmt.Println(ws)\nwsRole = new(idm.Role)\nwsRole.Uuid = \"access-\" + ws.Slug\nwsRole.Label = \"Access to \" + ws.Label\noutput.Roles = [wsRole]\n\nacls = make([]*idm.ACL, len(ws.RootNodes)*2)\ncount = 0\nfor nid in ws.RootNodes {\n  n = ws.RootNodes[nid]\n  acls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, \"read\", \"1\")\n  count ++\n\tacls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, \"write\", \"1\")\n  count ++\n}\noutput.Acls = acls"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.store",
          "Label": "Store Role",
          "Parameters": {
            "objectTypes": "Role"
          }
        },
        {
          "ID": "actions.idm.store",
          "Label": "Store ACL",
          "Parameters": {
            "objectTypes": "Acl"
          }
        }
      ]
    }
  ],
  "IdmFilter": {
    "Type": 2,
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/idm.WorkspaceSingleQuery",
          "value": "KAE="
        }
      ]
    },
    "Label": "Filter by scope"
  },
  "Parameters": [
    {
      "Name": "UuidPrefix",
      "Description": "Prefix for new role uuid, workspace slug will be appended.",
      "Value": "access-",
      "Type": "text"
    },
    {
      "Name": "LabelPrefix",
      "Description": "Prefix for new role label, workspace label will be appended.",
      "Value": "Access to workspace ",
      "Type": "text"
    }
  ]
}
```
