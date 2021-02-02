To get the head item on a list, use `first`.

`first $myList` returns `1`

`first` panics if there is a problem while `mustFirst` returns an error to the
template engine if there is a problem.