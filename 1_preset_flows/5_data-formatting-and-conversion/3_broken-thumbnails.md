
Find images where thumbnail generation may have failed.

[:image:1_preset_flows/capture-broken-thumbnails.png]

This flow looks up for image files that are missing the specific `is_image` metadata and tries
to recreate the associated thumbnails. 
This can be useful when something wrong happened at first thumbnail generation (at upload time).

### How It Works

This is a good example of querying the search engine with a "FreeString". The default search here is using:  
`FreeString="-Meta.is_image:T* Extension:jpg Extension:jpeg Extension:png Extension:bmp"`  

A couple of interesting things here: 
 * Using Meta.{MetaName} to access the nodes internal metadata
 * Prefixing search terms with + for "Must", - for "Must Not", nothing for "Should"
 * Multiplying the Extension search term to load all files extensions
 * Special value `T*` means `True` boolean fields 
 
 Finally, we search all files with jpg,jpeg,png,bmp extension that do **not** have the metadata "is_image".

### Parameters

No parameters defined


### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Broken Thumbnails",
  "Owner": "pydio.system.user",
  "Metadata": {
    "Description": "Find images where thumbnail generation may have failed",
    "Icon": "mdi mdi-image-broken",
    "TplCategory": "content-processing",
    "Usage": "This flow looks up for image files that are missing the specific `is_image` metadata and tries\nto recreate the associated thumbnails. \nThis can be useful when something wrong happened at first thumbnail generation (at upload time).\n\n### How It Works\n\nThis is a good example of querying the search engine with a \"FreeString\". The default search here is using:  \n`FreeString=\"-Meta.is_image:T* Extension:jpg Extension:jpeg Extension:png Extension:bmp\"`  \n\nA couple of interesting things here: \n * Using Meta.{MetaName} to access the nodes internal metadata\n * Prefixing search terms with + for \"Must\", - for \"Must Not\", nothing for \"Should\"\n * Multiplying the Extension search term to load all files extensions\n * Special value `T*` means `True` boolean fields \n \n Finally, we search all files with jpg,jpeg,png,bmp extension that do **not** have the metadata \"is_image\"."
  },
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
