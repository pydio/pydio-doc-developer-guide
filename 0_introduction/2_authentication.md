The core authentication mechanism used in Cells is **OpenID Connect**, an identity layer on top of **OAuth2**.  OpenID Connect carries OAuth2 authorizations in the [JWT (JSON Web Tokens)](https://jwt.io/) format. It is used and maintained by major actors like Google or Facebook, and has the advantage of providing an authentication token to third party apps without needing to request the user id/password.

Pydio Cells contains an OIDC server for authentication operations. It produces **Access Tokens** used by various clients to query the services. Pydio Cells frontend itself is seen as an OAuth Client application. Once you get a valid Access Token, you will pass it along any API Calls using the `Authorization: Bearer ${token}` header.

As an alternative, Personal Access Token can be generated server-side to avoid OAuth2 process implementation (see Method 2).

## Method 1: OAuth2 Protocol

If your desired integration is users-facing, you need to properly implement the OAuth2 protocol. The great advantage is that your application will redirect to Cells for authentication and never see users credentials. The drawback is that implementation is more complex, although most languages provide SDK or libraries for OAuth2 protocol. Resources below should provide you the necessary information to configure an OAuth2 client library.

**OIDC / OAuth2 Endpoints**

Cells provides the following endpoints for standard OIDC / OAuth2 operations

| Endpoint               | Value                                                            |
| ---------------------- | ---------------------------------------------------------------- |
| OIDC Configuration URL | http(s)://your-cells.com/oidc/.well-known/openid-configuration |
| OAuth2 Auth URL        | http(s)://your-cells.com/oidc/oauth2/auth                    |
| OAuth2 Token URL       | http(s)://your-cells.com/oidc/oauth2/token                   |


**OAuth2 Default Clients**

As any OAuth2 provider, Cells require clients to be registered before they can connect. The server ships with 3 default clients respectively for Sync, Mobile, and CellsClient applications. The latest is a good choice if you wish to use the APIs.

As part of the OAuth2 authentication checks, the clients registered must declare the Redirect URIs that are allowed to be used during the authentication workflow. Below is a summary of the default clients and their authorized Redirect URIs.

| Client ID    | Public | Redirect URIs |
| ------------ | :----: | --------------|
| cells-sync   |  Yes   | http://localhost:[3636-3666] (a range of ports)<br />http://localhost:3000 (used during CellsSync development process) |
| cells-mobile |  Yes   | cellsauth://serverName (custom scheme that can be registered by mobile applications for reopening after authentication) |
| cells-client |  Yes   | http://localhost:3636<br/>http://serverName/oauth/oob (Out of Band endpoint that redirects to Cells web interface and display the token in a copy/paste interface) |

## Method 2: Personal Access Token

For a fully automatized integration, implementing OAuth2 may be cumbersome and even blocking. For example, writing a server-side tool to communicate with Cells may prevent you from initiating browser-based authentication session. For this case, Cells provides a "Personal Access Token" mechanism, that you can simply generate for a given user with a given expiration time.

Logged on the Cells server, use the `cells admin user token` command to easily generate an authentication token. Note that Cells must be running on the server.

```
$ ./cells admin user token

DESCRIPTION

  Generate a personal authentication token for a user. 

  Expiration can be either a "hard" limit, by using the -e flag and a golang duration, or a "sliding window" 
  defined in seconds using the -a flag. 

EXAMPLES

  Generate a token that lasts 24 hours for user admin
  $ ./cells user token -u admin -e 24h

  Generate a token that lasts by default 10mn, but which expiration is refreshed to the next 10mn each time 
  token is used.
  $ ./cells user token -u admin -a 600

TOKEN USAGE

  These token can be used in replacement of an OAuth2-based access token : they can replace the "Bearer" access 
  token when calling any REST API. They can also be used as the password (in conjunction with username) for all 
  basic-auth based APIs (e.g. webDAV).

TOKEN SCOPE

  By default, generated tokens grant the same level of access as a standard login operation. To improve security, 
  it is possible to restrict these accesses to a specific file or folder (given it is accessible by the user in 
  first place) with a "scope" in the format "node:NODE_UUID:PERMISSION" where PERMISSION string contains either "r"
  (read) or "w" (write) or both.

Usage:
  ./cells admin user token [flags]

Flags:
  -a, --auto int        Auto-refresh (number of seconds, see help)
  -e, --expire string   Expire after (golang duration format)...
  -h, --help            help for token
  -s, --scope strings   Optional scopes
  -u, --user string     User login (mandatory)

```

