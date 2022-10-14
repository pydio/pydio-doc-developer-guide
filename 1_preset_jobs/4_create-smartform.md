
Create a SmartForm for each new user, based on a SmartForm template.

[:image:1_preset_jobs/capture-create-smartform.png]

This flow can be used to automatically create a "SmartForm" when a user is created. A dedicated location is created in the user personal folder, and a SmartForm is attached to this folder.

This flow relies on a SmartForm "Template UUID" for creation: you must have previously saved a SmartForm as a template, and use the "Copy" button inside the templates list to get the Uuid of this template. You can then use this UUID in the job's parameters.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|FolderPath|text|personal/{{.User.Login}}/On-Boarding|true|Folder to create and that will display the form.|
|FormTemplateUuid|text||true|Form Builder template identifier.|



### Trigger Type
Event-based

### JSON Representation

```
{
  "Label": "Create SmartForm||Create a SmartForm for each new user, based on a SmartForm template||mdi mdi-playlist-check",
  "Owner": "pydio.system.user",
  "Custom": true,
  "EventNames": [
    "IDM_CHANGE:USER:0"
  ],
  "Actions": [
    {
      "ID": "actions.tree.mkdir",
      "Parameters": {
        "check_exist": "true",
        "path": "{{.JobParameters.FolderPath}}"
      },
      "ChainedActions": [
        {
          "ID": "actions.cmd.rpc",
          "Parameters": {
            "method": "DocStore.GetDocument",
            "request": "{\n\"StoreID\":\"MetaTemplates\", \n\"DocumentID\":\"{{.JobParameters.FormTemplateUuid}}\"\n}",
            "service": "pydio.grpc.docstore"
          },
          "ChainedActions": [
            {
              "ID": "actions.scheduler.build-message",
              "Label": "Format Response",
              "Parameters": {
                "ctype": "json",
                "message": "{{index (.LastOutput.JsonAsValue.Map.Document.Data | jsonStringToMap) \"Meta\" | toJson}}"
              },
              "ChainedActions": [
                {
                  "ID": "actions.put-meta",
                  "Label": "Attach Form",
                  "Parameters": {
                    "json": "{\"usermeta-cells-formbuilder\":\"{{.LastOutput.JsonBody | toString | trimQuotes}}\"}"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "IdmFilter": {
    "Query": {
      "SubQueries": [
        {
          "type_url": "type.googleapis.com/idm.UserSingleQuery",
          "value": "aghzdGFuZGFyZA=="
        }
      ],
      "Operation": 1
    },
    "Label": "Standard Users Only"
  },
  "Parameters": [
    {
      "Name": "FolderPath",
      "Description": "Folder to create and that will display the form.",
      "Value": "personal/{{.User.Login}}/On-Boarding",
      "Mandatory": true,
      "Type": "text"
    },
    {
      "Name": "FormTemplateUuid",
      "Description": "Form Builder template identifier.",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```