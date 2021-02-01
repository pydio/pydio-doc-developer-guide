Slices the input string into substrings separated by the expression and returns a slice of the substrings between those expression matches. The last parameter `n` determines the number of substrings to return, where `-1` means return all matches

```
regexSplit "z+" "pizza" -1
```

The above produces `[pi a]`

`regexSplit` panics if there is a problem and `mustRegexSplit` returns an error to the
template engine if there is a problem.
