
Create role automatically based on workspace creation.

[:image:1_preset_flows/capture-role-for-each-workspace.png]

An advanced flow showing how Anko Script can provide flexibility to create a role automatically

### How It Works

At each workspace creation, an ANKO script creates a new idm.Role object, and the associated ACLs to provide read/write access to the new workspace. The Script is explained below.


```
// Imports, from both standard libraries (fmt) and Cells-provided ones (idm)
fmt = import("fmt")
idm = import("idm")

// **output** is the variable that the script is expected to fill
// It must be a jobs.ActionMessage struct, so we start here by cloning the input.
// Then we read the workspace passed as input by the job Trigger Event.
output = input
ws = input.Workspaces[0]
fmt.Println(ws)

// Create a new struct idm.Role and assign it to output.Roles
wsRole = new(idm.Role)
wsRole.Uuid = "access-" + ws.Slug
wsRole.Label = "Access to " + ws.Label
output.Roles = [wsRole]

// Same with ACLs. Here we use internal functions provided in the script environment IdmService.MakeACL.
acls = make([]*idm.ACL, len(ws.RootNodes)*2)
count = 0
for nid in ws.RootNodes {
  n = ws.RootNodes[nid]
  acls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, "read", "1")
  count ++
	acls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, "write", "1")
  count ++
}
output.Acls = acls
```

At that point after script execution, the action gets an output filled with new Role and new ACLs. 
Beware that neither Role or ACLs are persisted at that point, thus the next steps called to trigger persistence.

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
  "Label": "Role for each Workspace",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Create role automatically based on workspace creation",
    "Icon": "mdi mdi-account-convert",
    "TplCategory": "idm",
    "Usage": "An advanced flow showing how Anko Script can provide flexibility to create a role automatically\n\n### How It Works\n\nAt each workspace creation, an ANKO script creates a new idm.Role object, and the associated ACLs to provide read/write access to the new workspace. The Script is explained below.\n\n\n```\n// Imports, from both standard libraries (fmt) and Cells-provided ones (idm)\nfmt = import(\"fmt\")\nidm = import(\"idm\")\n\n// **output** is the variable that the script is expected to fill\n// It must be a jobs.ActionMessage struct, so we start here by cloning the input.\n// Then we read the workspace passed as input by the job Trigger Event.\noutput = input\nws = input.Workspaces[0]\nfmt.Println(ws)\n\n// Create a new struct idm.Role and assign it to output.Roles\nwsRole = new(idm.Role)\nwsRole.Uuid = \"access-\" + ws.Slug\nwsRole.Label = \"Access to \" + ws.Label\noutput.Roles = [wsRole]\n\n// Same with ACLs. Here we use internal functions provided in the script environment IdmService.MakeACL.\nacls = make([]*idm.ACL, len(ws.RootNodes)*2)\ncount = 0\nfor nid in ws.RootNodes {\n  n = ws.RootNodes[nid]\n  acls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, \"read\", \"1\")\n  count ++\n\tacls[count] = IdmService.MakeACL(n.Uuid, wsRole.Uuid, ws.UUID, \"write\", \"1\")\n  count ++\n}\noutput.Acls = acls\n```\n\nAt that point after script execution, the action gets an output filled with new Role and new ACLs. \nBeware that neither Role or ACLs are persisted at that point, thus the next steps called to trigger persistence."
  },
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
