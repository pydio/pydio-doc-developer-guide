## Security Policies

As already introduced, the first usage of resource-based rules is in the REST API endpoints authorizations. In this case, the policies are used as follow: 

* The “Resource” is a given endpoint of the rest API, identified by its URI (like /a/policies or /front/front-log, etc), along with an HTTP Verb (like GET, POST, PUT, etc).
* The “Subject” is composed by many subjects using the user roles and profile.
* The “Context” data is extracted from the incoming query : remote IP, connection time, User-Agent, etc.

The default security policies are exposed in the interface, and editable in the Enterprise Edition. They basically define the necessary authorization for a basic usage of Cells. As explained before, API endpoints accesses are “denied by default”. These default policies ensure that the required endpoints are accessible e.g. publicly, only by logged users, or only by admin users. 
