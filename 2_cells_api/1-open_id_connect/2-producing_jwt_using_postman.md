
First, you need to create an authentication token for a user. You need the login credentials for the user, as well as the API key and secret that you can find in the `Config backends` screen of the Pydio Cells administration screens.

Below is an example of an authentication token request on the pydio demo website (login / password: admin / admin, api key / secret : cells-front / cells-front)

- Create a new POST request to https://demo.pydio.com/auth/dex/token
- In the Authorization tab, choose Basic Auth and enter cells-front as username and cells-front as password.
- In the Headers tab, add a header Cache-Control of value no-cache.
- In the Body tab, choose x-www-form-urlencoded and enter the following fields:
  - grant_type: password
  - username: admin
  - password: admin
  - scope: email profile pydio offline
  - nonce: nonce

[:image-popup:2_cells_api/postman_post.png]

Upon success, the request returns a JSON object containing :

- An access token,
- A token type,
- An expiry time,
- A refresh token,
- An ID token.

The ID token will be used for subsequent requests to the REST APIs.

Below is an example a REST API request to the config API to list the services running on the system.

- Create a new GET request to https://demo.pydio.com/a/config/ctl
- In the Authorization tab, choose Bearer Token and enter the ID token retrieved previously in the Token field.
- In the Headers tab, add a header Cache-Control of value no-cache.

[:image-popup:2_cells_api/postman_get.png]

### Automate the token process

First you need to create a environment on postman, follow the screenshots below for detailed steps.

[:image-popup:2_cells_api/create_env_postman.png]

[:image-popup:2_cells_api/postman_post.png]

[:image-popup:2_cells_api/setup_env_postman.png]

- **Edit Environment** : put a name for this env variable

- **Key** : put a key for this env like the one used on the screenshot `dex_token` otherwise you can name it as you wish but you must respect variable naming therefore do not make use of whitespaces and such.

- **Value** : You don't have to fill this one, the goal of those steps is to facilitate this process.

Now that our environment variable is created we need to enable it on the current workspace and to do so select it as seen in this screenshot

[:image-popup:2_cells_api/enable_created_env_postman.png]

Now you have two options to make use of this env variable, change on each of your requests the `Bearer token` value to `{{dex_token}}` or you can even automate this a step further and to for that follos the steps below.

First add a collection,

[:image-popup:2_cells_api/add_collection.png]

now give a name to your collection and configure it to make use of the token env variable previously created,

[:image-popup:2_cells_api/create_and_add_env_to_collection.png]

You need to add your api requests in the collection to be able to make use of the feature.

[:image-popup:2_cells_api/add_to_collection_postman.png]

- click on the arrow on the right of the word **save** and choose **save as...**

[:image-popup:2_cells_api/save_to_collection_postman.png]

then choose the collection previously created and add it into it,
when done click on save.

To use the variable for requests and therefore facilitating this step(because you had to copy paste it each time), use the `inherit auth from parent` in the Authorization tab for each request that you have or will be created within this collection.

And now you just need to run once the token request.
**Beware this step is mandatory because the token expires after a certain amount of time.**
It will now be shared with all of your requests abstracting you from copying and pasting everytime.

[:image-popup:2_cells_api/use_token_on_collection.png]

