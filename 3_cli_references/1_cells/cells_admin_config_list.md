List all configurations

### Synopsis


DESCRIPTION

  Display all configuration items registered by the application.
  Configuration items are listed as truple [serviceName, configName, configValue]. The configuration value is json encoded.



```
./cells admin config list [flags]
```

### Options

```
  -h, --help   help for list
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

* [./cells admin config](./cells-admin-config)	 - Configuration manager

###### Auto generated by Pydio Cells Home Edition v4.0.1 on 18-Oct-2022