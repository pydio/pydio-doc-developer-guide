The `keys` function will return a `list` of all of the keys in one or more `dict`
types. Since a dictionary is _unordered_, the keys will not be in a predictable order.
They can be sorted with `sortAlpha`.

```
keys $myDict | sortAlpha
```

When supplying multiple dictionaries, the keys will be concatenated. Use the `uniq`
function along with `sortAlpha` to get a unqiue, sorted list of keys.

```
keys $myDict $myOtherDict | uniq | sortAlpha