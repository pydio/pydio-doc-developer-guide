The `dateModify` takes a modification and a date and returns the timestamp.

Subtract an hour and thirty minutes from the current time:

```
now | date_modify "-1.5h"
```

If the modification format is wrong `dateModify` will return the date unmodified. `mustDateModify` will return an error otherwise.