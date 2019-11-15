
In a microservice architecture, it is common to have low-level services that do almost only one basic task (like CRUD-ing a given data type into a persistence layer). When it comes to serving usable data to an actual client (web browser, mobile app, etc.), some additional business logic is required to grab information from the many services and put the pieces together.

Moreover, the authentication/authorization mechanism may not be enabled on all services, as it would be too much overhead. The API Gateway will complete the underlying APIs with public facing features, such as authenticating incoming requests. Underlying APIs will consider the requests as pre-authorized.

In Pydio Cells, many gRPC services have their REST counterpart for serving information to the outside. See the schema below.

[:image:1_cells_internals/api-gateway.png]

For instance, a query to the /config/ REST endpoint will call the pydio.grpc.config service below to retrieve and store the configs.

```sh
curl http://localhost:8080/a/config/discovery
```

Finally, at the top level, a main proxy receives all requests sent to this address and forwards them to the correct `address:port/path`.
