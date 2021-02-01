The `date` function formats a date.

Format the date to YEAR-MONTH-DAY:

```
now | date "2006-01-02"
```

Date formatting in Go is a [little bit different](https://pauladamsmith.com/blog/2011/05/go_time.html).

In short, take this as the base date:

```
Mon Jan 2 15:04:05 MST 2006
```

Write it in the format you want. Above, `2006-01-02` is the same date, but
in the format we want.