Returns a copy of the input string, replacing matches of the Regexp with the replacement string replacement
The replacement string is substituted directly, without using Expand

```
regexReplaceAllLiteral "a(x*)b" "-ab-axxb-" "${1}"
```

The above produces `-${1}-${1}-`

`regexReplaceAllLiteral` panics if there is a problem and `mustRegexReplaceAllLiteral` returns an error to the
template engine if there is a problem.
