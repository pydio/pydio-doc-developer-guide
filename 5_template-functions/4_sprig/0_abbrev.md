Truncate a string with ellipses (`...`)

Parameters:

- max length
- the string

```
abbrev 5 "hello world"
```

The above returns `he...`, since it counts the width of the ellipses against the
maximum length.