Given a map and a key, delete the key from the map.

```
$_ := unset $myDict "name4"
```

As with `set`, this returns the dictionary.

Note that if the key is not found, this operation will simply return. No error
will be generated.