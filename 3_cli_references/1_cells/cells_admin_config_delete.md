## ./cells admin config delete

Delete a configuration item

### Synopsis


DESCRIPTION

  Delete a configuration item. It will be removed both from the pydio.json file and from the database.

SYNTAX

  Configuration Item is represented by two parameters that you must pass as arguments:
  - serviceName: name of the corresponding service
  - configName: name of the parameter you want to delete

EXAMPLE

  Delete the port entry for the micro.web service (rest api)
  $ ./cells config delete micro.web port



```
./cells admin config delete [flags]
```

### Options

```
  -h, --help   help for delete
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

* [./cells admin config](./cells-admin-config)	 - Configuration manager

###### Auto generated by Pydio Cells Home Edition v2.2.9 on 1-Jul-2021
