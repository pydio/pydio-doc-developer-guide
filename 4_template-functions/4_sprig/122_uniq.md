Generate a list with all of the duplicates removed.

```
list 1 1 1 2 | uniq
```

The above would produce `[1 2]`

`uniq` panics if there is a problem while `mustUniq` returns an error to the
template engine if there is a problem.