This compliments `last` by returning all _but_ the last element.
`initial $myList` returns `[1 2 3 4]`.

`initial` panics if there is a problem while `mustInitial` returns an error to the
template engine if there is a problem.