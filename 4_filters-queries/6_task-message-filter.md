

Task Message Filter is the building block used to build Filters on ActionMessage.

Filter ActionMessage by looking up for a Regular Expression in its StringBody, or for example a specific JSON key.


### Parameters
|Label (internal name)|Type|
|---|---|
|**Is Success** (IsSuccess)|boolean|
|**Search on String body (regexp)** (StringBodyRegexp)|string|
|**Size of string body is greater than** (StringBodySizeGreaterThan)|integer|
|**Size of string body is smaller than** (StringBodySizeSmallerThan)|integer|
|**Search on Json body (regexp)** (JsonBodyRegexp)|string|
|**Json body has key...** (JsonBodyHasKey)|string|
|**Size of Json body is greater than** (JsonBodySizeGreaterThan)|integer|
|**Size of Json body is smaller than** (JsonBodySizeSmallerThan)|integer|
|**Task time greater than** (TaskTimeGt)|integer|
|**Task time lower than** (TaskTimeLt)|integer|
|**Search on error string (regexp)** (ErrorStringRegexp)|string|
|**Free Condition** (FreeCondition)|string|
|**Not** (Not)|boolean|

