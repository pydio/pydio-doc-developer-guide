
Monitor a specific Tag on files and send an email.

[:image:1_preset_flows/capture-detect-metadata-change.png]

Used in conjunction with security policies and other jobs that can modify metadata, this flow is a good start to set up validation workflow scenarios:

### How It Works

 - A specific user has the right to see all new files and tag them as "valid"
 - When the tag is modified, email administrator to inform that a new file is valid
 - Set up a security policy that hide files that do not have this specific tag value


### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|TagValue|text|signed|false|Lookup for a specific value in the Tags metadata.|
|SendEmailTo|text|admin|false|User login to send an email to.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Detect metadata change",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Monitor a specific Tag on files and send an email",
    "Icon": "mdi mdi-tag",
    "TplCategory": "file-management",
    "Usage": "Used in conjunction with security policies and other jobs that can modify metadata, this flow is a good start to set up validation workflow scenarios:\n\n### How It Works\n\n - A specific user has the right to see all new files and tag them as \"valid\"\n - When the tag is modified, email administrator to inform that a new file is valid\n - Set up a security policy that hide files that do not have this specific tag value\n"
  },
  "Custom": true,
  "EventNames": [
    "NODE_CHANGE:6"
  ],
  "Actions": [
    {
      "ID": "actions.cmd.sendmail",
      "Parameters": {
        "fieldname": "{\"@value\":\"FreeString\"}",
        "message": "Hello, \n\nTags on {{if eq .Node.Type 1}}file{{else}}folder{{end}} \"{{.Node.Path}}\" has been changed to \"{{.JobParameters.TagValue}}\" by  {{.ContextUser.Login}}.",
        "subject": "Metadata changed on {{.Node.Path | base}}",
        "to-mail": "",
        "to-user": "{{.JobParameters.SendEmailTo}}"
      }
    }
  ],
  "NodeEventFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/tree.Query",
          "value": "ShorTWV0YS51c2VybWV0YS10YWdzOnNpZ25lZA=="
        }
      ]
    },
    "Label": "Check value for Tags"
  },
  "Parameters": [
    {
      "Name": "TagValue",
      "Description": "Lookup for a specific value in the Tags metadata.",
      "Value": "signed",
      "Type": "text"
    },
    {
      "Name": "SendEmailTo",
      "Description": "User login to send an email to.",
      "Value": "admin",
      "Type": "text"
    }
  ]
}
```
