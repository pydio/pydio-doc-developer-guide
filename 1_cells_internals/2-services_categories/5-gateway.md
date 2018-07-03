## Gateway

The gateway folder contains the highest level services. Most of them are simple proxies in charge of dispatching the incoming requests to the underlying services. Finally, a top level proxy is dispatching all requests to these middlewares, as described below : 

[:image-popup:1_cells_internals/gate.png]



* The Data gateway provides an Amazon s3 compatible access to actual data

* Dav, Wopi and WebSockets implement their respective protocols

* Micro gateway is described below.

### Routing

The top-level proxy will handle all incoming calls using the first segment to proxy to the correct gateway. The micro gateway is also dynamically dispatching the REST calls to the underlying services. Based on a common namespace (pydio.rest.), the path URI is used to dispatch calls to the correct service and the correct method. 
For example, calling /a/config/discovery will be first handled by the top level proxy and forwarded as /config/discovery to the Micro gateway, and will then send a /discovery request to the pydio.rest.config service.
