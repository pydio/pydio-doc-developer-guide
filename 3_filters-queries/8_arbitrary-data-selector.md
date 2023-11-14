

DataSelector provides a way to fan out arbitrary data to messages. Typically, it comes handy when after loading some JSON as an array, you wish to loop over each row
as you would on Nodes or Users. 

The rows are selected using JSONPath, where root data exposes "$.JsonBody" and "$.Vars". The resulting data chunk is set to the next output JsonBody by default, but you
can store it in a variable by using the following syntax in the JSONPath field : `$.JsonBody.Rows => Loop` (where Loop would be the target variable).


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**JSON Path**|JsonPath|string|Perform a JsonPath query. Input data exposes JsonBody and Vars.|

