## ./cells-enterprise files meta-read

Display existing metadata for a given node

### Synopsis

Display existing metadata for a given node.

EXAMPLE
=======
$ ./cells-enterprise files meta-read --uuid=244f072d-d9a1-11e7-950b-685b35ac60e5
+-------------------------------+---------------------------------------------------------------------------------------------------------------+
|             NAME              |                                                     VALUE                                                     |
+-------------------------------+---------------------------------------------------------------------------------------------------------------+
| pydio:meta-data-source-name   | "pydiods1"                                                                                                    |
| ImageDimensions               | {"Height":200,"Width":200}                                                                                    |
| is_image                      | true                                                                                                          |
| readable_dimension            | "200px X 200px"                                                                                               |
| pydio:meta-data-source-path   | "download.png"                                                                                                |
| pydio:meta-object-service-url | "127.0.0.1:9001/pydiods1"                                                                                     |
| ImageThumbnails               | {"Processing":false,"thumbnails":[{"format":"jpg","size":256,"url":""},{"format":"jpg","size":512,"url":""}]} |
| image_width                   |                                                                                                           200 |
| name                          | "download.png"                                                                                                |
| image_height                  |                                                                                                           200 |
+-------------------------------+---------------------------------------------------------------------------------------------------------------+



```
./cells-enterprise files meta-read [flags]
```

### Options

```
  -h, --help          help for meta-read
  -u, --uuid string   Uuid of the node
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) [$CELLS_BROKER] (default "nats")
      --broker_address string             Broker port [$CELLS_BROKER_ADDRESS] (default ":4222")
      --config string                     Config [$CELLS_CONFIG] (default "local")
      --enable_metrics                    Instrument code to expose internal metrics [$CELLS_ENABLE_METRICS]
      --enable_pprof                      Enable pprof remote debugging [$CELLS_ENABLE_PPROF]
      --fork                              Used internally by application when forking processes [$CELLS_IS_FORK]
      --grpc_cert string                  Certificates used for communication via grpc [$CELLS_GRPC_CERT]
      --grpc_external string              External port exposed for gRPC (may be fixed if no SSL is configured or a reverse proxy is used) [$CELLS_GRPC_EXTERNAL]
      --grpc_key string                   Certificates used for communication via grpc [$CELLS_GRPC_KEY]
      --log string                        Sets the log level mode [$CELLS_LOGS_LEVEL] (default "info")
      --registry string                   Registry used to manage services (currently nats only) [$CELLS_REGISTRY] (default "nats")
      --registry_address string           Registry connection address [$CELLS_REGISTRY_ADDRESS] (default ":4222")
      --registry_cluster_address string   Registry cluster address [$CELLS_REGISTRY_CLUSTER_ADDRESS]
      --registry_cluster_routes string    Registry cluster routes [$CELLS_REGISTRY_CLUSTER_ROUTES]
      --transport string                  Transport protocol for RPC [$CELLS_TRANSPORT] (default "grpc")
      --transport_address string          Transport protocol port [$CELLS_TRANSPORT_ADDRESS] (default ":4222")
```

### SEE ALSO

* [./cells-enterprise files](./cells-enterprise-files)	 - Directly manage files and metadata on the nodes

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.0-rc1 on 3-Dec-2020