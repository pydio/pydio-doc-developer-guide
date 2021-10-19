
Auto-unlock users of password-protected public links.

[:image:1_preset_jobs/capture-unlock-public-links.png]

This job first looks up for locked users, then change their Attribute and finally save them in unlocked state.

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Unlock Public Links||Auto-unlock users of password-protected public links||mdi mdi-lock-open",
  "Owner": "pydio.system.user",
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
