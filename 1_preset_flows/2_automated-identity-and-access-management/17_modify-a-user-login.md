
Replacement of a login identifier in various sub-services.

[:image:1_preset_flows/capture-modify-a-user-login.png]

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|OriginalLogin|text||true|User login to be replaced.|
|NewLogin|text||true|New login to be used.|
|DryRun|boolean|true|false|Dry-Run mode will show pending actions without executing them.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Modify a User Login||Replacement of a login identifier in various sub-services||mdi mdi-account-convert",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.cmd.rpc",
      "Label": "Personal Folder",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "CiB7ey5Kb2JQYXJhbWV0ZXJzLk9yaWdpbmFsTG9naW59fQ=="
            }
          ],
          "Operation": 1
        },
        "Label": "Check User Exists"
      },
      "Parameters": {
        "fieldname": "{\"@value\":\"Login\"}",
        "method": "LoginModifier.ModifyLogin",
        "request": "{\n\"OldLogin\":\"{{.JobParameters.OriginalLogin}}\",\n\"NewLogin\":\"{{.JobParameters.NewLogin}}\", \n\"DryRun\": {{.JobParameters.DryRun}}\n}",
        "service": "pydio.grpc.tree"
      },
      "ChainedActions": [
        {
          "ID": "actions.cmd.rpc",
          "Label": "User Login",
          "Parameters": {
            "fieldname": "{\"@value\":\"Login\"}",
            "method": "LoginModifier.ModifyLogin",
            "request": "{\n\"OldLogin\":\"{{.JobParameters.OriginalLogin}}\",\n\"NewLogin\":\"{{.JobParameters.NewLogin}}\", \n\"DryRun\": {{.JobParameters.DryRun}}\n}",
            "service": "pydio.grpc.user"
          },
          "ChainedActions": [
            {
              "ID": "actions.cmd.rpc",
              "Label": "Workspaces Policies",
              "Parameters": {
                "fieldname": "{\"@value\":\"Login\"}",
                "method": "LoginModifier.ModifyLogin",
                "request": "{\n\"OldLogin\":\"{{.JobParameters.OriginalLogin}}\",\n\"NewLogin\":\"{{.JobParameters.NewLogin}}\", \n\"DryRun\": {{.JobParameters.DryRun}}\n}",
                "service": "pydio.grpc.workspace"
              }
            },
            {
              "ID": "actions.cmd.rpc",
              "Label": "Roles Policies",
              "Parameters": {
                "fieldname": "{\"@value\":\"Login\"}",
                "method": "LoginModifier.ModifyLogin",
                "request": "{\n\"OldLogin\":\"{{.JobParameters.OriginalLogin}}\",\n\"NewLogin\":\"{{.JobParameters.NewLogin}}\", \n\"DryRun\": {{.JobParameters.DryRun}}\n}",
                "service": "pydio.grpc.role"
              }
            },
            {
              "ID": "actions.cmd.rpc",
              "Label": "Meta Policies",
              "Parameters": {
                "fieldname": "{\"@value\":\"Login\"}",
                "method": "LoginModifier.ModifyLogin",
                "request": "{\n\"OldLogin\":\"{{.JobParameters.OriginalLogin}}\",\n\"NewLogin\":\"{{.JobParameters.NewLogin}}\", \n\"DryRun\": {{.JobParameters.DryRun}}\n}",
                "service": "pydio.grpc.user-meta"
              }
            }
          ]
        }
      ]
    }
  ],
  "MaxConcurrency": 3,
  "Parameters": [
    {
      "Name": "OriginalLogin",
      "Description": "User login to be replaced.",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "NewLogin",
      "Description": "New login to be used.",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "DryRun",
      "Description": "Dry-Run mode will show pending actions without executing them.",
      "Value": "true",
      "Type": "boolean"
    }
  ],
  "Timeout": "10h"
}
```
