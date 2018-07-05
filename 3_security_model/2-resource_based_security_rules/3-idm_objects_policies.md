
Resource-based rules are also used to manage the visibility of all idm objects (users, workspaces, roles) for a given user. These rules can be queried for specific “read”, “write” and “owner” rights to e.g. filter the results of the listings and prevent modification of an object by an unauthorized person. 
For example, Roles are used internally by users when they create “Teams” in their address books. By default, those roles have the following rules applied :

- “Profile: admin”: read
- “Profile: admin”: write
- “User:userId”: read
- “User: userId”:write
- “Owner:userId”: owner

This is required so that a user who create a team can then see this team in his address book, and eventually modify or delete it. Admins are also allowed to edit this role if necessary. If the user wants to “share” this team with other users, she can modify the rules to let this Team be visible (and used for sharing for example) by other users. This is done in the interface via the “Visibility” panel, and uses rule-based policies internally.  
