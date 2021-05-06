## ./cells admin config

Configuration manager

### Synopsis


DESCRIPTION

  Set of commands providing programmatic access to stored configuration



```
./cells admin config [flags]
```

### Options

```
  -h, --help   help for config
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Nats broker port (default ":4222")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells admin](./cells-admin)	 - Direct Read/Write access to Cells data
* [./cells admin config delete](./cells-admin-config-delete)	 - Delete a configuration item
* [./cells admin config history](./cells-admin-config-history)	 - Show the history of all configuration changes
* [./cells admin config list](./cells-admin-config-list)	 - List all configurations
* [./cells admin config set](./cells-admin-config-set)	 - Store a configuration

###### Auto generated by Pydio Cells Home Edition v2.2.7 on 6-May-2021