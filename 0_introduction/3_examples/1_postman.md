Postman is a powerful client side application that can be used to debug and test communication with a server over TCP. See [GetPostman.com](https://www.getpostman.com/) to download the application.

## OAuth 2

Available OAuth 2 default parameters to use for Cells:

| Parameter        | Value                                      |
| ---------------- | ------------------------------------------ |
| Callback URL     | http://localhost:3000/servers/callback     |
| Auth URL         | http(s)://your-cells.com/oidc/oauth2/auth  |
| Access Token URL | http(s)://your-cells.com/oidc/oauth2/token |
| Client ID        | cells-sync, cells-client, cells-mobile     |
| Scope            | openid email profile pydio offline         |

## Authenticate with Postman

Add authentication on Postman:

- **Type:** select **OAuth 2.0**
- Then press **Get New Access Token**

[:image:0_introduction/postman/select_auth_type.png]

Get an Access Token

| <u>name</u>               | <u>value</u>                                         |
| ------------------------- | ---------------------------------------------------- |
| **Token Name**            | the token name on postman                            |
| **Grant Type**            | Authorization Code                                   |
| **Callback URL**          | http://localhost:3000/servers/callback               |
| **Auth URL**              | https://cells-test/oidc/oauth2/auth                  |
| **Access Token URL**      | https://cells-test/oidc/oauth2/token                 |
| **Client ID**             | cells-sync                                           |
| **Client Secret**         | omit (you can let the field empty)                   |
| **Scope**                 | openid email profile pydio offline                   |
| **State**                 | you can put whatever you want (minimum 8 characters) |
| **Client Authentication** | Send as Basic Auth header                            |


Once you Press **Request Token**, you will be invited to log in with your Credentials on your Cells instance,

after that you will be redirected on postman with a token.

[:image:0_introduction/postman/resulting_token.png]

Once you have your **Token**, return to the authorization tab:

- Click on **Available Tokens**
- Select the **Token**

You can now query any endpoint that you have access to.

### API Call

This example calls the TreeService endpoint [POST /a/tree/stats](./post-atreestats), that provides a way to list files and folders ("nodes") on the server.

Example:

| type          | value               | description                                   |
| ------------- | ------------------- | --------------------------------------------- |
| endpoint      | /a/tree/stats       | Endpoint that list all the Nodes              |
| authorization | OAuth2 Access token | Access Token retrieved from the previous Step |
| body          | json                | JSON body of the request                      |

This is the modified body that will query all the children.

```json
{
  "AllMetaProviders": true,
  "Limit": 0,
  "NodePaths": [
    "/*"
  ],
  "Offset": 0,
  "Versions": true
}
```

[:image:0_introduction/postman/postman_api_request.png]

### S3 Call

Below is an sample URL for accessing data from the object file `Document Office Sample` in the personal workspace of a user in [the demo](http://demo.pydio.com):

`https://demo.pydio.com/io/personal-files/Document Office Sample`

This URL is composed of the following components :  

- `/io` : the bucket name where data is exposed  
- `/personal-files` : the "slug" of the workspace where the file is located.
- `/Document Office Sample` : path to the file inside the workspace

Using Postman, you can use this URL to interact with this object. In order to be properly identified, you have to use the "Authorization" tab, choose AWS Signature and enter:

| name             | value                                                                                |
| ---------------- | ------------------------------------------------------------------------------------ |
| **AccessKey**    | you can copy and paste the **Access token** retrieved previously with OAuth2         |
| **SecretKey**    | `gatewaysecret` (this is a fixed value).                                             |
| **Service Name** | _In the authorization tab > Advanced > Service Name add `s3`_ (see screenshot below) |


> For the **AccessKey** you can also use the Personal Access Token `./cells admin user token`

[:image:0_introduction/postman/postman_s3_get.png]

Then using the appropriate HTTP method, you can:

- **GET** download this file
- **PUT** upload data inside this file
