Test to see if a list has a particular element.

```
has 4 $myList
```

The above would return `true`, while `has "hello" $myList` would return false.

`has` panics if there is a problem while `mustHas` returns an error to the
template engine if there is a problem.