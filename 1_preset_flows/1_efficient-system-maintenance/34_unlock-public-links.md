
Auto-unlock users of password-protected public links.

[:image:1_preset_flows/capture-unlock-public-links.png]

### How It Works

This flow first looks up for "locked" and "hidden" users, then change their attribute and finally save them in unlocked state.  
Note that "Hidden" users are public users created under the hood to provided a public (but authenticated) access to a public link.

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Unlock Public Links",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Auto-unlock users of password-protected public links",
    "Icon": "mdi mdi-lock-open",
    "TplCategory": "maintenance",
    "Usage": "### How It Works\n\nThis flow first looks up for \"locked\" and \"hidden\" users, then change their attribute and finally save them in unlocked state.  \nNote that \"Hidden\" users are public users created under the hood to provided a public (but authenticated) access to a public link."
  },
  "Custom": true,
  "Actions": [
    {
      "ID": "actions.idm.user-set-attribute",
      "Label": "Remove lock",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CjkKJ3R5cGUuZ29vZ2xlYXBpcy5jb20vaWRtLlVzZXJTaW5nbGVRdWVyeRIOKgZoaWRkZW4yBHRydWUQAQ=="
            },
            {
              "type_url": "type.googleapis.com/service.Query",
              "value": "CjwKJ3R5cGUuZ29vZ2xlYXBpcy5jb20vaWRtLlVzZXJTaW5nbGVRdWVyeRIRKgVsb2NrczIIKmxvZ291dCoQAQ=="
            }
          ],
          "Operation": 1
        },
        "Label": "Locked Hidden Users"
      },
      "Parameters": {
        "attributeName": "locks",
        "fieldname": "{\"@value\":\"AttributeValue\"}"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.store",
          "Label": "Save user",
          "Parameters": {
            "fieldname": "{\"@value\":\"AttributeValue\"}",
            "objectTypes": "User"
          }
        }
      ]
    }
  ],
  "MaxConcurrency": 20
}
```
