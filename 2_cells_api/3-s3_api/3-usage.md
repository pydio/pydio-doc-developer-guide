## Usage

### Using Postman

Postman is a powerful client side application that can be use to debug and test communication with a server over TCP. 

Below is an example retrieving the metadata from the object file file.txt in the personal workspace of a user on demo.pydio.com

Create a new HEAD request to https://demo.pydio.com/io/personal-files-1/file.txt 
In the Authorization tab, choose AWS Signature and enter :

* AccessKey	`<JWT value>`
* SecretKey	`gatewaysecret`

### Frontend Layer

At the time of writing, with Pydio Cells 1.0, the S3 gateway is used by:

* the php front end, that adds an encapsulation layer and transforms `GET` and `PUT` requests to prepare a signed URL that is then sent to the gateway,

* the javascript client to query the tree service. The corresponding requests does not go through the S3 layers and are directly forwarded to the tree service to retrieve relevant information.

Typically, when browsing files via the explorer (that is written in React), the following is implemented:

* browsing the tree is done in Javascript with calls to the tree service (namely the `pydio.rest.meta` service) without going through the S3 API. This enables custom headers and the management of rich and custom metadata on files (rating, tags, etc.).

* when getting or putting a file, a first call to the PHP is done that returns a presigned URL, this URL can then be used by the Javascript to directly communicate with the S3 endpoints.

The implementation is almost self explanatory: check `github.com/pydio/cells-front/plugins/access.gateway/GatewayAccessDriver.php`

You might also check the `use_path_style_endpoint` config parameter.

To better understand how it is plugged, have a look at the following PHP code in cells-front code:

```sh
github.com/pydio/cells-front/core/src/pydio/Core/Services/RepositoryService.php
github.com/pydio/cells-front/plugins/access.s3/S3AccessWrapper.php
```
Please Note: the PHP Layer will soon be totally removed.
