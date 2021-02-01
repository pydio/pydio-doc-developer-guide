Use `set` to add a new key/value pair to a dictionary.

```
$_ := set $myDict "name4" "value4"
```

Note that `set` _returns the dictionary_ (a requirement of Go template functions),
so you may need to trap the value as done above with the `$_` assignmen