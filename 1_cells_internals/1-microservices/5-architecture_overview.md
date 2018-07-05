
Below is an overview of the Pydio Cells architecture (click on it to see the detail):

[:image-popup:1_cells_internals/Pydio_cells_Architecture-V1.png]

As explained in the previous section, public access APIs are following the “API Gateway” pattern: gRPC services may provide an additional gateway service that translates HTTP REST into gRPC.
A dedicated service is acting as a proxy to dispatch incoming queries to these gateways.

The data is exposed via a set of standard protocols:

- Authentication is following the OpenID Connect Protocol, an identity layer on top of OAuth2, using JSON Web Tokens (JWT)
- Files can be managed using the Amazon S3 protocol.
- Activities are published in the Activity Streams 2.0 format (by W3C).
- Logs are redirected to the stdout in JSON format, to be aggregated in ELK or similar.

It is stored in various ways:

- Application metadata, specific business data (users & roles, chat, tasks…) are persisted in a database. For the moment, production servers can run with MySQL (or mariaDB equivalent). Tests are done using SQLite.
- Logs and semi persistent data (like various queues) are persisted in an embedded KVStore (BoltDB).
- The Files themselves are stored in the underlying datasources (see relevant resources).
- A small amount of tactical info is directly stored in a few files, typically:
  - Main configuration is stored in a pydio.json file,
  - License for the enterprise edition is stored in a pydio-license file.
