The `omit` function is similar to `pick`, except it returns a new `dict` with all
the keys that _do not_ match the given keys.

```
$new := omit $myDict "name1" "name3"
```

The above returns `{name2: value2}`