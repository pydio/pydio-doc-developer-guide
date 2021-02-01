The `pluck` function makes it possible to give one key and multiple maps, and
get a list of all of the matches:

```
pluck "name1" $myDict $myOtherDict
```

The above will return a `list` containing every found value (`[value1 otherValue1]`).

If the give key is _not found_ in a map, that map will not have an item in the
list (and the length of the returned list will be less than the number of dicts
in the call to `pluck`.

If the key is _found_ but the value is an empty value, that value will be
inserted.

A common idiom in Sprig templates is to uses `pluck... | first` to get the first
matching key out of a collection of dictionaries.