

First, you need to create an authentication token for a user. You will the login credentials for the user, as well as the API key and secret that you can find in the “Config backends” screen of the Pydio Cells administration screens.

Below is an example of an authentication token request on the pydio demo website (login / password: admin / admin, api key / secret : cells-front / cells-front)

* Create a new POST request to https://demo.pydio.com/auth/dex/token
* In the Authorization tab, choose Basic Auth and enter cells-front as username and cells-front as password.
* In the Headers tab, add a header Cache-Control of value no-cache.
* In the Body tab, choose x-www-form-urlencoded and enter the following fields :
  * grant_type	password
  * username	admin
  * password	admin
  * scope		email profile pydio
  * nonce		nonce


[:image-popup:2_cells_api/postman_post.png]


Upon success, the request will return a JSON object containing :

* An access token,
* A token type,
* And expiry time,
* A refresh token,
* An ID token

The ID token will be used for subsequent requests to the REST APIs.

Below is an example a REST API request to the config API to list the services running on the system.

* Create a new GET request to https://demo.pydio.com/a/config/ctl
* In the Authorization tab, choose Bearer Token and enter the ID token retrieved previously in the Token field.
* In the Headers tab, add a header Cache-Control of value no-cache

[:image-popup:2_cells_api/postman_get.png]

