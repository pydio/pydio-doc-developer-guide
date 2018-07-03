

ACLs are basically the Read/Write permissions granting access to a specific workspace. In Pydio Cells, the dedicated idm/acl service is in charge of storing the ACLs. This service is simply maintaining a list of ACLs that make the association between : 

* A node Uuid : point in the global tree where this ACL applies
* A Role Uuid (optional)
* A Workspace Uuid (optional)
* An Action (name/value) : defines the actual ACL effect.
