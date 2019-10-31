### WebDAV

By default, Pydio Cells exposes a WebDAV protocol endpoint via the main gateway. 
You can access it with valid credentials at the following address: `<public-URL>/dav/`.

All requests are then forwarded to a preconfigured dav specific port (see pydio.json config file or ./cells config list). This port is managed by a gRPC service that exposes a WebDAV handler based on `golang.org/x/net/webdav` library and wrapped with Pydio Cells authentication and logging layers.

This webdav access can be used to “mount” any accessible workspace as a network drive on the user’s desktops (windows / mac / linux).

### gRPC

TODO

### WebSocket

Pydio Cells exposes two authenticated websocket endpoints sending various messages from the server up to the javascript client.

Endpoints are:

- **/ws/events**: sends most events regarding the tree (nodes added / modified / removed), reflecting the state of the files and folders in real time in the frontend, as well as ACLs/Permissions changes (for e.g. refreshing Workspaces list in real time).
- **/ws/chats**: this websocket point is used for the chat applications embedded in the frontend. It uses the underlying chat microservice along with the internal event bus to broadcast messages to users registered on a given room.  

### Wopi

For supporting online MSOffice Documents edition, Pydio exposes a WOPI interface for reading/writing documents. A dedicated micro service is used for that, see the WOPI specification to [learn more](https://wopi.readthedocs.io/en/latest/).