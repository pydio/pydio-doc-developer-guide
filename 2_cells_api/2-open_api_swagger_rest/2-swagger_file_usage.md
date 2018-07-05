
Once generated, the `swagger.json` spec file can be used to automatically generate SDKs in various languages. It is also used internally to expose the REST defined URIs and bind them to the micro services handlers.

- We use the [go-swagger](https://github.com/go-swagger/go-swagger) project to generate the SDK client for go (see below)
- We use `swagger-codegen` (version 2.2.3, not latest) to generate the Javascript and PHP clients in the frontend. See the [generate-api.sh file](github.com/pydio/cells-front/core/generate-api.sh) for a sample script.  
  It's worth noting that we have to manually fix the generated javascript after generation to address the circular reference issue brought by activities that can reference other activities and chained jobs.

Similarly, you can copy / paste the JSON content in the editor.swagger.io interface and use their online tool to generate any clients in any language.
