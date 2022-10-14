The `without` function filters items out of a list.

```
without $myList 3
```

The above would produce `[1 2 4 5]`

Without can take more than one filter:

```
without $myList 1 3 5
```

That would produce `[2 4]`

`without` panics if there is a problem while `mustWithout` returns an error to the
template engine if there is a problem.