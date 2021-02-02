Merge two or more dictionaries into one, giving precedence to the dest dictionary:

```
$newdict := merge $dest $source1 $source2
```

This is a deep merge operation but not a deep copy operation. Nested objects that
are merged are the same instance on both dicts. If you want a deep copy along
with the merge than use the `deepCopy` function along with merging. For example,

```
deepCopy $source | merge $dest
```

`mustMerge` will return an error in case of unsuccessful merge.