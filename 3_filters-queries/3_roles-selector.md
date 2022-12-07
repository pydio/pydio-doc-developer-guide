

Roles Selector is the building block used to build either Queries or Filters on Roles.

As a reminder, Roles are flexible permissions containers that are combined together for a given user to compute a runtime set of permissions. Users typically always have a personal role (IsUserRole=true), inherit from their current groups roles (IsGroupRole=true) and user-defined teams are defined a roles as well (IsTeamRole=true).


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Uuid**|Uuid|string|Look for roles by Uuid|
|**Label**|Label|string|Look for roles by label, eventually using "wildchar"|
|**Is Team**|IsTeam|boolean|Look up for roles associated with a Team|
|**Is Group Role**|IsGroupRole|boolean|Look for roles associated with a Group|
|**Is User Role**|IsUserRole|boolean|Look for roles associated with a User|
|**Has AutoApply**|HasAutoApply|boolean|Look for roles that have any value in the autoApplies field|
|**not**|not|boolean|Internal - Negate the query|

