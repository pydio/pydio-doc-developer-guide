#### Users, roles and groups

In Pydio Cells, the major IDM objects are linked to a role: a user has its own role, a group has its own role, and the administrator can define roles as needed.  

A user is always part of a group, either the `root` group or a subgroup defined in the interface. Groups are a way to hierarchically organise users, and a user can only belong to one group. On the other hand, admin roles can be applied to any users, and a user can be assigned any number of roles. In that sense, roles are closer to AD/LDAP groups.

At run time, these roles are sequentially traversed to define the actual permissions of a user, as described below:

- Apply all permissions inherited from the user groups
- Apply all admin roles applied to this user
- Finally apply the user-specific role.

Permissions can be of 3 types:

- ACLs (see below)
- Parameters values: frontend plugins parameters can have their default values overridden by a given role
- Actions enable/disable: frontend plugins actions can be dynamically enabled/disabled by a given role.

This permissions are applied at various workspace “scopes”: they can be applied to all workspaces, only shared workspaces (cells), or to only one specific workspace.

#### ACLs

ACLs are basically the Read/Write permissions granting access to a specific workspace. In Pydio Cells, the dedicated idm/acl service is in charge of storing the ACLs. This service is simply maintaining a list of ACLs that make the association between:

- A node UUID: point in the global tree where this ACL applies
- A Role UUID (optional)
- A Workspace UUID (optional)
- An Action (name/value): defines the actual ACL effect.
