Javascript SDK for communicating with Cells server.

It is hosted on [https://github.com/pydio/cells-sdk-js](https://github.com/pydio/cells-sdk-js) and published on NPM as the [cells-sdk](https://www.npmjs.com/package/cells-sdk) module.

This SDK is generated automatically using `swagger-codegen` tool from the OpenAPI specification of Cells Rest API. It does not rely on any framework and uses superagent internally for performing HTTP requests.

Since Cells v3, it is used internally by the official Pydio Cells web interface (written in React).

**Please note** that this SDK only provides tooling for connecting to REST APIs (see below). If you wish to transfer actual data to/from files, you have to [use the javascript AWS S3 library](https://www.npmjs.com/package/aws-sdk) to perform PutObject/GetObject (or Multipart uploads) requests on Cells S3 Gateway.

## Usage

### Installation

Use `npm install --save cells-sdk` to append the latest version to your package.json.

### Authentication

Authentication is passed via the `Authorization: Bearer $TOKEN` header, where `$TOKEN` can be a Personal Access Token, or retrieved dynamically by the frontend login process.

### Endpoints

All APIs described in Cells official documentation are supported. Below are listed the main services available :

- ACLService
- ActivityService
- AdminTreeService
- ConfigService
- FrontendService
- GraphService
- InstallService
- JobsService
- LogService
- MailerService
- MetaService
- PolicyService
- RoleService
- SearchService
- ShareService
- TemplatesService
- TokenService
- TreeService
- UpdateService
- UserMetaService
- UserService
- WorkspaceService

Please refer to the docs for more information.

### Example

A sample application is available in example/app.js

Basic tree listing looks like :

```javascript
    var api = new TreeServiceApi(client);
    var request = new RestGetBulkMetaRequest();
    request.NodePaths = ['/folder/*'];
    api.bulkStatNodes(request).then(res => {
        // Read array res.Nodes with all nodes
    });
```

## Enterprise SDK

Cells Enterprise specific APIs can be accessed using its counterpart [Cells Enterprise SDK for Javascript](https://www.npmjs.com/package/cells-enterprise-sdk).