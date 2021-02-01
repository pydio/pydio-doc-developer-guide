These four functions generate cryptographically secure (uses ```crypto/rand```)
random strings, but with different base character sets:

- `randAlphaNum` uses `0-9a-zA-Z`
- `randAlpha` uses `a-zA-Z`
- `randNumeric` uses `0-9`
- `randAscii` uses all printable ASCII characters

Each of them takes one parameter: the integer length of the string.

```
randNumeric 3
```

The above will produce a random string with three digits.