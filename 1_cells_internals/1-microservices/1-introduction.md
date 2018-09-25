
Pydio Cells is composed of a set of “microservices”, each one being dedicated to a simple task. These services can run distributed on a cluster of servers, and most of them can be independantly horizontally scaled. They all communicate together via specific APIs, and each service brings its own persistence layer (when necessary).

Breaking a monolithic application into a set of microservices introduces many improvements:

- Communication between services via API dictates a predefined protocol without assuming the nature of the service. Services can for example be written in different languages.
- Per-service persistence layer allows to choose the best persistence implementation for the task implemented by each service.
- When the application is under heavy load, it is possible to scale only the specific services that constitute bottlenecks, other than scaling out the whole application.
- Apart the request/response model, a generic event bus can broadcast messages to any service that has subscribed for a given topic, allowing asynchronous communication and event-triggered actions.

Pydio tries to follow at most the [12-factors architecture pattern](https://12factor.net) that constitutes best practices for microservices.
