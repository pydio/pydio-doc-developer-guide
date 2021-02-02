Parses a unix timestamp to a date. Can be used in conjunction with sprig date functions. Inputs as string or number are supported.

Example : 

    {{.Node.MTime | fromStamp | date "2006-02-01" }}
    => "2020-11-19"