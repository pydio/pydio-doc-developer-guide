Split a string into a list of strings:

```
splitList "$" "foo$bar$baz"
```

The above will return `[foo bar baz]`

The older `split` function splits a string into a `dict`. It is designed to make
it easy to use template dot notation for accessing members:

```
$a := split "$" "foo$bar$baz"
```

The above produces a map with index keys. `{_0: foo, _1: bar, _2: baz}`

```
$a._0
```

The above produces `foo`