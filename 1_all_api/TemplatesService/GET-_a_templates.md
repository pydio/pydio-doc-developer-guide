






 
List available templates  


No Parameters



### Response Example (200)
Response Type /definitions/restListTemplatesResponse

```
{
  "Templates": [
    {
      "Label": "string",
      "Node": {
        "BinaryUUUID": "string",
        "Children": [
          "[Recursive structure]"
        ],
        "EmbedPath": "string",
        "IsFile": true
      },
      "Policies": [
        {
          "Action": "string",
          "Effect": "string",
          "JsonConditions": "string",
          "Resource": "string",
          "Subject": "string",
          "id": "string"
        }
      ],
      "UUID": "string"
    }
  ]
}
```


