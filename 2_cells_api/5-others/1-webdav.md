

By default, Pydio Cells exposes a WebDAV protocol endpoint via the main gateway. 
You can access it with valid credentials at the following address: `<public-URL>/dav/`. 

All requests are then forwarded to a preconfigured dav specific port (see pydio.json config file or ./cells config list). This port is managed by a gRPC service that exposes a WebDAV handler based on `golang.org/x/net/webdav` library and wrapped with Pydio Cells authentication and logging layers.

This webdav access can be used to “mount” any accessible workspace as a network drive on the user’s desktops (windows / mac / linux).
