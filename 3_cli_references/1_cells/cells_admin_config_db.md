Manage Database configuration

### Synopsis


DESCRIPTION

  Manage database configuration.
  Each service can be configured to point to its own database. This command provides ways to manage databases.


```
./cells admin config db [flags]
```

### Options

```
  -h, --help   help for db
```

### Options inherited from parent commands

```
      --advertise_address string     Default advertise address (default "127.0.0.1")
      --broker string                Pub/sub service for events between services (default "grpc://:8030")
      --config string                Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
      --discovery string             Registry and pub/sub (default "grpc://:8030")
      --grpc_client_timeout string   Default timeout for long-running GRPC calls, expressed as a golang duration (default "60m")
      --registry string              Registry used to contact services (default "grpc://:8030")
```

### SEE ALSO

* [./cells admin config](./cells-admin-config)	 - Configuration manager
* [./cells admin config db add](./cells-admin-config-db-add)	 - Add a database connection to the configuration
* [./cells admin config db list](./cells-admin-config-db-list)	 - List all database connections
* [./cells admin config db move](./cells-admin-config-db-move)	 - Move service data from one database to another
* [./cells admin config db set](./cells-admin-config-db-set)	 - Assign a database connection to a service

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
