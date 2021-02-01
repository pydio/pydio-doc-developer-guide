Accepts a list and removes entries with empty values.

```
$list := list 1 "a" "foo" ""
$copy := compact $list
```

`compact` will return a new list with the empty (i.e., "") item removed.

`compact` panics if there is a problem and `mustCompact` returns an error to the
template engine if there is a problem.