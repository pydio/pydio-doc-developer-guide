Like `until`, `untilStep` generates a list of counting integers. But it allows
you to define a start, stop, and step:

```
untilStep 3 6 2
```

The above will produce `[3 5]` by starting with 3, and adding 2 until it is equal
or greater than 6. This is similar to Python's `range` function.