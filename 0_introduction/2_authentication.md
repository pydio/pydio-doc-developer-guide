### Authentication

The core authentication mechanism used in Cells is **OpenID Connect**, an identity layer on top of **OAuth2**.

OpenID Connect carries OAuth2 authorizations in the [JWT (JSON Web Tokens)](https://jwt.io/) format. It is used and maintained by major actors like Google or Facebook, and has the advantage of providing an authentication token to third party apps without needing to request the user id/password.

Pydio Cells contains an OIDC server for authentication operations. It produces **JWTs tokens** used by various clients to query the services. Pydio Cells frontend itself is seen as an OAuth Client application, and so will be your API callers.

Once you get a valid JWT token, you will pass it along any API Calls using the `Authorization: Bearer ${token}` header.

### Cells OAuth2 Endpoints

Cells provides the following endpoints for standard OAuth2 operations

| Parameter              | value                                                            |
| ---------------------- | ---------------------------------------------------------------- |
| OIDC Configuration URL | http(s)://your-cells.com**/oidc/.well-known/openid-configuration |
| Auth URL               | http(s)://your-cells.com**/oidc/oauth2/auth**                    |
| Token URL              | http(s)://your-cells.com**/oidc/oauth2/token**                   |

<a name="quick_bash_setup"></a>
#### Quick bash setup

```
DOMAIN="http(s)://yourpydio.com"
AUTHORIZATION_ENDPOINT=`curl --silent $DOMAIN/oidc/.well-known/openid-configuration | jq --raw-output '.authorization_endpoint'`
TOKEN_ENDPOINT=`curl --silent $DOMAIN/oidc/.well-known/openid-configuration | jq --raw-output '.token_endpoint'`
```

### Cells OAuth2 Default Clients

As any OAuth2 provider, Cells require clients to be registered before they can connect. The server ships with 3 default clients respectively for Sync, Mobile, and CellsClient applications. The latest is a good choice if you wish to use the APIs. 

As part of the OAuth2 authentication checks, the clients registered must declare the Redirect URIs that are allowed to be used during the authentication workflow. Below is a summary of the default clients and their authorized Redirect URIs.

| Client ID    | Public | Redirect URIs |
| ------------ | :----: | --------------|
| cells-sync   |  Yes   | http://localhost:[3636-3666] (a range of ports)<br />http://localhost:3000 (used during CellsSync development process) |
| cells-mobile |  Yes   | cellsauth://serverName (custom scheme that can be registered by mobile applications for reopening after authentication) |
| cells-client |  Yes   | http://localhost:3636<br/>http://serverName/oauth/oob (Out of Band endpoint that redirects to Cells web interface and display the token in a copy/paste interface) |


