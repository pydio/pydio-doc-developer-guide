## OAuth2 Authentication Process

It is recommended to use the Authorization Flow Grant.

The Authorization flow first requires you to request a temporary authorization code that you later exchange for an access token. As we create CSRF cookies to validate the flow, the code needs to be retrieved via a browser. In this document we are redirecting to a Pydio Cells page created to display an authorization code but you can also prefer to use your own page, as long as the URL is added to the list of callback urls allowed for this client.

[:image-popup:0_introduction/curl/authentication.gif]

### Client Parameters

We assume here that you have created a dedicated Client inside Cells. Check [Create OAuth2 Client](./authentication) for more info.

| Parameter        | value                                    |
| ---------------- | ---------------------------------------- |
| Client Name      | cells-curl                               |
| Client ID        | cells-curl                               |
| Client Secret    | password                                 |
| Callback URLs    | http://mypydio.localhost:8080/oauth2/oob |
| Grant Types      | Authorization Code                       |
| Response Types   | Code, Token, IDToken                     |


### Quick bash setup

```sh
DOMAIN="http(s)://yourpydio.com"
AUTHORIZATION_ENDPOINT=`curl --silent $DOMAIN/oidc/.well-known/openid-configuration | jq --raw-output '.authorization_endpoint'`
TOKEN_ENDPOINT=`curl --silent $DOMAIN/oidc/.well-known/openid-configuration | jq --raw-output '.token_endpoint'`
```

### Request Authorization

This will open a browser window if you have a default browser setup. If you don't, then echo and copy and paste this url in your preferred browser

```
open "$AUTHORIZATION_ENDPOINT?response_type=code&client_id=cells-curl&cells_secret=password&redirect_uri=$DOMAIN/oauth2/oob&state=12345678"
```

Copy the code generated in the clipboard

### Exchange the code for an access token

```
CODE=<paste here>
ACCESS_TOKEN=`curl --silent -u "cells-curl:password" -X POST -d "grant_type=authorization_code&code=$CODE&redirect_uri=$DOMAIN/oauth2/oob" $TOKEN_ENDPOINT | jq --raw-output '.access_token'`
```

## API Call

Below is a sample API call using the Authorization header with the Access Token you have previously retrieved.

```
curl -H "Authorization: Bearer $ACCESS_TOKEN" $DOMAIN/a/config/ctl
```

## S3 Call

Performing S3 calls using curl is quite complex, as the S3 Authorization mechanism requires specific signatures computation based on each request sent to S3. We suggest using a dedicated command line S3 tool instead, using the `ACCESS_TOKEN` as Api Key and the string `gatewaysecret` as password.