There are two Kind functions: `kindOf` returns the kind of an object.

```
kindOf "hello"
```

The above would return `string`. For simple tests (like in `if` blocks), the
`isKind` function will let you verify that a value is a particular kind:

```
kindIs "int" 123
```

The above will return `true`