Returns a slice of all matches of the regular expression in the input string.
The last parameter n determines the number of substrings to return, where -1 means return all matches

```
regexFindAll "[2,4,6,8]" "123456789" -1
```

The above produces `[2 4 6 8]`

`regexFindAll` panics if there is a problem and `mustRegexFindAll` returns an error to the
template engine if there is a problem.
