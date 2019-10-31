
## Open API (Swagger) REST

As described in the preceding chapter, communication between microservices is done using either gRPC (low-level) or REST (world-facing). The various business and technical model objects are defined with protobuf syntax in various proto files. Protobufs are standard in the gRPC world, but we also use them to describe our REST APIs. Using specific Protobuf annotations, we can generate an Open API spec file that describes the model and the REST API entry points. This file is then used to:

- Generate the REST API documentation that can be accessed via the Admin console,
- Generate various clients that connect to the backend via REST services.

### Swagger spec file generation

- Models are defined in the various `.proto` files that are to be found under `cells/common/proto/rest`
- All models are imported in a single main `rest.proto` file that is in the same package
- This file is compiled using a specific version of the protoc compiler to generate the swagger spec file named `rest.swagger.json`.
- We use then this spec file to generate various resources
- A specific `protoc.sh` script is then used to generate the `swagger.go` file.


### Usage

Once generated, the `swagger.json` spec file can be used to automatically generate SDKs in various languages. It is also used internally to expose the REST defined URIs and bind them to the micro services handlers.

- We use the [go-swagger](https://github.com/go-swagger/go-swagger) project to generate the SDK client for go (see below)
- We use `swagger-codegen` (version 2.2.3, not latest) to generate the Javascript and PHP clients in the frontend. See the [generate-api.sh file](github.com/pydio/cells-front/core/generate-api.sh) for a sample script.  
  It's worth noting that we have to manually fix the generated javascript after generation to address the circular reference issue brought by activities that can reference other activities and chained jobs.

Similarly, you can copy / paste the JSON content in the editor.swagger.io interface and use their online tool to generate any clients in any language.
