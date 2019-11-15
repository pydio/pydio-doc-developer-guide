
In a microservice environment, it is not rare that an incoming request triggers many sub-requests to many services under the hood. For logging and also for diagnosing bottlenecks and services inter-dependencies, unique tokens are generated and then propagated via the requests Headers on each request.

A dedicated HTTP handler is added to both gRPC and REST services, in charge of automatically detecting whether a request already has a "Span Root Id" (identifying the very first entry point) and propagating it to sub-requests, and also adding a unique token (Span Id) for each of these.  
See `common/service/context/span.go` for this middleware.

The result can be seen in the `Logs` screen of the admin interface, where logs are grouped by Span Root Id.

For instance, a "user update" operation triggers logs at the users and roles Rest and GRPC levels. All these requests are in fact originating a unique one, as shown below:

[:image-popup:1_cells_internals/capture_log.png]
