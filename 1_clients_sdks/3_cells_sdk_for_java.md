The Pydio Cells Java SDK wraps a standard [OpenAPI](https://www.openapis.org) client to communicate with a Pydio Cells server via its REST API. It is available at [https://github.com/pydio/cells-sdk-java](https://github.com/pydio/cells-sdk-java).

The client classes are generated with [Swagger](https://swagger.io) for Cells 3.x release train and we provide a transport layer to ease implementation of client application in Java.

This library also provides a Java implementation of a simplified client that can communicate with both a Cells _and_ a legacy Pydio 8 server. We rely on this implementation to develop the Cells Client for Android.

## Build

We use gradle as a build and publication tool and we ship the wrapper with the code, simply use `./gradlew <your command>` from within the root folder of the repository.

Main version of the code is maintained for the time being in the main `build.gradle` file.

Useful commands:

```sh
# Build the project
./gradlew build

# Publish to local maven repo
./gradlew publishToMavenLocal

```

## Remote server

A remote server is completely defined by a ServerURL. It wraps the validated URL of a remote server and is also in charge of managing TLS. Typically, it holds a skipVerify flag to skip all TLS layers, that is useful if you are using a sel-signed certificate.

A successfull call to the `ServerURL.ping()` method insure we perform HTTP requests to this address, with no SSL issue and have a valid ServerURL.

Given a valid ServerURL, the ServerFactory:

- checks various well-known endpoints to determinate the server type (P8 or Cells)
- instantiates the correct implementation of the server.

## Authentication

Authentication is managed at the transport layer. When you call `transport.getToken()`:

- a token is retrieved from its internal cache
- it is refreshed if necessary
- if no token have been found, the transport looks for persisted credentials and tries to get a token.

To retrieve a transport, you must first register an account via the ServerFactory by providing a valid ServerURL and credentials, that can be:

- JWTCredentials: wraps a JWT Token
- LegacyPasswordCredentials: wraps a valid password of a Cells user (warning: this is dangerous)
- P8Credentials: wraps a valid password and optionally a user entered captcha

## File Transfer

Pydio Cells relies on the S3 protocol to effectively transfer files. To ease dependency management, we do not provide implementation of the necessary S3Client at this layer, only an interface.

Thus, you can instantiate a Client from within the SDK-Java but it will not be able to get the files themselves, only the metadata.

To see some sample code on how to manage this, please refer to the cells-java-client or the cells-android-client repository depending on your setup.

## Example

```groovy
TestClientFactory factory = new TestClientFactory();
ServerURL serverURL = ServerURLImpl.fromAddress("https://localhost:8080", true);
Credentials credentials = new LegacyPasswordCredentials("user", "password");

String accountID = factory.registerAccountCredentials(serverURL, credentials);
Transport transport = factory.getTransport(accountID);

/* Use the simplified client*/

Client client = factory.getClient(transport);
client.mkdir("common-files", "/parent", "child");


/* Directly use the generated API (Cells only) */

// Authentication is auto-magically handled by the transport 
// as long as it has been previously registered
ApiClient apiClient = ((CellsTransport) transport).authenticatedClient();
TreeServiceApi api = new TreeServiceApi(apiClient);
// Build the request
RestGetBulkMetaRequest request = new RestGetBulkMetaRequest();
request.addNodePathsItem("common-files/parent/child");
request.setAllMetaProviders(true);
// Performs the request and handle result
RestBulkMetaResponse response = api.bulkStatNodes(request);
TreeNode node = response.getNodes().get(0); 
```

Refer to the included tests for more examples.

## Testing

At this layer, we only provide basic unit tests for the few classes that need it most, typically to insure encoding / decoding of the StateID is OK.

We have also implemented basic integration tests that need a target server.
You can configure the various `src/test/resources/accounts` property files to point toward your test instances. Then simply run:

```sh
./gradlew test -Dtest.profile=integration
```

## References

A list of random resources on the _WWW_ that have helped along the way and are kept here for reference.

- A [must read](https://auth0.com/docs/flows/call-your-api-using-the-authorization-code-flow) to understand how we manage authentication when target remote server is a Pydio Cells instance.

## Legacy note

This repository has been forked from [this legacy repo in Pydio's code base](https://github.com/pydio/pydio-sdk-java-v2).
