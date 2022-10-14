Join a list of strings into a single string, with the given separator.

```
list "hello" "world" | join "_"
```

The above will produce `hello_world`

`join` will try to convert non-strings to a string value:

```
list 1 2 3 | join "+"
```

The above will produce `1+2+3`