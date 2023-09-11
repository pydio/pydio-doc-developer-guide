
Utility functions provided by Cells framework.


## asStamp

 Generate a unix timestamp from a date. To be used in conjunction with sprig date functions.

Example : 

    {{now | toStamp}}
    => 1603361826

## fromStamp

 Parses a unix timestamp to a date. Can be used in conjunction with sprig date functions. Inputs as string or number are supported.

Example : 

    {{.Node.MTime | fromStamp | date "2006-02-01" }}
    => "2020-11-19"

## jsonBytesToMap

 Unmarshal a json-encoded **[]bytes** representation as a map[string]interface{}

## jsonBytesToSlice

 Unmarshal a json-encoded **[]bytes** representation as a slice []interface{}

## jsonStringToMap

 Unmarshal a json-encoded **string** as a map[string]interface{}

## jsonStringToSlice

 Unmarshal a json-encoded **string** as a slice []interface{}

## publicLink

 Loads a generated public link from a workspace that has "LINK" scope. 

Example : 

    {{.Workspace | publicLink}}
    => "/public/aa23d4f4f4f"

## toJsonMap

 Json encode input and returns it as a map[string]interface{}. Can be handy to be used in conjunction with gvals+jsonpath features.

Example : 

    {{.Node | toJsonMap | gval "$[0].Size * 200"}}
    => 2420420
    
See also `gval` functions    

## toStamp

 Generate a unix timestamp from a date. To be used in conjunction with sprig date functions.

Example : 

    {{now | toStamp}}
    => 1603361826

## trimQuotes

 Trims single and double-quotes off a string.

Example :

    {{"Test String" | trimQuotes}}
    => Test String

This can be handy when manipulating strings from/to json values.
