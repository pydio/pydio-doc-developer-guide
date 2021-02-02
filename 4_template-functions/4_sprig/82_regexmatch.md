Returns true if the input string contains any match of the regular expression.

```
regexMatch "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$" "test@acme.com"
```

The above produces `true`

`regexMatch` panics if there is a problem and `mustRegexMatch` returns an error to the
template engine if there is a problem.