`wrapWith` works as `wrap`, but lets you specify the string to wrap with.
(`wrap` uses `\n`)

```
wrapWith 5 "\t" "Hello World"
```

The above produces `hello world` (where the whitespace is an ASCII tab
character)