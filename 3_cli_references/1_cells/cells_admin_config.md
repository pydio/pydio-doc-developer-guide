Configuration manager

### Synopsis


DESCRIPTION

  Set of commands providing programmatic access to stored configuration.



```
./cells admin config [flags]
```

### Options

```
  -h, --help   help for config
```

### Options inherited from parent commands

```
      --advertise_address string   Default advertise address (default "127.0.0.1")
      --broker string              Pub/sub service for events between services (default "grpc://:8030")
      --config string              Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
      --discovery string           Registry and pub/sub (default "grpc://:8030")
      --registry string            Registry used to contact services (default "grpc://:8030")
```

### SEE ALSO

* [./cells admin](./cells-admin)	 - Direct Read/Write access to Cells data
* [./cells admin config check](./cells-admin-config-check)	 - Check if a valid config is found
* [./cells admin config copy](./cells-admin-config-copy)	 - Copy configs between two stores
* [./cells admin config db](./cells-admin-config-db)	 - Manage Database configuration
* [./cells admin config delete](./cells-admin-config-delete)	 - Delete a configuration item
* [./cells admin config history](./cells-admin-config-history)	 - Show the history of all configuration changes
* [./cells admin config list](./cells-admin-config-list)	 - List all configurations
* [./cells admin config set](./cells-admin-config-set)	 - Store a configuration

###### Auto generated by Pydio Cells Home Edition v4.0.1 on 18-Oct-2022