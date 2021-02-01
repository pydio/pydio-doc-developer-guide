
Find images where thumbnail generation may have failed.

[:image:1_preset_jobs/capture-broken-thumbnails.png]

This job looks up for image files that are missing the specific `is_image` metadata. When found, it tries
to recreate the associated thumbnails. Can be useful when something wrong happened at first thumbnail generation (at upload time).

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Broken Thumbnails||Find images where thumbnail generation may have failed||mdi mdi-image-broken",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.images.thumbnails",
      "NodesSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/tree.Query",
              "value": "EAEwAUpLLU1ldGEuaXNfaW1hZ2U6VCogRXh0ZW5zaW9uOmpwZyBFeHRlbnNpb246anBlZyAgRXh0ZW5zaW9uOnBuZyBFeHRlbnNpb246Ym1w"
            }
          ],
          "Operation": 1
        },
        "Label": "Images w/o 'is_image' metadata"
      }
    }
  ]
}
```
