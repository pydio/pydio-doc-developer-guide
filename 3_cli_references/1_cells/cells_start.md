## ./cells start

Start one or more services

### Synopsis


DESCRIPTION

  Start one or more services on this machine. 
  $ ./cells start [flags] args...

  No arguments will start all services available (see 'ps' command).  
   - Select specific services with regular expressions in the additional arguments. 
   - The -t/--tags flag may limit to only a certain category of services (see usage below)
   - The -x/--exclude flag may exclude one or more services
  All these may be used in conjunction (-t, -x, regexp arguments).

REQUIREMENTS
  
  Ulimit: set a number of allowed open files greater or equal to 2048.
  For production use, a minimum of 8192 is recommended (see ulimit -n).

  Setcap: if you intend to bind the server to standard http ports (80, 443), 
  you must grant necessary permissions on cells binary with this command:
  $ sudo setcap 'cap_net_bind_service=+ep' <path to your binary>    

EXAMPLES

  1. Start all Cells services
  $ ./cells start

  2. Start all services whose name starts with pydio.grpc
  $ ./cells start pydio.grpc

  3. Start only services for scheduler
  $ ./cells start --tag=scheduler

  4. Start whole plateform except the roles service
  $ ./cells start --exclude=pydio.grpc.idm.role

ENVIRONMENT

  1. Flag mapping

  All the command flags documented below are mapped to their associated ENV var, using upper case and CELLS_ prefix.
  For example :
  $ ./cells start --grpc_external 54545
  is equivalent to 
  $ export CELLS_GRPC_EXTERNAL=54545; ./cells start

  [Note]: the only exception is the --log flag, that is mapped to CELLS_LOG_LEVEL instead.

  2. Working Directories 

  - CELLS_WORKING_DIR: replace the whole standard application dir
  - CELLS_DATA_DIR: replace the location for storing default datasources (default CELLS_WORKING_DIR/data)
  - CELLS_LOG_DIR: replace the location for storing logs (default CELLS_WORKING_DIR/logs)
  - CELLS_SERVICES_DIR: replace location for services-specific data (default CELLS_WORKING_DIR/services)

  3. Others

  - CELLS_CACHES_HARD_LIMIT: raise memory used by internal caches (in MB, default is 8)
  - CELLS_UPDATE_HTTP_PROXY: if your server uses a client proxy to access outside world, this can be set to query update server.
  - HTTP_PROXY, HTTPS_PROXY, NO_PROXY: Golang-specific environment variables to configure a client proxy for all external http calls.   


```
./cells start [flags]
```

### Options

```
      --bind string                             Internal IP|DOMAIN:PORT on which the main proxy will bind. Self-signed SSL will be used by default
      --enable_metrics                          Instrument code to expose internal metrics
      --enable_pprof                            Enable pprof remote debugging
  -x, --exclude stringArray                     Select services to start by filtering out some specific ones by name
      --external string                         External full URL (http[s]://IP|DOMAIN[:PORT]) exposed to the outside
      --grpc_cert string                        Certificates used for communication via grpc
      --grpc_external string                    External port exposed for gRPC (may be fixed if no SSL is configured or a reverse proxy is used)
      --grpc_key string                         Certificates used for communication via grpc
      --healthcheck int                         Healthcheck port number
  -h, --help                                    help for start
      --le_agree                                Accept Let's Encrypt EULA
      --le_email string                         Contact e-mail for Let's Encrypt provided certificate
      --log string                              Sets the log level : 'info', 'debug', 'error' (for backward-compatibility, 'production' is equivalent to log_json+info) (default "info")
      --log_json                                Sets the log output format to JSON instead of text. Necessary for production.
      --nats_address string                     NATS server address (default ":4222")
      --nats_cluster_address string             NATS server cluster address
      --nats_cluster_routes string              NATS server cluster routes
      --nats_monitor_port int                   Expose nats monitoring endpoints on a given port (default 8222)
      --nats_streaming_cluster_bootstrap        NATS streaming bootstrap cluster
      --nats_streaming_cluster_id string        NATS streaming cluster ID (default "cells")
      --nats_streaming_cluster_node_id string   NATS streaming cluster node id
      --nats_streaming_cluster_peers string     NATS streaming list of cluster peers
      --nats_streaming_clustered                NATS streaming clustered
      --nats_streaming_store string             NATS streaming store type (default "MEMORY")
      --no_tls                                  Configure the main gateway to rather use plain HTTP
      --port_broker int                         Port used to start a broker discovery service (default 8003)
      --port_registry int                       Port used to start a registry discovery service (default 8000)
  -t, --tags stringArray                        Select services to start by tags, possible values are 'broker', 'data', 'datasource', 'discovery', 'frontend', 'gateway', 'idm', 'scheduler'
      --tls_cert_file string                    TLS cert file path
      --tls_key_file string                     TLS key file path
      --transport string                        Transport protocol for RPC (default "grpc")
```

### Options inherited from parent commands

```
```

### SEE ALSO

* [./cells](./cells)	 - Secure File Sharing for business

###### Auto generated by Pydio Cells Home Edition v2.3.2 on 28-Jul-2021
