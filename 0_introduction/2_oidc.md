### Authentication

The core authentication mechanism used in Cells is **OpenID Connect**, which is a superset of **OAuth2**.

OpenIDConnect carries OAuth2 authorizations in the [JWT (JSON Web Tokens)](https://jwt.io/) format. It is used and maintained by major actors like Google or Facebook, and it brings the OAuth advantage of eventually providing an authentication token to third party apps without needing to request the user id/password.

Pydio Cells contains an OIDC server that is in charge of all authentication operations. It produces **JWTs tokens** that is then used by the various clients to query the services. Pydio Cells frontend itself is seen as an OAuth Client application, and so will be your API callers.
 
Once you get a valid JWT token, you will pass it along any API Calls using the _Authorization_ header.

### Cells OAuth2 Endpoints



### Retrieving a valid token

[:summary]