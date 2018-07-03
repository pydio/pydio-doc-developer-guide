

In Pydio Cells, the major IDM objects are linked to a role : a user has its own role, a group has its own role, and the administrator can define roles as needed.
A user is always part of a group, either the “root group” or a subgroup defined in the interface. Groups are a way to hierarchically organise the user, and a user can only belong to one group. On the other hand, admin roles can be applied to any users, and a user can be assigned any number of roles. In that sense, roles are closer to AD/LDAP groups.
 
At run time, these roles are sequentially traversed to define the actual permissions of a user, as described below: 

* Apply all permissions inherited from the user groups
* Apply all admin roles applied to this user
* Finally apply the user-specific role.

Permissions can be of 3 types: 

* ACLs (see below)
* Parameters values : frontend plugins parameters can have their default values overridden by a given role
* Actions enable/disable : frontend plugins actions can be dynamically enabled/disabled by a given role.

This permissions are applied at various workspace “scopes” : they can be applied to all workspaces, only shared workspaces (cells), or to only one specific workspace.
