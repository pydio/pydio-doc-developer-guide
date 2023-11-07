
Webhooks to create Split / Merge PDF actions.

[:image:1_preset_flows/capture-users-pdf-actions.png]

This Flow uses webhooks to expose the split/merge PDF features to end-users. 

### How It Works

Using the job trigger filter, each webhook triggers a different branch. They are configured to match PDF files only, with unique selection only for "split" and multiple selection only for "merge". 

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|SplitPages|text, possible values: {"type":"string","data":{"mandatory":false}}||false|List of Pages - "1 2 4" for specific pages,  "1-4" for range, or "1-" for all|
|JoinTarget|text, possible values: {"type":"string","data":{}}||false|Target file name - Leave empty to generate a new name|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Users PDF Actions",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Webhooks to create Split / Merge PDF actions",
    "Icon": "mdi mdi-file-pdf-box",
    "TplCategory": "content-processing",
    "Usage": "This Flow uses webhooks to expose the split/merge PDF features to end-users. \n\n### How It Works\n\nUsing the job trigger filter, each webhook triggers a different branch. They are configured to match PDF files only, with unique selection only for \"split\" and multiple selection only for \"merge\". "
  },
  "CreatedAt": 1698679284,
  "ModifiedAt": 1698847421,
  "Actions": [
    {
      "ID": "actions.contents.pdf",
      "Label": "Split Pages",
      "TriggerFilter": {
        "Label": "Hook pdf-split-pages",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Kg9wZGYtc3BsaXQtcGFnZXM="
            }
          ]
        }
      },
      "Parameters": {
        "@value": "join",
        "command": "{\"@value\":\"split\",\"pages\":\"{{.JobParameters.SplitPages}}\"}",
        "target-name": "joined-pages-{{uuidv4}}.pdf"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-advanced",
          "Label": "Artifact",
          "Parameters": {
            "artifact_format": "object",
            "artifact_label": "Result",
            "as_object": "false",
            "command": "{\"@value\":\"split\"}",
            "fieldname": "{\"@value\":\"ApiHookSlug\"}",
            "is_artifact": "string",
            "level": "info",
            "zap_key": "Pages",
            "zap_value": "Extracted pages {{.JobParameters.SplitPages}} from {{.Node.Path}}"
          }
        }
      ]
    },
    {
      "ID": "actions.contents.pdf",
      "Label": "Join Pages",
      "TriggerFilter": {
        "Label": "Hook pdf-join-pages",
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/jobs.TriggerFilterQuery",
              "value": "Kg5wZGYtam9pbi1wYWdlcw=="
            }
          ]
        }
      },
      "Parameters": {
        "@value": "join",
        "command": "{\"@value\":\"join\",\"target-name\":\"{{if .JobParameters.JoinTarget}}{{.JobParameters.JoinTarget}}{{else}}joined-pdf.pdf{{end}}\"}",
        "fieldname": "{\"@value\":\"ApiHookSlug\"}",
        "target-name": "joined-pages-{{uuidv4}}.pdf"
      },
      "ChainedActions": [
        {
          "ID": "actions.scheduler.log-advanced",
          "Label": "Artifact",
          "Parameters": {
            "artifact_format": "object",
            "artifact_label": "Result",
            "as_object": "false",
            "command": "{\"@value\":\"split\"}",
            "fieldname": "{\"@value\":\"ApiHookSlug\"}",
            "is_artifact": "string",
            "level": "info",
            "zap_key": "Pages",
            "zap_value": "Joined {{.Input.Nodes | len}} pages"
          }
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "SplitPages",
      "Description": "List of Pages - \"1 2 4\" for specific pages,  \"1-4\" for range, or \"1-\" for all",
      "Type": "text",
      "JsonChoices": "{\"type\":\"string\",\"data\":{\"mandatory\":false}}"
    },
    {
      "Name": "JoinTarget",
      "Description": "Target file name - Leave empty to generate a new name",
      "Type": "text",
      "JsonChoices": "{\"type\":\"string\",\"data\":{}}"
    }
  ],
  "Hooks": [
    {
      "ApiSlug": "pdf-split-pages",
      "PresetParameters": {
        "SplitPages": "1-"
      },
      "AllowOverridePresets": true,
      "Metadata": {
        "action": "{\"name\":\"pdf-split-pages\",\"gui\":{\"iconClass\":\"mdi mdi-file-pdf-box\",\"text\":\"Extract Pages\",\"title\":\"pdf-split-pages\",\"context\":{\"actionBar\":\"true\",\"actionBarGroup\":\"other\",\"selection\":\"true\",\"contextMenu\":\"true\"},\"selectionContext\":{\"dir\":\"false\",\"file\":\"true\",\"unique\":\"true\",\"multipleOnly\":\"false\",\"allowedMimes\":\"pdf\"}},\"rightsContext\":{\"read\":\"true\",\"userLogged\":\"true\",\"write\":\"true\"}}",
        "formParameters": "[{\"Type\":\"text\",\"Name\":\"SplitPages\",\"Description\":\"List of Pages - \\\"1 2 4\\\" for specific pages,  \\\"1-4\\\" for range, or \\\"1-\\\" for all\",\"Value\":\"1-\"}]",
        "formPrompt": "true",
        "promptMessage": "Extract one or more pages from PDF file.",
        "successMessage": "Action is triggered in background",
        "useSelectionNodes": "true"
      },
      "Policies": [
        {
          "Action": 3,
          "Subject": "profile:admin",
          "Effect": 1
        },
        {
          "Action": 3,
          "Subject": "profile:standard",
          "Effect": 1
        }
      ]
    },
    {
      "ApiSlug": "pdf-join-pages",
      "PresetParameters": {
        "JoinTarget": "Joined-PDF.pdf"
      },
      "AllowOverridePresets": true,
      "Metadata": {
        "action": "{\"name\":\"pdf-join-pages\",\"gui\":{\"iconClass\":\"mdi mdi-file-pdf-box\",\"text\":\"Join PDF Pages\",\"title\":\"pdf-join-pages\",\"context\":{\"actionBar\":\"true\",\"actionBarGroup\":\"other\",\"selection\":\"true\",\"contextMenu\":\"true\"},\"selectionContext\":{\"dir\":\"false\",\"file\":\"true\",\"unique\":\"false\",\"multipleOnly\":\"true\",\"allowedMimes\":\"pdf\"}},\"rightsContext\":{\"read\":\"true\",\"userLogged\":\"true\",\"write\":\"true\"}}",
        "formParameters": "[{\"Type\":\"text\",\"Name\":\"JoinTarget\",\"Description\":\"Target file name - Leave empty to generate a new name\",\"Value\":\"Joined-PDF.pdf\"}]",
        "formPrompt": "true",
        "promptMessage": "",
        "successMessage": "Actions triggered in background...",
        "useSelectionNodes": "true"
      },
      "Policies": [
        {
          "Action": 3,
          "Subject": "profile:admin",
          "Effect": 1
        },
        {
          "Action": 3,
          "Subject": "profile:standard",
          "Effect": 1
        }
      ]
    }
  ]
}
```
