## S3 API

The [gateway package](https://github.com/pydio/cells/tree/master/gateway/data) provides an S3 API compatible gateway for serving files using the Amazon S3 protocol.

### Overview

The s3 gateway is based on a [Minio server](https://minio.io/) with a custom gateway and is registered as a Pydio Cells microservice named `pydio.grpc.gateway.data` and configured in the [plugins file](https://github.com/pydio/cells/tree/master/gateway/data).
We use our own layer for authorization (using the JWT), so the API Keys / API Secret are not really used internally for authentication. For this reason, they are by default set to “gateway / gatewaysecret” and can be public.
The custom gateway provides access to the tree service and the various Pydio Datasources:

- for all "stat" and "list" related queries, it uses the `NodeProvider` interface of Tree service,
- for all "content" related queries (various `GET` and `PUT` request), it directly proxies to the underlying S3 server of each datasource.
