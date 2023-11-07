
Replacement of a login identifier in various sub-services.

[:image:1_preset_flows/capture-modify-a-user-login.png]

Modifying a user login is a special operation as logins may be used as reference identifier by various parts of the application. All services that do use logins as keys implement a specific gRPC method for performing the necessary operations if a login must be changed. 

### How It Works

This Flow will sequentially call the following services: 
 - pydio.grpc.tree (renames Personal Files folder)
 - pydio.grpc.user (renames the login)
 - pydio.grpc.workspace|role|policy (adapt security policies that may refer to the existing user)
 
The only thing it __does not__ do is changing the personal file folder on the file system if it is stored in a structured datasource. You may have to do this manually and resynchronize (but not if it is a flat datasource).

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
  "Label": "Modify a User Login",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Replacement of a login identifier in various sub-services",
    "Icon": "mdi mdi-account-convert",
    "TplCategory": "idm",
    "Usage": "Modifying a user login is a special operation as logins may be used as reference identifier by various parts of the application. All services that do use logins as keys implement a specific gRPC method for performing the necessary operations if a login must be changed. \n\n### How It Works\n\nThis Flow will sequentially call the following services: \n - pydio.grpc.tree (renames Personal Files folder)\n - pydio.grpc.user (renames the login)\n - pydio.grpc.workspace|role|policy (adapt security policies that may refer to the existing user)\n \nThe only thing it __does not__ do is changing the personal file folder on the file system if it is stored in a structured datasource. You may have to do this manually and resynchronize (but not if it is a flat datasource)."
  },
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
