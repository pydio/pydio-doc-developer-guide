Return the first (left most) match of the regular expression in the input string

```
regexFind "[a-zA-Z][1-9]" "abcd1234"
```

The above produces `d1`

`regexFind` panics if there is a problem and `mustRegexFind` returns an error to the
template engine if there is a problem.