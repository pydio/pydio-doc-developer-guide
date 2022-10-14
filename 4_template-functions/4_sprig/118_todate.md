`toDate` converts a string to a date. The first argument is the date layout and
the second the date string. If the string can't be convert it returns the zero
value.
`mustToDate` will return an error in case the string cannot be converted.

This is useful when you want to convert a string date to another format
(using pipe). The example below converts "2017-12-31" to "31/12/2017".

```
toDate "2006-01-02" "2017-12-31" | date "02/01/2006"
```