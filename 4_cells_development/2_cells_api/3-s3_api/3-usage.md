
### Using Postman

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