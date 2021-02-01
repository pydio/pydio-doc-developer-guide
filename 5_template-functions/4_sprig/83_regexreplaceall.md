Returns a copy of the input string, replacing matches of the Regexp with the replacement string replacement.
Inside string replacement, $ signs are interpreted as in Expand, so for instance $1 represents the text of the first submatch

```
regexReplaceAll "a(x*)b" "-ab-axxb-" "${1}W"
```

The above produces `-W-xxW-`

`regexReplaceAll` panics if there is a problem and `mustRegexReplaceAll` returns an error to the
template engine if there is a problem.