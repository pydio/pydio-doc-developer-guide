The `toJson` function encodes an item into a JSON string. If the item cannot be converted to JSON the function will return an empty string.
`mustToJson` will return an error in case the item cannot be encoded in JSON.

```
toJson .Item
```

The above returns JSON string representation of `.Item`.