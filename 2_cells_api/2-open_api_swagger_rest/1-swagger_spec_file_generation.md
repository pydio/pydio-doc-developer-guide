## Open API Swagger REST

As described in the preceding chapter, communication between microservices is done using either gRPC (low-level) or REST (world-facing). The various business and technical model objects are defined with protobuf syntax in various proto files. Protobufs are standard in the gRPC world, but we also use them to describe our REST APIs. Using specific Protobuf annotations, we can generate an Open API spec file that describes the model and the REST API entry points. This file is then used to:
Generate the REST API documentation that can be accessed via the Admin console 
Generate various clients that connect to the backend via REST services.

### Swagger spec file generation 

* Models are defined in the various `.proto` files that are to be found under `cells/common/proto/rest`
* All models are imported in a single main `rest.proto` file that is in the same package
* This file is compiled using a specific version of the protoc compiler (**TODO** enhance and document this) to generate the swagger spec file named `rest.swagger.json`
* We use then this spec file to generate various resources:
* A specific `protoc.sh` script to generate the `swagger.go` file (**TODO** where do we use this),
