

A key component of a microservice architecture is how services “discover” each other. As each service exposes its API (generally using HTTP) it is bound to an IP and a port. Other services must know this address to contact the service and retrieve information from it. This is generally done by keeping a dedicated “registry”, whose IP and port are known by all services, and to which each service declares itself at run time. Contacting a service is then done by asking the registry a list of available instances of this service running on the various cluster nodes.  
Pydio Cells uses Micro, a golang-based microservice framework that provides various adapters to common registry solutions. Nats.io and Consul.io are two well known solutions providing such a registry solution. Pydio Cells uses Nats by default, and actually embeds a Nats server to avoid any deployment hassle.
In the future, Pydio Cells could use etcd or other kubernetes-like feature for services registry.
