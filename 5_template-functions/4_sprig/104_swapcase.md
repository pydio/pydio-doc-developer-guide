Swap the case of a string using a word based algorithm.

Conversion algorithm:

- Upper case character converts to Lower case
- Title case character converts to Lower case
- Lower case character after Whitespace or at start converts to Title case
- Other Lower case character converts to Upper case
- Whitespace is defined by unicode.IsSpace(char)

```
swapcase "This Is A.Test"
```

This above will produce `tHIS iS a.tEST`.