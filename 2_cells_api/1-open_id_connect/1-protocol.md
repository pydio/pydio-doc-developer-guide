

This is is the core authentication mechanism used in Cells. As such, you will have to use this API as soon as you want to talk to other APIs.

OpenIDConnect is a layer developed on the OAuth2 protocol to carry authorizations inside [JWT (JSON Web Tokens)](https://jwt.io/). It is used and maintained by major actors like Google or Facebook, and it provides the OAuth advantage of eventually providing an authentication token to third party apps without needing to request the user id/password.

In Pydio Cells, a dedicated OIDC server (using coreos/dex application) is bundled and in charge of all authentication operations. It produces a JWT that is then used by the various clients to query the services. Pydio Cells frontend is seen as an OAuth Client application.

It is possible to configure the various Expiry times of both the JWT and the RefreshToken. By default, Pydio Cells JWT is short-lived, requiring regular refreshment and allowing to re-check the user permissions at this time. The refresh token expiry time can be set “sliding”, so that its expiry time is updated at each refresh call.
