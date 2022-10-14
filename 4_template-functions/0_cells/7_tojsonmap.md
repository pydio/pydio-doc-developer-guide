Json encode input and returns it as a map[string]interface{}. Can be handy to be used in conjunction with gvals+jsonpath features.

Example : 

    {{.Node | toJsonMap | gval "$[0].Size * 200"}}
    => 2420420
    
See also `gval` functions    