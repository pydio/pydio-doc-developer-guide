

Communication between services can be using various transport methods described below.

### gRPC

Used for low-level services, gRPC is based on HTTP/2 for transport and uses Google Protobuf messages for serialization. Protobufs are super-optimized for fast serialization/deserialization, and HTTP/2 brings the power of Streams on top of the standard request/response model. 
Pydio Cells Protobufs are available in .proto and in their .go compiled form in the code (see common/proto). 

### HTTP REST

Some services expose standard HTTP endpoints with REST APIs. As described below, these are higher level services “facing” the outside world (via proxies). 
In Pydio Cells, for the sake of documentation and ease of golang marshalling/unmarshalling operations, REST APIs are also described in Protobuf format, along with specific annotations to map the proto services to GET/POST/PUT… classic HTTP operations. Proto messages are serialized in JSON using the jsonpb library (to make sure enums are serialized as string and not ints).
These proto services also generate an OpenAPI JSON description of the REST services, allowing easy generation of SDKs for Pydio Cells API in any language.

For the record, the documentation of the HTTP REST API of Pydio Cells is generated with Swagger and can be found in the web front UI, in the admin settings panel under `All Plugins >> REST APIs`.

### Event bus

Another way of communication across services goes through the global event bus. This feature is also provided by Nats or Consul. It allows the broadcast of messages to the whole application. Services can subscribe to certain topics and asynchronously receive messages.
