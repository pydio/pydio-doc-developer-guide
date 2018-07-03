## Identity Management

Identity Management (IDM) is split across 8 microservices, that separately manage a single aspect of the application objects :

* acl (Access Control List) : flags that are attached to nodes to grant a specific permission

* auth (Authentication) : OpenID Connect authentication server, based on coreos/dex

* policy: resource-based policy engine (see dedicated section)

* role : Pydio roles

* user: Pydio users and groups, represented as a tree.

* workspace : Simple metadata about Pydio workspaces.

* graph: high-level rest endpoint for gathering relations between users

* share: high-level rest endpoint for managing shares (cells & public links). It is also a metadata provider service that adds shared metadata to nodes dynamically

These services are generally accessed by gRPC and eventually provide a REST gateway for external clients management.
ACL provides the glue between nodes, roles and workspaces. For a given user, the workspace list is dynamically computed from all nodes that are seen as readable in the ACL list. As ACLs are attached to a workspace UUID, a workspace can be composed of many root nodes. The “workspace” service provides just an additional layer of metadata for the workspaces (label, description, owner, etc.).
Sharing is as simple as it gets: a folder X shared with a user U is simply a read permission (Acl Action “read”) on the folder node UUID for the user role. User will then see a new workspace with the folder as its root node.
