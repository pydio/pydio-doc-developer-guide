






 
  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**adjacentsOptions** |  | _#/definitions/registryOptions_ |   
**options** |  | _#/definitions/registryOptions_ |   


### Body Example
```
{
  "adjacentsOptions": {
    "actions": [
      "string"
    ],
    "metaName": "string",
    "metaValue": "string",
    "names": [
      "string"
    ],
    "ttl": "string",
    "types": [
      "string"
    ]
  },
  "options": {
    "actions": [
      "string"
    ],
    "metaName": "string",
    "metaValue": "string",
    "names": [
      "string"
    ],
    "ttl": "string",
    "types": [
      "string"
    ]
  }
}
```






### Response Example (200)
Response Type /definitions/registryListResponse

```
{
  "items": [
    {
      "adjacents": [
        "[Recursive structure]"
      ],
      "dao": {
        "driver": "string",
        "dsn": "string"
      },
      "edge": {
        "vertices": [
          "string"
        ]
      },
      "generic": {
        "type": "string"
      },
      "id": "string",
      "metadata": {},
      "name": "string",
      "node": {
        "advertiseIp": "string",
        "hostname": "string",
        "ips": [
          "string"
        ],
        "machine": "string"
      },
      "server": {
        "protocol": "string"
      },
      "service": {
        "options": {
          "actions": [
            "string"
          ],
          "metaName": "string",
          "metaValue": "string",
          "names": [
            "string"
          ],
          "ttl": "string",
          "types": [
            "string"
          ]
        },
        "tags": [
          "string"
        ],
        "version": "string"
      }
    }
  ]
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.0.1 on 17-Oct-2022