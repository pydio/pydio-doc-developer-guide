## ./cells

Secure File Sharing for business

### Synopsis

Thank you for using Pydio Cells.
Comprehensive sync & share solution for your collaborators. Open-source software deployed on-premise or in a private cloud.

### Installation

For the very first run, use './cells install' to load browser-based or command-line based installation wizard. Services
will start at the end of the installation.

### Run

Run './cells start' to load all services.

### Logs level

By default, logs are outputted in console format at the Info level. You can set the --log flag or set the PYDIO_LOGS_LEVEL environment
variable to one of the following values:
 - debug, info, error : logs are written in console format with the according level
 - production : logs are written in json format, for usage with a log aggregator tool.

### Services Discovery

Micro services need a registry mechanism to discover each other. You don't need to install any dependency.
Cells currently only supports NATS (nats.io) implementation. If a gnatsd service is already running, it will be detected.

### Cells working directories

By default, application data is stored under the standard OS application dir : 

 - Linux: ${USER_HOME}/.config/pydio/cells
 - Darwin: ${USER_HOME}/Library/Application Support/Pydio/cells
 - Windows: ${USER_HOME}/ApplicationData/Roaming/Pydio/cells

You can customize the various storage locations with the following ENV variables : 

 - CELLS_WORKING_DIR : replace the whole standard application dir
 - CELLS_DATA_DIR : replace the location for storing default datasources (default CELLS_WORKING_DIR/data)
 - CELLS_LOG_DIR : replace the location for storing logs (default CELLS_WORKING_DIR/logs)
 - CELLS_SERVICES_DIR : replace location for services-specific data (default CELLS_WORKING_DIR/services) 



```
./cells [flags]
```

### Options

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Broker port (default ":4222")
      --enable_metrics                    Instrument code to expose internal metrics
      --enable_pprof                      Enable pprof remote debugging
      --fork                              Used internally by application when forking processes
      --grpc_cert string                  Certificates used for communication via grpc
      --grpc_external string              External port exposed for gRPC (may be fixed if no SSL is configured or a reverse proxy is used)
      --grpc_key string                   Certificates used for communication via grpc
  -h, --help                              help for ./cells
      --log string                        Sets the log level mode (default "info")
      --registry string                   Registry used to manage services (currently nats only) (default "nats")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address (default ":5222")
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells acl](./cells-acl)	 - Manage access control lists
* [./cells config](./cells-config)	 - Configuration manager
* [./cells data](./cells-data)	 - Directly interact with a datasource
* [./cells doc](./cells-doc)	 - Manage documentation about Cells and this CLI tool
* [./cells install](./cells-install)	 - Install Cells using a friendly user interface (browser)
* [./cells install-cli](./cells-install-cli)	 - Install Cells using this terminal
* [./cells meta](./cells-meta)	 - Directly manage metadata on the nodes
* [./cells ps](./cells-ps)	 - List all available services and their statuses
* [./cells start](./cells-start)	 - Start Cells services
* [./cells stop](./cells-stop)	 - Stop one or more services
* [./cells test](./cells-test)	 - Run conformance tests
* [./cells update](./cells-update)	 - Check for available updates and apply them
* [./cells user](./cells-user)	 - Manage users
* [./cells version](./cells-version)	 - Display current version of this software

###### Auto generated by spf13/cobra on 31-Oct-2019