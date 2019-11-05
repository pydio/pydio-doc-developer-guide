
## OAuth 2

Available OAuth 2 default parameters to use for Cells:

| Parameter        | value                                              |
| ---------------- | -------------------------------------------------- |
| Callback URL     | http://localhost:3000/servers/callback             |
| Auth URL         | http(s)://your-cells.com**/oidc/oauth2/auth**      |
| Access Token URL | http(s)://your-cells.com**/oidc/oauth2/token**     |
| Client ID        | **cells-sync**, **cells-client**, **cells-mobile** |
| Scope            | openid email profile pydio offline                 |

## Authenticate with Postman

Add authentication on Postman=

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
| **Scope**                 | openid email profile pydio offline                   |
| **State**                 | you can put whatever you want (minimum 8 characters) |
| **Client Authentication** | Send as Basic Auth header                            |

[:image:0_introduction/postman/new_access_token_settings.png]

Once your Press **Request Token**, you will be invited to log in with your Credentials on your Cells instance,

after that you will be redirected on postman with a token.

[:image:0_introduction/postman/resulting_token.png]

Once you have your **Token**, return to the authorization tab:

- Click on **Available Tokens**(screenshot below)
- Select the **Token** (by its name)

[:image:0_introduction/postman/select_available_token.png]

You can now query any endpoint that you have access to.

### API Call

### S3 Call

Postman is a powerful client side application that can be use to debug and test communication with a server over TCP.

Below is an sample URL for accessing data from the object file `file.txt` in the personal workspace of a user in [the demo](http://demo.pydio.com):

`https://demo.pydio.com/io/personal-files-1/file.txt`

This URL is composed of the following components :  

- /io : the name of the bucket where data is exposed  
- /personal-files-1 : the "slug" of the workspace where the file is located.
- /file.txt : path of the file inside the workspace


Using Postman, you can use this URL to interact with this object. In order to be properly identified, you have to use the "Authorization" tab, choose AWS Signature and enter:

- AccessKey: `<JWT value>` (jwt retrieved with OpenID Connect request)
- SecretKey: `gatewaysecret` (this is a fixed value).

Then using the appropriate HTTP method, you can : 

- **HEAD** read metadata about the file
- **GET** download this file
- **PUT** upload data inside this file
- ... You can use all the Amazon S3 api in the same fashion.