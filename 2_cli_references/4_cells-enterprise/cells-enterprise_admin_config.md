## ./cells-enterprise admin config

Configuration manager

### Synopsis


DESCRIPTION

  Set of commands providing programmatic access to stored configuration



```
./cells-enterprise admin config [flags]
```

### Options

```
  -h, --help   help for config
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Broker port (default ":4222")
      --registry string                   Registry used to manage services (currently nats only) (default "nats")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells-enterprise admin](./cells-enterprise-admin)	 - Direct Read/Write access to Cells data
* [./cells-enterprise admin config delete](./cells-enterprise-admin-config-delete)	 - Delete a configuration item
* [./cells-enterprise admin config list](./cells-enterprise-admin-config-list)	 - List all configurations
* [./cells-enterprise admin config set](./cells-enterprise-admin-config-set)	 - Store a configuration

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.0-rc4 on 25-Jan-2021