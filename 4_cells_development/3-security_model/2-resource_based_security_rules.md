### Introduction


Along with the role-based mechanism, it is possible to refine accesses to any specific API or to dynamically compute a specific ACL to be applied to a role.  
Resource-based rules are heavily inspired by [Amazon IAM rules](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html). The idea is to simply stack a set of rules in a “deny by default” mode and to merge them when necessary to decide _“who is allowed to access what in which context”_:

- **Who** is the rule `Subject`,
- **Allowed** is the rule `Effect`: a boolean flag saying `Allow` or `Deny`,
- **What** is the `Resource` of the rule,
- **Context** is an optional set of `Conditions` that can be computed at runtime.

In real-life situation, a rule can have many Subjects, many Resources and many Conditions. Policies are defined by a set of rules. Internally, a dedicated Policy service can be queried by other services to check whether a set of rules, evaluated in a given context, grant Allow or Deny access to the subject.

Again, most policies have a “Deny by default” behavior. For example, when creating a new endpoint in the REST api, it is not accessible (returns 403 Forbidden) until a specific security is added to explicitly provide an access to this endpoint. The engine can also give a precise answer whether the deny response is a DenyByDefault (no rules defined matching this resource) or an explicit deny (e.g. one rule allows access to all, but another rule forbids access to users of a given group). See more examples in following sections.


### Security Policies


As already introduced, the first usage of resource-based rules is in the REST API endpoints authorizations. In this case, the policies are used as follow: 

- The “Resource” is a given endpoint of the rest API, identified by its URI (like /a/policies or /front/front-log, etc), along with an HTTP Verb (like GET, POST, PUT, etc).
- The “Subject” is composed by many subjects using the user roles and profile.
- The “Context” data is extracted from the incoming query : remote IP, connection time, User-Agent, etc.

The default security policies are exposed in the interface, and editable in the Enterprise Edition. They basically define the necessary authorization for a basic usage of Cells. As explained before, API endpoints accesses are “denied by default”. These default policies ensure that the required endpoints are accessible e.g. publicly, only by logged users, or only by admin users.


### IDM Objects Policies


Resource-based rules are also used to manage the visibility of all idm objects (users, workspaces, roles) for a given user. These rules can be queried for specific “read”, “write” and “owner” rights to e.g. filter the results of the listings and prevent modification of an object by an unauthorized person. 

For example, Roles are used internally by users when they create “Teams” in their address books. By default, those roles have the following rules applied :

- “Profile: admin”: read
- “Profile: admin”: write
- “User:userId”: read
- “User: userId”:write
- “Owner:userId”: owner

This is required so that a user who create a team can then see this team in his address book, and eventually modify or delete it. Admins are also allowed to edit this role if necessary. If the user wants to “share” this team with other users, she can modify the rules to let this Team be visible (and used for sharing for example) by other users. This is done in the interface via the “Visibility” panel, and uses rule-based policies internally.  


### Dynamic ACLs


Finally, combining the best of both worlds, role-based ACLs as described in the previous chapter can also be computed dynamically based on policies. This is very powerful to e.g. restrict access to a given workspace under certain conditions, like accessing from an internal vs/ external network, accessing at given office hours, etc.

Furthermore, these ACLs can also use the files metadata as a source of context for computing conditions. That way, it is possible to restrict access only a given type of files (with e.g. a “Confidential” metadata tag) and combined with other context conditions.

[:image-popup:3_security_model/policies.png]
