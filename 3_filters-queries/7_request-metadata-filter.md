

Request Metadata Filter is the building block used to build Filters on request Metadata.

Request filtering can be useful for jobs triggered by events, that will carry the initial metadata of the request that triggered the action.

Conditions use the same syntax as security policies.



### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Field Name**|FieldName|Remote Address (RemoteAddress),<br/>User Agent (UserAgent),<br/>Content Type (ContentType),<br/>HTTP Protocol (HttpProtocol),<br/>Request Host (RequestHost),<br/>Request Hostname (RequestHostname),<br/>Request Port (RequestPort),<br/>Request Method (RequestMethod),<br/>Request URI (RequestURI),<br/>Cookies String (CookiesString),<br/>Server Time (ServerTime)|Field on which the Condition test will be applied|
|**Condition**|Condition|String equals (StringEqualCondition),<br/>Subject equals (EqualsSubjectCondition),<br/>String matches (StringMatchCondition),<br/>Boolean Value (BooleanCondition),<br/>Office Hours (OfficeHoursCondition),<br/>Glob Matcher (PathGlobCondition),<br/>Date period (WithinPeriodCondition),<br/>Date after (DateAfterCondition),<br/>CIDRCondition (CIDRCondition),<br/>StringPairs equals (StringPairsEqualCondition),<br/>Resource contains (ResourceContainsCondition),<br/>String does not match (StringNotMatchCondition)|One of the available conditions as defined for Security Policies|

