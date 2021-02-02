Push an element onto the front of a list, creating a new list.

```
prepend $myList 0
```

The above would produce `[0 1 2 3 4 5]`. `$myList` would remain unaltered.

`prepend` panics if there is a problem while `mustPrepend` returns an error to the
template engine if there is a problem.