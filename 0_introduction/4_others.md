Apart from REST and S3 APIs, there are a couple of other accessible endpoints in your Cells Server:

- WebDAV
- gRPC
- Websocket
- WOPI

### WebDAV

By default, Pydio Cells exposes a WebDAV protocol endpoint accessible at the following address: `<public-URL>/dav/`. It is protected by a Basic-Auth authentication, using user/password credentials.

This webdav access can be used to “mount” any accessible workspace as a network drive on the user’s desktops (Windows / Mac / Linux).

### gRPC

Currently only used by the CellsSync client, a dedicated gRPC gateway provides a fast HTTP/2 access to the tree operations.

Depending on the TLS configuration:

- If TLS is enabled, gRPC is exposed at the same URL as your Cells server (root serves both HTTP/1.1 and HTTP/2).
- If TLS is not enabled, or gRPC is forced to use an alternative port using the PYDIO_GRPC_EXTERNAL environment variable, this gateway is exposed on a dedicated port. This port is exposed in the /a/config/discovery API endpoint response.

### WebSocket

Pydio Cells exposes two authenticated websocket endpoints sending various PUSH messages from the server. It is currently used by the WebUI Javascript client.

Endpoints are:

- **/ws/events**: sends most events regarding the tree (nodes added / modified / removed), reflecting the state of the files and folders in real time in the frontend, as well as ACLs/Permissions changes (for e.g. refreshing Workspaces list in real time).
- **/ws/chats**: this websocket point is used for the chat applications embedded in the frontend. It uses the underlying chat microservice along with the internal event bus to broadcast messages to users registered on a given room.  

### Wopi

For supporting online MSOffice Documents edition, Pydio exposes a WOPI interface for reading/writing documents. A dedicated micro service is used for that, see the WOPI specification to [learn more](https://wopi.readthedocs.io/en/latest/).
