

Between each step of a Flow, messages are passed from one action to another inside an ActionMessage, that contains a stack of ActionOutput (in the OutputChain field). This filter is the building block used to discriminate messages based on the values of the last ActionOutput of the stack.

By looking up for a Regular Expression in the ActionOutput StringBody, or a specific JSON key, you can create breaking or conditional filters to take specific action based on the previous step results. 

If the available fields do not provide you enough flexibility, you can simply use the FreeCondition to evaluate any template to the "true" or "false" value.


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Is Success**|IsSuccess|boolean|Check if ActionOutput has success|
|**Search on String body (regexp)**|StringBodyRegexp|string|Occurrence of string in StringBody or JsonBody (as string)|
|**Size of string body is greater than**|StringBodySizeGreaterThan|integer|StringBody or JsonBody size bigger than|
|**Size of string body is smaller than**|StringBodySizeSmallerThan|integer|StringBody or JsonBody size smaller than|
|**Search on Json body (regexp)**|JsonBodyRegexp|string|Exact match of StringBody or JsonBody (as string)|
|**Json body has key...**|JsonBodyHasKey|string|Check existence of key in json body|
|**Size of Json body is greater than**|JsonBodySizeGreaterThan|integer|StringBody or JsonBody size bigger than|
|**Size of Json body is smaller than**|JsonBodySizeSmallerThan|integer|StringBody or JsonBody size smaller than|
|**Task time greater than**|TaskTimeGt|integer|Time taken greater than|
|**Task time lower than**|TaskTimeLt|integer|Time taken shorter than|
|**Search on error string (regexp)**|ErrorStringRegexp|string|Check occurrence on error string|
|**Free Condition**|FreeCondition|string|FreeCondition can be built using templates or gval|
|**Not**|Not|boolean|Invert condition|

