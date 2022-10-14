To get the tail of the list (everything but the first item), use `rest`.

`rest $myList` returns `[2 3 4 5]`

`rest` panics if there is a problem while `mustRest` returns an error to the
template engine if there is a problem.